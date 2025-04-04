from vedo import *
import os
from ipyvtklink.viewer import ViewInteractiveWidget
import pykitti
import numpy as np
import tensorflow as tf
from tensorflow.math import sin, cos, tan
import tensorflow_probability as tfp

#limit GPU memory ------------------------------------------------
gpus = tf.config.experimental.list_physical_devices('GPU')
print(gpus)
if gpus:
  try:
    memlim = 4*1024
    tf.config.experimental.set_virtual_device_configuration(gpus[0], [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=memlim)])
  except RuntimeError as e:
    print(e)
#-----------------------------------------------------------------

from ICET_spherical import ICET
from metpy.calc import lat_lon_grid_deltas
import trimesh

# # # init KITTI dataset-----------------------------------------
# # basedir = 'C:/kitti/'
# basedir = '/media/derm/06EF-127D1/KITTI'
# date = '2011_09_26'
# # drive = '0005'
# # num_frames = 150
# # drive = '0095'
# # num_frames = 260
# # drive = '0027'
# # num_frames = 185
# drive = '0028'
# num_frames = 100
# # drive = '0095'
# # num_frames = 250
# # drive = '0070'
# # num_frames = 250
# # drive = '0071'
# # num_frames = 150
# dataset = pykitti.raw(basedir, date, drive)
# # --------------------------------------------------------------------------

#init KC -----------------------------------------------------
fpl = np.loadtxt("/home/derm/KITTICARLA/dataset/Town07/generated/full_poses_lidar.txt") #full poses lidar
pl = "/home/derm/KITTICARLA/dataset/Town07/generated/poses_lidar.ply"
datposes = trimesh.load(pl)
true_traj = datposes.vertices

num_frames = 5000
noise_scale = 0.02

#create rotation and translation vectors
R = np.array([[fpl[:,0], fpl[:,1], fpl[:,2]],
              [fpl[:,4], fpl[:,5], fpl[:,6]],
              [fpl[:,8], fpl[:,9], fpl[:,10]]]).T

T = np.array([fpl[:,3], fpl[:,7], fpl[:,11]]).T
vel = np.diff(T.T)
# --------------------------------------------------------------------------

ICET_estimates = np.zeros([num_frames, 6])
OXTS_baseline = np.zeros([num_frames, 6])
ICET_pred_stds = np.zeros([num_frames, 6])
before_correction = np.zeros([num_frames, 6])
initial_guess = tf.constant([0.0, 0., 0., 0., 0., 0.])

for i in range(num_frames):
# for i in range(0,num_frames,3): #skip3

	print("\n ~~~~~~~~~~~~~~~~~~ Epoch ",  i," ~~~~~~~~~~~~~~~~~~~~~~~~~ \n")

	# #-------------------------------------------------------------------------------------------------
	# # # normal KITTI data~~~~~~
	# velo1 = dataset.get_velo(i) # Each scan is a Nx4 array of [x,y,z,reflectance]
	# c1 = velo1[:,:3]
	# velo2 = dataset.get_velo(i+1) # Each scan is a Nx4 array of [x,y,z,reflectance]
	# c2 = velo2[:,:3]
	# # #~~~~~~~~~~~~~~~~~~~~~~~~

	# # # Raw KITTI data ~~~~~~~~~~
	# # fn1 = "C:/kitti/2011_09_26/2011_09_26_drive_0005_raw/velodyne_points/data/%010d.txt" %(i)
	# # fn2 = "C:/kitti/2011_09_26/2011_09_26_drive_0005_raw/velodyne_points/data/%010d.txt" %(i+1)
	# # c1 = np.loadtxt(fn1)[:,:3]
	# # c2 = np.loadtxt(fn2)[:,:3]
	# # #~~~~~~~~~~~~~~~~~~~~~~~~

	# c1 = c1[c1[:,2] > -1.5] #ignore ground plane
	# c2 = c2[c2[:,2] > -1.5] #ignore ground plane

	# # run once to get rough estimate and remove outlier points
	# it = ICET(cloud1 = c1, cloud2 = c2, fid = 70, niter = 9, draw = False, group = 2, 
	# 	RM = True, DNN_filter = False, x0 = initial_guess)
	# ICET_pred_stds[i] = it.pred_stds 

	# # run again to re-converge with outliers removed
	# # it = ICET(cloud1 = it.cloud1_static, cloud2 = c2, fid = 70, niter = 20, draw = False, group = 2, RM = False)
	# # -------------------------------------------------------------------------------------------------

	# KITTI-CARLA ---------------------------------------------------------------------
	# skip = int(3*np.random.randn())
	skip = 1
	start_idx = 0
	print(skip)

	s1_fn = '/home/derm/KITTICARLA/dataset/Town07/generated/frames/frame_%04d.ply' %(i + start_idx)
	s2_fn = '/home/derm/KITTICARLA/dataset/Town07/generated/frames/frame_%04d.ply' %(i + start_idx + skip)

	dat1 = trimesh.load(s1_fn)
	dat2 = trimesh.load(s2_fn)

	c1 = dat1.vertices
	# c1 = c1.dot(R[(i)*100])
	c1 += noise_scale*np.random.randn(np.shape(c1)[0],3)

	c2 = dat2.vertices
	# c2 = c2.dot(R[(i+skip)*100])
	# c2 += true_traj[(i+skip)*100] - true_traj[(i)*100] #works better(?)
	c2 += noise_scale*np.random.randn(np.shape(c2)[0],3)

	# c1 = c1[c1[:,2] > -1.5]
	# c2 = c2[c2[:,2] > -1.5]

	# initial_guess = tf.constant([0., 0., 0., 0., 0., 0.])
	it = ICET(cloud1 = c1, cloud2 = c2, fid = 80, niter = 15, draw = False, group = 2, 
		RM = True, DNN_filter = False, x0 = initial_guess)

	OXTS_ground_truth = true_traj[(i+skip+start_idx)*100] - true_traj[(i+start_idx)*100]
	# OXTS_baseline[i] = OXTS_ground_truth
	ICET_pred_stds[i] = it.pred_stds 
	# --------------------------------------------------------------------------


	# c1 = c1[c1[:,2] > -1.5] #ignore ground plane
	# c2 = c2[c2[:,2] > -1.5] #ignore ground plane
	# c1 = c1[c1[:,2] > -2.] #ignore reflections
	# c2 = c2[c2[:,2] > -2.] #ignore reflections

	# it = ICET(cloud1 = c1, cloud2 = c2, fid = 50, niter = 20, draw = False, group = 2) #, x0 = intial_guess)

	ICET_estimates[i] = it.X #* (dataset.timestamps[i+1] - dataset.timestamps[i]).microseconds/(10e5)/0.1
	before_correction[i] = it.before_correction

	initial_guess = it.X

	# # -------------------------------
	# poses0 = dataset.oxts[i] 
	# poses1 = dataset.oxts[i+1]
	# dt = 0.1
	# ## dt = (dataset.timestamps[i+1] - dataset.timestamps[i]).microseconds/(10e5)
	# OXTS_baseline[i] = np.array([[poses1.packet.vf*dt, poses1.packet.vl*dt, poses1.packet.vu*dt, -poses1.packet.wf*dt, -poses1.packet.wl*dt, -poses1.packet.wu*dt]]) #test

	# # initial_guess = OXTS_baseline[i]
	# # initial_guess[0]  += 0.2*np.random.randn()
	# # initial_guess = tf.cast(initial_guess, tf.float32)
	# # -------------------------------


	# #-------------------------------
	# #get transformations in frame of OXTS GPS/INS sensor
	# poses0 = dataset.oxts[i] #<- ID of 1st scan
	# poses1 = dataset.oxts[i+1] #<- ID of 2nd scan
	# lat0 = poses0.packet.lat
	# lon0 = poses0.packet.lon
	# alt0 = poses0.packet.alt
	# lat1 = poses1.packet.lat
	# lon1 = poses1.packet.lon
	# alt1 = poses1.packet.alt

	# #these are "pint" objects which hold on to units
	# dx_oxts, dy_oxts = lat_lon_grid_deltas(np.array([lon0,lon1]), np.array([lat0, lat1]))
	# # print(dx_oxts, dy_oxts) 
	# dx_oxts = dx_oxts[0,0].magnitude
	# dy_oxts = dy_oxts[0,0].magnitude
	# dz_oxts = (alt0-alt1)
	# droll_oxts = (poses0.packet.roll - poses1.packet.roll)
	# dpitch_oxts = (poses0.packet.pitch - poses1.packet.pitch)
	# dyaw_oxts = (poses0.packet.yaw - poses1.packet.yaw)

	# #get rotation matrix to bring things into frame of lidar unit
	# # rot = poses0.T_w_imu[:3,:3] #ignore reflectance componenet
	# rot = poses1.T_w_imu[:3,:3] #trying this

	# dxyz_oxts = np.array([[dx_oxts, dy_oxts, dz_oxts]])
	# dxyz_lidar = dxyz_oxts.dot(rot)

	# dt = (dataset.timestamps[i+1] - dataset.timestamps[i]).microseconds/(10e5)

	# # using lat/ lon deltas
	# OXTS_baseline[i] = np.array([[dxyz_lidar[0,0], dxyz_lidar[0,1], dxyz_lidar[0,2], droll_oxts, dpitch_oxts, dyaw_oxts]])/dt*0.1
	# #-------------------------------

	# print("\n solution from ICET \n", ICET_estimates[i])
	print("\n solution from GPS/INS \n", OXTS_baseline[i])

	# #periodically save so we don't lose everything...
	if i % 10 == 0:
		print("saving...")
		np.savetxt("3d_paper/KC_results/town07_ICET_estimates.txt", ICET_estimates)
		np.savetxt("3d_paper/KC_results/town07_ICET_pred_stds.txt", ICET_pred_stds)
		# np.savetxt("3d_paper/KC_results/town07_ground_truth.txt", OXTS_baseline)

# np.savetxt("spherical_paper/KC_results/town03_noDNN.txt", before_correction)
np.savetxt("3d_paper/KC_results/town07_ICET_estimates.txt", ICET_estimates)
np.savetxt("3d_paper/KC_results/town07_ICET_pred_stds.txt", ICET_pred_stds)
# np.savetxt("3d_paper/KC_results/town03_ground_truth.txt", OXTS_baseline)