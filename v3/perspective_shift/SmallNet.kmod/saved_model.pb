��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
R
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �@
�
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_41/kernel/v
�
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:@*
dtype0
�
"Adam/batch_normalization_62/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_62/beta/v
�
6Adam/batch_normalization_62/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_62/beta/v*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_62/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_62/gamma/v
�
7Adam/batch_normalization_62/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_62/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_40/kernel/v
�
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes
:	�@*
dtype0
�
"Adam/batch_normalization_61/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_61/beta/v
�
6Adam/batch_normalization_61/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/v*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_61/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_61/gamma/v
�
7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_39/bias/v
z
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_39/kernel/v
�
*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Adam/batch_normalization_60/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_60/beta/v
�
6Adam/batch_normalization_60/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_60/beta/v*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_60/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_60/gamma/v
�
7Adam/batch_normalization_60/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_60/gamma/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_38/bias/v
z
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_38/kernel/v
�
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v* 
_output_shapes
:
��*
dtype0
�
"Adam/batch_normalization_59/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/v
�
6Adam/batch_normalization_59/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/v*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_59/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/v
�
7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_30/bias/v
{
)Adam/conv2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_30/kernel/v
�
+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*&
_output_shapes
:@@*
dtype0
�
"Adam/batch_normalization_58/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/v
�
6Adam/batch_normalization_58/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/v*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_58/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/v
�
7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/v
�
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
:@@*
dtype0
�
"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_57/beta/v
�
6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_57/gamma/v
�
7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_28/kernel/v
�
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_41/kernel/m
�
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:@*
dtype0
�
"Adam/batch_normalization_62/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_62/beta/m
�
6Adam/batch_normalization_62/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_62/beta/m*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_62/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_62/gamma/m
�
7Adam/batch_normalization_62/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_62/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_40/kernel/m
�
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes
:	�@*
dtype0
�
"Adam/batch_normalization_61/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_61/beta/m
�
6Adam/batch_normalization_61/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/m*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_61/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_61/gamma/m
�
7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_39/bias/m
z
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_39/kernel/m
�
*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Adam/batch_normalization_60/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_60/beta/m
�
6Adam/batch_normalization_60/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_60/beta/m*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_60/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_60/gamma/m
�
7Adam/batch_normalization_60/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_60/gamma/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_38/bias/m
z
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_38/kernel/m
�
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m* 
_output_shapes
:
��*
dtype0
�
"Adam/batch_normalization_59/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/m
�
6Adam/batch_normalization_59/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/m*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_59/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/m
�
7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_30/bias/m
{
)Adam/conv2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_30/kernel/m
�
+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*&
_output_shapes
:@@*
dtype0
�
"Adam/batch_normalization_58/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/m
�
6Adam/batch_normalization_58/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/m*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_58/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/m
�
7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/m
�
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
:@@*
dtype0
�
"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_57/beta/m
�
6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_57/gamma/m
�
7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_28/kernel/m
�
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:@*
dtype0
�
&batch_normalization_62/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_62/moving_variance
�
:batch_normalization_62/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_62/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_62/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_62/moving_mean
�
6batch_normalization_62/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_62/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_62/beta
�
/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_62/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_62/gamma
�
0batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_62/gamma*
_output_shapes
:@*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:@*
dtype0
{
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_40/kernel
t
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes
:	�@*
dtype0
�
&batch_normalization_61/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_61/moving_variance
�
:batch_normalization_61/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_61/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_61/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_61/moving_mean
�
6batch_normalization_61/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_61/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_61/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_61/beta
�
/batch_normalization_61/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_61/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_61/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_61/gamma
�
0batch_normalization_61/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_61/gamma*
_output_shapes	
:�*
dtype0
s
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_39/bias
l
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes	
:�*
dtype0
|
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_39/kernel
u
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_60/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_60/moving_variance
�
:batch_normalization_60/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_60/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_60/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_60/moving_mean
�
6batch_normalization_60/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_60/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_60/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_60/beta
�
/batch_normalization_60/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_60/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_60/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_60/gamma
�
0batch_normalization_60/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_60/gamma*
_output_shapes	
:�*
dtype0
s
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_38/bias
l
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes	
:�*
dtype0
|
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_38/kernel
u
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_59/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_59/moving_variance
�
:batch_normalization_59/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_59/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_59/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_59/moving_mean
�
6batch_normalization_59/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_59/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_59/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_59/beta
�
/batch_normalization_59/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_59/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_59/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_59/gamma
�
0batch_normalization_59/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_59/gamma*
_output_shapes
:@*
dtype0
t
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_30/bias
m
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes
:@*
dtype0
�
conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_30/kernel
}
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*&
_output_shapes
:@@*
dtype0
�
&batch_normalization_58/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_58/moving_variance
�
:batch_normalization_58/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_58/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_58/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_58/moving_mean
�
6batch_normalization_58/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_58/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_58/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_58/beta
�
/batch_normalization_58/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_58/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_58/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_58/gamma
�
0batch_normalization_58/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_58/gamma*
_output_shapes
:@*
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:@*
dtype0
�
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
:@@*
dtype0
�
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_57/moving_variance
�
:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_57/moving_mean
�
6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_57/beta
�
/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_57/gamma
�
0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
:@*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0
�
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:@*
dtype0
�
serving_default_input_10Placeholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10conv2d_28/kernelconv2d_28/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_30/kernelconv2d_30/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_38/kerneldense_38/bias&batch_normalization_60/moving_variancebatch_normalization_60/gamma"batch_normalization_60/moving_meanbatch_normalization_60/betadense_39/kerneldense_39/bias&batch_normalization_61/moving_variancebatch_normalization_61/gamma"batch_normalization_61/moving_meanbatch_normalization_61/betadense_40/kerneldense_40/bias&batch_normalization_62/moving_variancebatch_normalization_62/gamma"batch_normalization_62/moving_meanbatch_normalization_62/betadense_41/kerneldense_41/biasConst*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *.
f)R'
%__inference_signature_wrapper_1489621

NoOpNoOp
�
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 

	keras_api* 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias*
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
saxis
	tgamma
ubeta
vmoving_mean
wmoving_variance*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*

�	keras_api* 
�
#0
$1
-2
.3
/4
05
76
87
A8
B9
C10
D11
K12
L13
U14
V15
W16
X17
k18
l19
t20
u21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37*
�
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
k12
l13
t14
u15
~16
17
�18
�19
�20
�21
�22
�23
�24
�25*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

�
capture_38* 
�
�beta_1
�beta_2

�decay
�learning_rate
	�iter#m�$m�-m�.m�7m�8m�Am�Bm�Km�Lm�Um�Vm�km�lm�tm�um�~m�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�#v�$v�-v�.v�7v�8v�Av�Bv�Kv�Lv�Uv�Vv�kv�lv�tv�uv�~v�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*

�serving_default* 
* 

#0
$1*

#0
$1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
-0
.1
/2
03*

-0
.1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_29/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_29/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
A0
B1
C2
D3*

A0
B1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_58/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_58/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_58/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_58/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_30/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_30/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
U0
V1
W2
X3*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_59/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_59/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_59/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_59/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
t0
u1
v2
w3*

t0
u1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_60/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_60/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_60/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_60/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_39/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_39/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_61/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_61/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_61/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_61/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_40/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_40/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_62/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_62/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_62/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_62/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_41/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_41/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
^
/0
01
C2
D3
W4
X5
v6
w7
�8
�9
�10
�11*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

�0*
* 
* 

�
capture_38* 

�
capture_38* 

�
capture_38* 

�
capture_38* 

�
capture_38* 

�
capture_38* 

�
capture_38* 

�
capture_38* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*

�
capture_38* 
* 
* 
* 
* 
* 
* 
* 

/0
01*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

W0
X1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

v0
w1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_29/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_29/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_58/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_30/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_30/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_59/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_60/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_60/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_39/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_61/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_40/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_40/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_62/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_62/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_41/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_41/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_29/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_29/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_58/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_30/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_30/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_59/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_60/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_60/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_39/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_61/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_40/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_40/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_62/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_62/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_41/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_41/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp0batch_normalization_58/gamma/Read/ReadVariableOp/batch_normalization_58/beta/Read/ReadVariableOp6batch_normalization_58/moving_mean/Read/ReadVariableOp:batch_normalization_58/moving_variance/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp0batch_normalization_59/gamma/Read/ReadVariableOp/batch_normalization_59/beta/Read/ReadVariableOp6batch_normalization_59/moving_mean/Read/ReadVariableOp:batch_normalization_59/moving_variance/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp0batch_normalization_60/gamma/Read/ReadVariableOp/batch_normalization_60/beta/Read/ReadVariableOp6batch_normalization_60/moving_mean/Read/ReadVariableOp:batch_normalization_60/moving_variance/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOp0batch_normalization_61/gamma/Read/ReadVariableOp/batch_normalization_61/beta/Read/ReadVariableOp6batch_normalization_61/moving_mean/Read/ReadVariableOp:batch_normalization_61/moving_variance/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp0batch_normalization_62/gamma/Read/ReadVariableOp/batch_normalization_62/beta/Read/ReadVariableOp6batch_normalization_62/moving_mean/Read/ReadVariableOp:batch_normalization_62/moving_variance/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_58/beta/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp)Adam/conv2d_30/bias/m/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_59/beta/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp7Adam/batch_normalization_60/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_60/beta/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_61/beta/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp7Adam/batch_normalization_62/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_62/beta/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_58/beta/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp)Adam/conv2d_30/bias/v/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_59/beta/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp7Adam/batch_normalization_60/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_60/beta/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_61/beta/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp7Adam/batch_normalization_62/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_62/beta/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst_1*n
Ting
e2c	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *)
f$R"
 __inference__traced_save_1491031
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_28/kernelconv2d_28/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_30/kernelconv2d_30/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_38/kerneldense_38/biasbatch_normalization_60/gammabatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_variancedense_39/kerneldense_39/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_variancedense_40/kerneldense_40/biasbatch_normalization_62/gammabatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_variancedense_41/kerneldense_41/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcountAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/m#Adam/batch_normalization_58/gamma/m"Adam/batch_normalization_58/beta/mAdam/conv2d_30/kernel/mAdam/conv2d_30/bias/m#Adam/batch_normalization_59/gamma/m"Adam/batch_normalization_59/beta/mAdam/dense_38/kernel/mAdam/dense_38/bias/m#Adam/batch_normalization_60/gamma/m"Adam/batch_normalization_60/beta/mAdam/dense_39/kernel/mAdam/dense_39/bias/m#Adam/batch_normalization_61/gamma/m"Adam/batch_normalization_61/beta/mAdam/dense_40/kernel/mAdam/dense_40/bias/m#Adam/batch_normalization_62/gamma/m"Adam/batch_normalization_62/beta/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/v#Adam/batch_normalization_58/gamma/v"Adam/batch_normalization_58/beta/vAdam/conv2d_30/kernel/vAdam/conv2d_30/bias/v#Adam/batch_normalization_59/gamma/v"Adam/batch_normalization_59/beta/vAdam/dense_38/kernel/vAdam/dense_38/bias/v#Adam/batch_normalization_60/gamma/v"Adam/batch_normalization_60/beta/vAdam/dense_39/kernel/vAdam/dense_39/bias/v#Adam/batch_normalization_61/gamma/v"Adam/batch_normalization_61/beta/vAdam/dense_40/kernel/vAdam/dense_40/bias/v#Adam/batch_normalization_62/gamma/v"Adam/batch_normalization_62/beta/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *,
f'R%
#__inference__traced_restore_1491332��
�	
�
8__inference_batch_normalization_59_layer_call_fn_1490339

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488364�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1490231

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_1489530
input_10+
conv2d_28_1489436:@
conv2d_28_1489438:@,
batch_normalization_57_1489441:@,
batch_normalization_57_1489443:@,
batch_normalization_57_1489445:@,
batch_normalization_57_1489447:@+
conv2d_29_1489450:@@
conv2d_29_1489452:@,
batch_normalization_58_1489455:@,
batch_normalization_58_1489457:@,
batch_normalization_58_1489459:@,
batch_normalization_58_1489461:@+
conv2d_30_1489464:@@
conv2d_30_1489466:@,
batch_normalization_59_1489469:@,
batch_normalization_59_1489471:@,
batch_normalization_59_1489473:@,
batch_normalization_59_1489475:@$
dense_38_1489480:
��
dense_38_1489482:	�-
batch_normalization_60_1489485:	�-
batch_normalization_60_1489487:	�-
batch_normalization_60_1489489:	�-
batch_normalization_60_1489491:	�$
dense_39_1489494:
��
dense_39_1489496:	�-
batch_normalization_61_1489499:	�-
batch_normalization_61_1489501:	�-
batch_normalization_61_1489503:	�-
batch_normalization_61_1489505:	�#
dense_40_1489508:	�@
dense_40_1489510:@,
batch_normalization_62_1489513:@,
batch_normalization_62_1489515:@,
batch_normalization_62_1489517:@,
batch_normalization_62_1489519:@"
dense_41_1489522:@
dense_41_1489524:
tf_math_multiply_9_mul_y
identity��.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall� dense_38/StatefulPartitionedCall� dense_39/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCallj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinput_10(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_9/ExpandDims:output:0conv2d_28_1489436conv2d_28_1489438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_57_1489441batch_normalization_57_1489443batch_normalization_57_1489445batch_normalization_57_1489447*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488236�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_29_1489450conv2d_29_1489452*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_58_1489455batch_normalization_58_1489457batch_normalization_58_1489459batch_normalization_58_1489461*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488300�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0conv2d_30_1489464conv2d_30_1489466*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0batch_normalization_59_1489469batch_normalization_59_1489471batch_normalization_59_1489473batch_normalization_59_1489475*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488364�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384�
flatten_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_38_1489480dense_38_1489482*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0batch_normalization_60_1489485batch_normalization_60_1489487batch_normalization_60_1489489batch_normalization_60_1489491*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488458�
 dense_39/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0dense_39_1489494dense_39_1489496*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0batch_normalization_61_1489499batch_normalization_61_1489501batch_normalization_61_1489503batch_normalization_61_1489505*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488540�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0dense_40_1489508dense_40_1489510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0batch_normalization_62_1489513batch_normalization_62_1489515batch_normalization_62_1489517batch_normalization_62_1489519*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488622�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0dense_41_1489522dense_41_1489524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818�
tf.math.multiply_9/MulMul)dense_41/StatefulPartitionedCall:output:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490275

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�	
%__inference_signature_wrapper_1489621
input_10!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:

unknown_37
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *+
f&R$
"__inference__wrapped_model_1488183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�	
)__inference_model_9_layer_call_fn_1488908
input_10!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:

unknown_37
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_1488827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488300

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�,
 __inference__traced_save_1491031
file_prefix/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop;
7savev2_batch_normalization_58_gamma_read_readvariableop:
6savev2_batch_normalization_58_beta_read_readvariableopA
=savev2_batch_normalization_58_moving_mean_read_readvariableopE
Asavev2_batch_normalization_58_moving_variance_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop;
7savev2_batch_normalization_59_gamma_read_readvariableop:
6savev2_batch_normalization_59_beta_read_readvariableopA
=savev2_batch_normalization_59_moving_mean_read_readvariableopE
Asavev2_batch_normalization_59_moving_variance_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop;
7savev2_batch_normalization_60_gamma_read_readvariableop:
6savev2_batch_normalization_60_beta_read_readvariableopA
=savev2_batch_normalization_60_moving_mean_read_readvariableopE
Asavev2_batch_normalization_60_moving_variance_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop;
7savev2_batch_normalization_61_gamma_read_readvariableop:
6savev2_batch_normalization_61_beta_read_readvariableopA
=savev2_batch_normalization_61_moving_mean_read_readvariableopE
Asavev2_batch_normalization_61_moving_variance_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop;
7savev2_batch_normalization_62_gamma_read_readvariableop:
6savev2_batch_normalization_62_beta_read_readvariableopA
=savev2_batch_normalization_62_moving_mean_read_readvariableopE
Asavev2_batch_normalization_62_moving_variance_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop4
0savev2_adam_conv2d_30_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_60_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_60_beta_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_62_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_62_beta_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop4
0savev2_adam_conv2d_30_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_60_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_60_beta_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_62_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_62_beta_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
savev2_const_1

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�5
value�5B�5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�
value�B�bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �+
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop7savev2_batch_normalization_58_gamma_read_readvariableop6savev2_batch_normalization_58_beta_read_readvariableop=savev2_batch_normalization_58_moving_mean_read_readvariableopAsavev2_batch_normalization_58_moving_variance_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop7savev2_batch_normalization_59_gamma_read_readvariableop6savev2_batch_normalization_59_beta_read_readvariableop=savev2_batch_normalization_59_moving_mean_read_readvariableopAsavev2_batch_normalization_59_moving_variance_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop7savev2_batch_normalization_60_gamma_read_readvariableop6savev2_batch_normalization_60_beta_read_readvariableop=savev2_batch_normalization_60_moving_mean_read_readvariableopAsavev2_batch_normalization_60_moving_variance_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop7savev2_batch_normalization_61_gamma_read_readvariableop6savev2_batch_normalization_61_beta_read_readvariableop=savev2_batch_normalization_61_moving_mean_read_readvariableopAsavev2_batch_normalization_61_moving_variance_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop7savev2_batch_normalization_62_gamma_read_readvariableop6savev2_batch_normalization_62_beta_read_readvariableop=savev2_batch_normalization_62_moving_mean_read_readvariableopAsavev2_batch_normalization_62_moving_variance_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop>savev2_adam_batch_normalization_58_gamma_m_read_readvariableop=savev2_adam_batch_normalization_58_beta_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop0savev2_adam_conv2d_30_bias_m_read_readvariableop>savev2_adam_batch_normalization_59_gamma_m_read_readvariableop=savev2_adam_batch_normalization_59_beta_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop>savev2_adam_batch_normalization_60_gamma_m_read_readvariableop=savev2_adam_batch_normalization_60_beta_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop>savev2_adam_batch_normalization_61_gamma_m_read_readvariableop=savev2_adam_batch_normalization_61_beta_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop>savev2_adam_batch_normalization_62_gamma_m_read_readvariableop=savev2_adam_batch_normalization_62_beta_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop>savev2_adam_batch_normalization_58_gamma_v_read_readvariableop=savev2_adam_batch_normalization_58_beta_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop0savev2_adam_conv2d_30_bias_v_read_readvariableop>savev2_adam_batch_normalization_59_gamma_v_read_readvariableop=savev2_adam_batch_normalization_59_beta_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop>savev2_adam_batch_normalization_60_gamma_v_read_readvariableop=savev2_adam_batch_normalization_60_beta_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableop>savev2_adam_batch_normalization_61_gamma_v_read_readvariableop=savev2_adam_batch_normalization_61_beta_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop>savev2_adam_batch_normalization_62_gamma_v_read_readvariableop=savev2_adam_batch_normalization_62_beta_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *p
dtypesf
d2b	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:
��:�:�:�:�:�:
��:�:�:�:�:�:	�@:@:@:@:@:@:@:: : : : : : : :@:@:@:@:@@:@:@:@:@@:@:@:@:
��:�:�:�:
��:�:�:�:	�@:@:@:@:@::@:@:@:@:@@:@:@:@:@@:@:@:@:
��:�:�:�:
��:�:�:�:	�@:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	�@:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@: #

_output_shapes
:@: $

_output_shapes
:@:$% 

_output_shapes

:@: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :,.(
&
_output_shapes
:@: /

_output_shapes
:@: 0

_output_shapes
:@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:&:"
 
_output_shapes
:
��:!;

_output_shapes	
:�:!<

_output_shapes	
:�:!=

_output_shapes	
:�:&>"
 
_output_shapes
:
��:!?

_output_shapes	
:�:!@

_output_shapes	
:�:!A

_output_shapes	
:�:%B!

_output_shapes
:	�@: C

_output_shapes
:@: D

_output_shapes
:@: E

_output_shapes
:@:$F 

_output_shapes

:@: G

_output_shapes
::,H(
&
_output_shapes
:@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@@: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:,P(
&
_output_shapes
:@@: Q

_output_shapes
:@: R

_output_shapes
:@: S

_output_shapes
:@:&T"
 
_output_shapes
:
��:!U

_output_shapes	
:�:!V

_output_shapes	
:�:!W

_output_shapes	
:�:&X"
 
_output_shapes
:
��:!Y

_output_shapes	
:�:!Z

_output_shapes	
:�:![

_output_shapes	
:�:%\!

_output_shapes
:	�@: ]

_output_shapes
:@: ^

_output_shapes
:@: _

_output_shapes
:@:$` 

_output_shapes

:@: a

_output_shapes
::b

_output_shapes
: 
�
�
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�

�
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_62_layer_call_fn_1490642

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488622o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488622

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_30_layer_call_fn_1490302

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�"
D__inference_model_9_layer_call_and_return_conditional_losses_1489937

inputsB
(conv2d_28_conv2d_readvariableop_resource:@7
)conv2d_28_biasadd_readvariableop_resource:@<
.batch_normalization_57_readvariableop_resource:@>
0batch_normalization_57_readvariableop_1_resource:@M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@@7
)conv2d_29_biasadd_readvariableop_resource:@<
.batch_normalization_58_readvariableop_resource:@>
0batch_normalization_58_readvariableop_1_resource:@M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_30_conv2d_readvariableop_resource:@@7
)conv2d_30_biasadd_readvariableop_resource:@<
.batch_normalization_59_readvariableop_resource:@>
0batch_normalization_59_readvariableop_1_resource:@M
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_38_matmul_readvariableop_resource:
��7
(dense_38_biasadd_readvariableop_resource:	�G
8batch_normalization_60_batchnorm_readvariableop_resource:	�K
<batch_normalization_60_batchnorm_mul_readvariableop_resource:	�I
:batch_normalization_60_batchnorm_readvariableop_1_resource:	�I
:batch_normalization_60_batchnorm_readvariableop_2_resource:	�;
'dense_39_matmul_readvariableop_resource:
��7
(dense_39_biasadd_readvariableop_resource:	�G
8batch_normalization_61_batchnorm_readvariableop_resource:	�K
<batch_normalization_61_batchnorm_mul_readvariableop_resource:	�I
:batch_normalization_61_batchnorm_readvariableop_1_resource:	�I
:batch_normalization_61_batchnorm_readvariableop_2_resource:	�:
'dense_40_matmul_readvariableop_resource:	�@6
(dense_40_biasadd_readvariableop_resource:@F
8batch_normalization_62_batchnorm_readvariableop_resource:@J
<batch_normalization_62_batchnorm_mul_readvariableop_resource:@H
:batch_normalization_62_batchnorm_readvariableop_1_resource:@H
:batch_normalization_62_batchnorm_readvariableop_2_resource:@9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:
tf_math_multiply_9_mul_y
identity��6batch_normalization_57/FusedBatchNormV3/ReadVariableOp�8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_57/ReadVariableOp�'batch_normalization_57/ReadVariableOp_1�6batch_normalization_58/FusedBatchNormV3/ReadVariableOp�8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_58/ReadVariableOp�'batch_normalization_58/ReadVariableOp_1�6batch_normalization_59/FusedBatchNormV3/ReadVariableOp�8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_59/ReadVariableOp�'batch_normalization_59/ReadVariableOp_1�/batch_normalization_60/batchnorm/ReadVariableOp�1batch_normalization_60/batchnorm/ReadVariableOp_1�1batch_normalization_60/batchnorm/ReadVariableOp_2�3batch_normalization_60/batchnorm/mul/ReadVariableOp�/batch_normalization_61/batchnorm/ReadVariableOp�1batch_normalization_61/batchnorm/ReadVariableOp_1�1batch_normalization_61/batchnorm/ReadVariableOp_2�3batch_normalization_61/batchnorm/mul/ReadVariableOp�/batch_normalization_62/batchnorm/ReadVariableOp�1batch_normalization_62/batchnorm/ReadVariableOp_1�1batch_normalization_62/batchnorm/ReadVariableOp_2�3batch_normalization_62/batchnorm/mul/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp�dense_38/BiasAdd/ReadVariableOp�dense_38/MatMul/ReadVariableOp�dense_39/BiasAdd/ReadVariableOp�dense_39/MatMul/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�dense_40/MatMul/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�dense_41/MatMul/ReadVariableOpj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinputs(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_28/Conv2DConv2D$tf.expand_dims_9/ExpandDims:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_29/Conv2DConv2D+batch_normalization_57/FusedBatchNormV3:y:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_29/Relu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_30/Conv2DConv2D+batch_normalization_58/FusedBatchNormV3:y:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_30/Relu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_59/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
ksize
d*
paddingVALID*
strides
d`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_9/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_38/MatMulMatMulflatten_9/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/batch_normalization_60/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_60_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0k
&batch_normalization_60/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_60/batchnorm/addAddV27batch_normalization_60/batchnorm/ReadVariableOp:value:0/batch_normalization_60/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_60/batchnorm/RsqrtRsqrt(batch_normalization_60/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_60/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_60_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_60/batchnorm/mulMul*batch_normalization_60/batchnorm/Rsqrt:y:0;batch_normalization_60/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_60/batchnorm/mul_1Muldense_38/Relu:activations:0(batch_normalization_60/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
1batch_normalization_60/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_60_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_60/batchnorm/mul_2Mul9batch_normalization_60/batchnorm/ReadVariableOp_1:value:0(batch_normalization_60/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
1batch_normalization_60/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_60_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_60/batchnorm/subSub9batch_normalization_60/batchnorm/ReadVariableOp_2:value:0*batch_normalization_60/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_60/batchnorm/add_1AddV2*batch_normalization_60/batchnorm/mul_1:z:0(batch_normalization_60/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_39/MatMulMatMul*batch_normalization_60/batchnorm/add_1:z:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/batch_normalization_61/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_61_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0k
&batch_normalization_61/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_61/batchnorm/addAddV27batch_normalization_61/batchnorm/ReadVariableOp:value:0/batch_normalization_61/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_61/batchnorm/RsqrtRsqrt(batch_normalization_61/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_61/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_61_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_61/batchnorm/mulMul*batch_normalization_61/batchnorm/Rsqrt:y:0;batch_normalization_61/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_61/batchnorm/mul_1Muldense_39/Relu:activations:0(batch_normalization_61/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
1batch_normalization_61/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_61_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_61/batchnorm/mul_2Mul9batch_normalization_61/batchnorm/ReadVariableOp_1:value:0(batch_normalization_61/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
1batch_normalization_61/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_61_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_61/batchnorm/subSub9batch_normalization_61/batchnorm/ReadVariableOp_2:value:0*batch_normalization_61/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_61/batchnorm/add_1AddV2*batch_normalization_61/batchnorm/mul_1:z:0(batch_normalization_61/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_40/MatMulMatMul*batch_normalization_61/batchnorm/add_1:z:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/batch_normalization_62/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_62_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0k
&batch_normalization_62/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_62/batchnorm/addAddV27batch_normalization_62/batchnorm/ReadVariableOp:value:0/batch_normalization_62/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_62/batchnorm/RsqrtRsqrt(batch_normalization_62/batchnorm/add:z:0*
T0*
_output_shapes
:@�
3batch_normalization_62/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_62_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
$batch_normalization_62/batchnorm/mulMul*batch_normalization_62/batchnorm/Rsqrt:y:0;batch_normalization_62/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
&batch_normalization_62/batchnorm/mul_1Muldense_40/Relu:activations:0(batch_normalization_62/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
1batch_normalization_62/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_62_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_62/batchnorm/mul_2Mul9batch_normalization_62/batchnorm/ReadVariableOp_1:value:0(batch_normalization_62/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
1batch_normalization_62/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_62_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0�
$batch_normalization_62/batchnorm/subSub9batch_normalization_62/batchnorm/ReadVariableOp_2:value:0*batch_normalization_62/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
&batch_normalization_62/batchnorm/add_1AddV2*batch_normalization_62/batchnorm/mul_1:z:0(batch_normalization_62/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_41/MatMulMatMul*batch_normalization_62/batchnorm/add_1:z:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense_41/TanhTanhdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:���������|
tf.math.multiply_9/MulMuldense_41/Tanh:y:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_10^batch_normalization_60/batchnorm/ReadVariableOp2^batch_normalization_60/batchnorm/ReadVariableOp_12^batch_normalization_60/batchnorm/ReadVariableOp_24^batch_normalization_60/batchnorm/mul/ReadVariableOp0^batch_normalization_61/batchnorm/ReadVariableOp2^batch_normalization_61/batchnorm/ReadVariableOp_12^batch_normalization_61/batchnorm/ReadVariableOp_24^batch_normalization_61/batchnorm/mul/ReadVariableOp0^batch_normalization_62/batchnorm/ReadVariableOp2^batch_normalization_62/batchnorm/ReadVariableOp_12^batch_normalization_62/batchnorm/ReadVariableOp_24^batch_normalization_62/batchnorm/mul/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12b
/batch_normalization_60/batchnorm/ReadVariableOp/batch_normalization_60/batchnorm/ReadVariableOp2f
1batch_normalization_60/batchnorm/ReadVariableOp_11batch_normalization_60/batchnorm/ReadVariableOp_12f
1batch_normalization_60/batchnorm/ReadVariableOp_21batch_normalization_60/batchnorm/ReadVariableOp_22j
3batch_normalization_60/batchnorm/mul/ReadVariableOp3batch_normalization_60/batchnorm/mul/ReadVariableOp2b
/batch_normalization_61/batchnorm/ReadVariableOp/batch_normalization_61/batchnorm/ReadVariableOp2f
1batch_normalization_61/batchnorm/ReadVariableOp_11batch_normalization_61/batchnorm/ReadVariableOp_12f
1batch_normalization_61/batchnorm/ReadVariableOp_21batch_normalization_61/batchnorm/ReadVariableOp_22j
3batch_normalization_61/batchnorm/mul/ReadVariableOp3batch_normalization_61/batchnorm/mul/ReadVariableOp2b
/batch_normalization_62/batchnorm/ReadVariableOp/batch_normalization_62/batchnorm/ReadVariableOp2f
1batch_normalization_62/batchnorm/ReadVariableOp_11batch_normalization_62/batchnorm/ReadVariableOp_12f
1batch_normalization_62/batchnorm/ReadVariableOp_21batch_normalization_62/batchnorm/ReadVariableOp_22j
3batch_normalization_62/batchnorm/mul/ReadVariableOp3batch_normalization_62/batchnorm/mul/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
�
�
+__inference_conv2d_29_layer_call_fn_1490220

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�@
#__inference__traced_restore_1491332
file_prefix;
!assignvariableop_conv2d_28_kernel:@/
!assignvariableop_1_conv2d_28_bias:@=
/assignvariableop_2_batch_normalization_57_gamma:@<
.assignvariableop_3_batch_normalization_57_beta:@C
5assignvariableop_4_batch_normalization_57_moving_mean:@G
9assignvariableop_5_batch_normalization_57_moving_variance:@=
#assignvariableop_6_conv2d_29_kernel:@@/
!assignvariableop_7_conv2d_29_bias:@=
/assignvariableop_8_batch_normalization_58_gamma:@<
.assignvariableop_9_batch_normalization_58_beta:@D
6assignvariableop_10_batch_normalization_58_moving_mean:@H
:assignvariableop_11_batch_normalization_58_moving_variance:@>
$assignvariableop_12_conv2d_30_kernel:@@0
"assignvariableop_13_conv2d_30_bias:@>
0assignvariableop_14_batch_normalization_59_gamma:@=
/assignvariableop_15_batch_normalization_59_beta:@D
6assignvariableop_16_batch_normalization_59_moving_mean:@H
:assignvariableop_17_batch_normalization_59_moving_variance:@7
#assignvariableop_18_dense_38_kernel:
��0
!assignvariableop_19_dense_38_bias:	�?
0assignvariableop_20_batch_normalization_60_gamma:	�>
/assignvariableop_21_batch_normalization_60_beta:	�E
6assignvariableop_22_batch_normalization_60_moving_mean:	�I
:assignvariableop_23_batch_normalization_60_moving_variance:	�7
#assignvariableop_24_dense_39_kernel:
��0
!assignvariableop_25_dense_39_bias:	�?
0assignvariableop_26_batch_normalization_61_gamma:	�>
/assignvariableop_27_batch_normalization_61_beta:	�E
6assignvariableop_28_batch_normalization_61_moving_mean:	�I
:assignvariableop_29_batch_normalization_61_moving_variance:	�6
#assignvariableop_30_dense_40_kernel:	�@/
!assignvariableop_31_dense_40_bias:@>
0assignvariableop_32_batch_normalization_62_gamma:@=
/assignvariableop_33_batch_normalization_62_beta:@D
6assignvariableop_34_batch_normalization_62_moving_mean:@H
:assignvariableop_35_batch_normalization_62_moving_variance:@5
#assignvariableop_36_dense_41_kernel:@/
!assignvariableop_37_dense_41_bias:$
assignvariableop_38_beta_1: $
assignvariableop_39_beta_2: #
assignvariableop_40_decay: +
!assignvariableop_41_learning_rate: '
assignvariableop_42_adam_iter:	 #
assignvariableop_43_total: #
assignvariableop_44_count: E
+assignvariableop_45_adam_conv2d_28_kernel_m:@7
)assignvariableop_46_adam_conv2d_28_bias_m:@E
7assignvariableop_47_adam_batch_normalization_57_gamma_m:@D
6assignvariableop_48_adam_batch_normalization_57_beta_m:@E
+assignvariableop_49_adam_conv2d_29_kernel_m:@@7
)assignvariableop_50_adam_conv2d_29_bias_m:@E
7assignvariableop_51_adam_batch_normalization_58_gamma_m:@D
6assignvariableop_52_adam_batch_normalization_58_beta_m:@E
+assignvariableop_53_adam_conv2d_30_kernel_m:@@7
)assignvariableop_54_adam_conv2d_30_bias_m:@E
7assignvariableop_55_adam_batch_normalization_59_gamma_m:@D
6assignvariableop_56_adam_batch_normalization_59_beta_m:@>
*assignvariableop_57_adam_dense_38_kernel_m:
��7
(assignvariableop_58_adam_dense_38_bias_m:	�F
7assignvariableop_59_adam_batch_normalization_60_gamma_m:	�E
6assignvariableop_60_adam_batch_normalization_60_beta_m:	�>
*assignvariableop_61_adam_dense_39_kernel_m:
��7
(assignvariableop_62_adam_dense_39_bias_m:	�F
7assignvariableop_63_adam_batch_normalization_61_gamma_m:	�E
6assignvariableop_64_adam_batch_normalization_61_beta_m:	�=
*assignvariableop_65_adam_dense_40_kernel_m:	�@6
(assignvariableop_66_adam_dense_40_bias_m:@E
7assignvariableop_67_adam_batch_normalization_62_gamma_m:@D
6assignvariableop_68_adam_batch_normalization_62_beta_m:@<
*assignvariableop_69_adam_dense_41_kernel_m:@6
(assignvariableop_70_adam_dense_41_bias_m:E
+assignvariableop_71_adam_conv2d_28_kernel_v:@7
)assignvariableop_72_adam_conv2d_28_bias_v:@E
7assignvariableop_73_adam_batch_normalization_57_gamma_v:@D
6assignvariableop_74_adam_batch_normalization_57_beta_v:@E
+assignvariableop_75_adam_conv2d_29_kernel_v:@@7
)assignvariableop_76_adam_conv2d_29_bias_v:@E
7assignvariableop_77_adam_batch_normalization_58_gamma_v:@D
6assignvariableop_78_adam_batch_normalization_58_beta_v:@E
+assignvariableop_79_adam_conv2d_30_kernel_v:@@7
)assignvariableop_80_adam_conv2d_30_bias_v:@E
7assignvariableop_81_adam_batch_normalization_59_gamma_v:@D
6assignvariableop_82_adam_batch_normalization_59_beta_v:@>
*assignvariableop_83_adam_dense_38_kernel_v:
��7
(assignvariableop_84_adam_dense_38_bias_v:	�F
7assignvariableop_85_adam_batch_normalization_60_gamma_v:	�E
6assignvariableop_86_adam_batch_normalization_60_beta_v:	�>
*assignvariableop_87_adam_dense_39_kernel_v:
��7
(assignvariableop_88_adam_dense_39_bias_v:	�F
7assignvariableop_89_adam_batch_normalization_61_gamma_v:	�E
6assignvariableop_90_adam_batch_normalization_61_beta_v:	�=
*assignvariableop_91_adam_dense_40_kernel_v:	�@6
(assignvariableop_92_adam_dense_40_bias_v:@E
7assignvariableop_93_adam_batch_normalization_62_gamma_v:@D
6assignvariableop_94_adam_batch_normalization_62_beta_v:@<
*assignvariableop_95_adam_dense_41_kernel_v:@6
(assignvariableop_96_adam_dense_41_bias_v:
identity_98��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�5
value�5B�5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�
value�B�bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*p
dtypesf
d2b	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_28_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_28_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_57_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_57_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_57_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_57_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_29_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_29_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_58_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_58_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_58_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_58_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_30_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_30_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_59_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_59_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_59_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_59_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_38_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_38_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_60_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_60_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_60_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_60_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_39_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_39_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_61_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_61_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_61_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_61_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_40_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_40_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_62_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_62_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_62_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_62_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_dense_41_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp!assignvariableop_37_dense_41_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_beta_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_beta_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_decayIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp!assignvariableop_41_learning_rateIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_iterIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_28_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_28_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_batch_normalization_57_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_57_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_29_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_29_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_58_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_58_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_30_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_30_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_59_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_59_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_38_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_38_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp7assignvariableop_59_adam_batch_normalization_60_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_batch_normalization_60_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_39_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_39_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_batch_normalization_61_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_batch_normalization_61_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_40_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_40_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_batch_normalization_62_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_62_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_41_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_41_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_28_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_28_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_batch_normalization_57_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_57_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_29_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_29_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_batch_normalization_58_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_batch_normalization_58_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_30_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_30_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_59_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_59_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_38_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_38_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_batch_normalization_60_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_60_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_39_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_39_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp7assignvariableop_89_adam_batch_normalization_61_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp6assignvariableop_90_adam_batch_normalization_61_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_dense_40_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_dense_40_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp7assignvariableop_93_adam_batch_normalization_62_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp6assignvariableop_94_adam_batch_normalization_62_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp*assignvariableop_95_adam_dense_41_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp(assignvariableop_96_adam_dense_41_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_97Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_98IdentityIdentity_97:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96*"
_acd_function_control_output(*
_output_shapes
 "#
identity_98Identity_98:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_96:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1490385

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
d*
paddingVALID*
strides
d{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
E__inference_dense_39_layer_call_and_return_conditional_losses_1490516

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488205

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�	
)__inference_model_9_layer_call_fn_1489704

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:

unknown_37
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_1488827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
�
�
8__inference_batch_normalization_60_layer_call_fn_1490442

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488458p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490596

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490375

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_59_layer_call_fn_1490326

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488333�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_62_layer_call_fn_1490629

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490562

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_60_layer_call_fn_1490429

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488411p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_9_layer_call_fn_1490380

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1490149

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
d*
paddingVALID*
strides
d{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_1489431
input_10+
conv2d_28_1489337:@
conv2d_28_1489339:@,
batch_normalization_57_1489342:@,
batch_normalization_57_1489344:@,
batch_normalization_57_1489346:@,
batch_normalization_57_1489348:@+
conv2d_29_1489351:@@
conv2d_29_1489353:@,
batch_normalization_58_1489356:@,
batch_normalization_58_1489358:@,
batch_normalization_58_1489360:@,
batch_normalization_58_1489362:@+
conv2d_30_1489365:@@
conv2d_30_1489367:@,
batch_normalization_59_1489370:@,
batch_normalization_59_1489372:@,
batch_normalization_59_1489374:@,
batch_normalization_59_1489376:@$
dense_38_1489381:
��
dense_38_1489383:	�-
batch_normalization_60_1489386:	�-
batch_normalization_60_1489388:	�-
batch_normalization_60_1489390:	�-
batch_normalization_60_1489392:	�$
dense_39_1489395:
��
dense_39_1489397:	�-
batch_normalization_61_1489400:	�-
batch_normalization_61_1489402:	�-
batch_normalization_61_1489404:	�-
batch_normalization_61_1489406:	�#
dense_40_1489409:	�@
dense_40_1489411:@,
batch_normalization_62_1489414:@,
batch_normalization_62_1489416:@,
batch_normalization_62_1489418:@,
batch_normalization_62_1489420:@"
dense_41_1489423:@
dense_41_1489425:
tf_math_multiply_9_mul_y
identity��.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall� dense_38/StatefulPartitionedCall� dense_39/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCallj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinput_10(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_9/ExpandDims:output:0conv2d_28_1489337conv2d_28_1489339*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_57_1489342batch_normalization_57_1489344batch_normalization_57_1489346batch_normalization_57_1489348*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488205�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_29_1489351conv2d_29_1489353*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_58_1489356batch_normalization_58_1489358batch_normalization_58_1489360batch_normalization_58_1489362*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488269�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0conv2d_30_1489365conv2d_30_1489367*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0batch_normalization_59_1489370batch_normalization_59_1489372batch_normalization_59_1489374batch_normalization_59_1489376*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488333�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384�
flatten_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_38_1489381dense_38_1489383*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0batch_normalization_60_1489386batch_normalization_60_1489388batch_normalization_60_1489390batch_normalization_60_1489392*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488411�
 dense_39/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0dense_39_1489395dense_39_1489397*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0batch_normalization_61_1489400batch_normalization_61_1489402batch_normalization_61_1489404batch_normalization_61_1489406*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488493�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0dense_40_1489409dense_40_1489411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0batch_normalization_62_1489414batch_normalization_62_1489416batch_normalization_62_1489418batch_normalization_62_1489420*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488575�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0dense_41_1489423dense_41_1489425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818�
tf.math.multiply_9/MulMul)dense_41/StatefulPartitionedCall:output:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�
*__inference_dense_40_layer_call_fn_1490605

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488493

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490662

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488411

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_1490396

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488458

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_38_layer_call_fn_1490405

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_61_layer_call_fn_1490529

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488493p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_58_layer_call_fn_1490257

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488300�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_57_layer_call_fn_1490175

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488236�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�	
)__inference_model_9_layer_call_fn_1489787

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:

unknown_37
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
 #$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_1489168o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
ש
�&
D__inference_model_9_layer_call_and_return_conditional_losses_1490129

inputsB
(conv2d_28_conv2d_readvariableop_resource:@7
)conv2d_28_biasadd_readvariableop_resource:@<
.batch_normalization_57_readvariableop_resource:@>
0batch_normalization_57_readvariableop_1_resource:@M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@@7
)conv2d_29_biasadd_readvariableop_resource:@<
.batch_normalization_58_readvariableop_resource:@>
0batch_normalization_58_readvariableop_1_resource:@M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_30_conv2d_readvariableop_resource:@@7
)conv2d_30_biasadd_readvariableop_resource:@<
.batch_normalization_59_readvariableop_resource:@>
0batch_normalization_59_readvariableop_1_resource:@M
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_38_matmul_readvariableop_resource:
��7
(dense_38_biasadd_readvariableop_resource:	�M
>batch_normalization_60_assignmovingavg_readvariableop_resource:	�O
@batch_normalization_60_assignmovingavg_1_readvariableop_resource:	�K
<batch_normalization_60_batchnorm_mul_readvariableop_resource:	�G
8batch_normalization_60_batchnorm_readvariableop_resource:	�;
'dense_39_matmul_readvariableop_resource:
��7
(dense_39_biasadd_readvariableop_resource:	�M
>batch_normalization_61_assignmovingavg_readvariableop_resource:	�O
@batch_normalization_61_assignmovingavg_1_readvariableop_resource:	�K
<batch_normalization_61_batchnorm_mul_readvariableop_resource:	�G
8batch_normalization_61_batchnorm_readvariableop_resource:	�:
'dense_40_matmul_readvariableop_resource:	�@6
(dense_40_biasadd_readvariableop_resource:@L
>batch_normalization_62_assignmovingavg_readvariableop_resource:@N
@batch_normalization_62_assignmovingavg_1_readvariableop_resource:@J
<batch_normalization_62_batchnorm_mul_readvariableop_resource:@F
8batch_normalization_62_batchnorm_readvariableop_resource:@9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:
tf_math_multiply_9_mul_y
identity��%batch_normalization_57/AssignNewValue�'batch_normalization_57/AssignNewValue_1�6batch_normalization_57/FusedBatchNormV3/ReadVariableOp�8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_57/ReadVariableOp�'batch_normalization_57/ReadVariableOp_1�%batch_normalization_58/AssignNewValue�'batch_normalization_58/AssignNewValue_1�6batch_normalization_58/FusedBatchNormV3/ReadVariableOp�8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_58/ReadVariableOp�'batch_normalization_58/ReadVariableOp_1�%batch_normalization_59/AssignNewValue�'batch_normalization_59/AssignNewValue_1�6batch_normalization_59/FusedBatchNormV3/ReadVariableOp�8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_59/ReadVariableOp�'batch_normalization_59/ReadVariableOp_1�&batch_normalization_60/AssignMovingAvg�5batch_normalization_60/AssignMovingAvg/ReadVariableOp�(batch_normalization_60/AssignMovingAvg_1�7batch_normalization_60/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_60/batchnorm/ReadVariableOp�3batch_normalization_60/batchnorm/mul/ReadVariableOp�&batch_normalization_61/AssignMovingAvg�5batch_normalization_61/AssignMovingAvg/ReadVariableOp�(batch_normalization_61/AssignMovingAvg_1�7batch_normalization_61/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_61/batchnorm/ReadVariableOp�3batch_normalization_61/batchnorm/mul/ReadVariableOp�&batch_normalization_62/AssignMovingAvg�5batch_normalization_62/AssignMovingAvg/ReadVariableOp�(batch_normalization_62/AssignMovingAvg_1�7batch_normalization_62/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_62/batchnorm/ReadVariableOp�3batch_normalization_62/batchnorm/mul/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp�dense_38/BiasAdd/ReadVariableOp�dense_38/MatMul/ReadVariableOp�dense_39/BiasAdd/ReadVariableOp�dense_39/MatMul/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�dense_40/MatMul/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�dense_41/MatMul/ReadVariableOpj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinputs(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_28/Conv2DConv2D$tf.expand_dims_9/ExpandDims:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_57/AssignNewValueAssignVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource4batch_normalization_57/FusedBatchNormV3:batch_mean:07^batch_normalization_57/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_57/AssignNewValue_1AssignVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_57/FusedBatchNormV3:batch_variance:09^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_29/Conv2DConv2D+batch_normalization_57/FusedBatchNormV3:y:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_29/Relu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_58/AssignNewValueAssignVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource4batch_normalization_58/FusedBatchNormV3:batch_mean:07^batch_normalization_58/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_58/AssignNewValue_1AssignVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_58/FusedBatchNormV3:batch_variance:09^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_30/Conv2DConv2D+batch_normalization_58/FusedBatchNormV3:y:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_30/Relu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_59/AssignNewValueAssignVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource4batch_normalization_59/FusedBatchNormV3:batch_mean:07^batch_normalization_59/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_59/AssignNewValue_1AssignVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_59/FusedBatchNormV3:batch_variance:09^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_59/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
ksize
d*
paddingVALID*
strides
d`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_9/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_38/MatMulMatMulflatten_9/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:����������
5batch_normalization_60/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_60/moments/meanMeandense_38/Relu:activations:0>batch_normalization_60/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
+batch_normalization_60/moments/StopGradientStopGradient,batch_normalization_60/moments/mean:output:0*
T0*
_output_shapes
:	��
0batch_normalization_60/moments/SquaredDifferenceSquaredDifferencedense_38/Relu:activations:04batch_normalization_60/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
9batch_normalization_60/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_60/moments/varianceMean4batch_normalization_60/moments/SquaredDifference:z:0Bbatch_normalization_60/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
&batch_normalization_60/moments/SqueezeSqueeze,batch_normalization_60/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
(batch_normalization_60/moments/Squeeze_1Squeeze0batch_normalization_60/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 q
,batch_normalization_60/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_60/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_60_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*batch_normalization_60/AssignMovingAvg/subSub=batch_normalization_60/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_60/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
*batch_normalization_60/AssignMovingAvg/mulMul.batch_normalization_60/AssignMovingAvg/sub:z:05batch_normalization_60/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
&batch_normalization_60/AssignMovingAvgAssignSubVariableOp>batch_normalization_60_assignmovingavg_readvariableop_resource.batch_normalization_60/AssignMovingAvg/mul:z:06^batch_normalization_60/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_60/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_60/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_60_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,batch_normalization_60/AssignMovingAvg_1/subSub?batch_normalization_60/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_60/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
,batch_normalization_60/AssignMovingAvg_1/mulMul0batch_normalization_60/AssignMovingAvg_1/sub:z:07batch_normalization_60/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
(batch_normalization_60/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_60_assignmovingavg_1_readvariableop_resource0batch_normalization_60/AssignMovingAvg_1/mul:z:08^batch_normalization_60/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_60/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_60/batchnorm/addAddV21batch_normalization_60/moments/Squeeze_1:output:0/batch_normalization_60/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_60/batchnorm/RsqrtRsqrt(batch_normalization_60/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_60/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_60_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_60/batchnorm/mulMul*batch_normalization_60/batchnorm/Rsqrt:y:0;batch_normalization_60/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_60/batchnorm/mul_1Muldense_38/Relu:activations:0(batch_normalization_60/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
&batch_normalization_60/batchnorm/mul_2Mul/batch_normalization_60/moments/Squeeze:output:0(batch_normalization_60/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
/batch_normalization_60/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_60_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_60/batchnorm/subSub7batch_normalization_60/batchnorm/ReadVariableOp:value:0*batch_normalization_60/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_60/batchnorm/add_1AddV2*batch_normalization_60/batchnorm/mul_1:z:0(batch_normalization_60/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_39/MatMulMatMul*batch_normalization_60/batchnorm/add_1:z:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*(
_output_shapes
:����������
5batch_normalization_61/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_61/moments/meanMeandense_39/Relu:activations:0>batch_normalization_61/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
+batch_normalization_61/moments/StopGradientStopGradient,batch_normalization_61/moments/mean:output:0*
T0*
_output_shapes
:	��
0batch_normalization_61/moments/SquaredDifferenceSquaredDifferencedense_39/Relu:activations:04batch_normalization_61/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
9batch_normalization_61/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_61/moments/varianceMean4batch_normalization_61/moments/SquaredDifference:z:0Bbatch_normalization_61/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
&batch_normalization_61/moments/SqueezeSqueeze,batch_normalization_61/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
(batch_normalization_61/moments/Squeeze_1Squeeze0batch_normalization_61/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 q
,batch_normalization_61/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_61/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_61_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*batch_normalization_61/AssignMovingAvg/subSub=batch_normalization_61/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_61/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
*batch_normalization_61/AssignMovingAvg/mulMul.batch_normalization_61/AssignMovingAvg/sub:z:05batch_normalization_61/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
&batch_normalization_61/AssignMovingAvgAssignSubVariableOp>batch_normalization_61_assignmovingavg_readvariableop_resource.batch_normalization_61/AssignMovingAvg/mul:z:06^batch_normalization_61/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_61/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_61/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_61_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,batch_normalization_61/AssignMovingAvg_1/subSub?batch_normalization_61/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_61/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
,batch_normalization_61/AssignMovingAvg_1/mulMul0batch_normalization_61/AssignMovingAvg_1/sub:z:07batch_normalization_61/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
(batch_normalization_61/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_61_assignmovingavg_1_readvariableop_resource0batch_normalization_61/AssignMovingAvg_1/mul:z:08^batch_normalization_61/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_61/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_61/batchnorm/addAddV21batch_normalization_61/moments/Squeeze_1:output:0/batch_normalization_61/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_61/batchnorm/RsqrtRsqrt(batch_normalization_61/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_61/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_61_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_61/batchnorm/mulMul*batch_normalization_61/batchnorm/Rsqrt:y:0;batch_normalization_61/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_61/batchnorm/mul_1Muldense_39/Relu:activations:0(batch_normalization_61/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
&batch_normalization_61/batchnorm/mul_2Mul/batch_normalization_61/moments/Squeeze:output:0(batch_normalization_61/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
/batch_normalization_61/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_61_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_61/batchnorm/subSub7batch_normalization_61/batchnorm/ReadVariableOp:value:0*batch_normalization_61/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_61/batchnorm/add_1AddV2*batch_normalization_61/batchnorm/mul_1:z:0(batch_normalization_61/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_40/MatMulMatMul*batch_normalization_61/batchnorm/add_1:z:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@
5batch_normalization_62/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_62/moments/meanMeandense_40/Relu:activations:0>batch_normalization_62/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(�
+batch_normalization_62/moments/StopGradientStopGradient,batch_normalization_62/moments/mean:output:0*
T0*
_output_shapes

:@�
0batch_normalization_62/moments/SquaredDifferenceSquaredDifferencedense_40/Relu:activations:04batch_normalization_62/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������@�
9batch_normalization_62/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_62/moments/varianceMean4batch_normalization_62/moments/SquaredDifference:z:0Bbatch_normalization_62/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(�
&batch_normalization_62/moments/SqueezeSqueeze,batch_normalization_62/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 �
(batch_normalization_62/moments/Squeeze_1Squeeze0batch_normalization_62/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 q
,batch_normalization_62/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_62/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_62_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
*batch_normalization_62/AssignMovingAvg/subSub=batch_normalization_62/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_62/moments/Squeeze:output:0*
T0*
_output_shapes
:@�
*batch_normalization_62/AssignMovingAvg/mulMul.batch_normalization_62/AssignMovingAvg/sub:z:05batch_normalization_62/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
&batch_normalization_62/AssignMovingAvgAssignSubVariableOp>batch_normalization_62_assignmovingavg_readvariableop_resource.batch_normalization_62/AssignMovingAvg/mul:z:06^batch_normalization_62/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_62/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_62/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_62_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
,batch_normalization_62/AssignMovingAvg_1/subSub?batch_normalization_62/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_62/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@�
,batch_normalization_62/AssignMovingAvg_1/mulMul0batch_normalization_62/AssignMovingAvg_1/sub:z:07batch_normalization_62/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
(batch_normalization_62/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_62_assignmovingavg_1_readvariableop_resource0batch_normalization_62/AssignMovingAvg_1/mul:z:08^batch_normalization_62/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_62/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_62/batchnorm/addAddV21batch_normalization_62/moments/Squeeze_1:output:0/batch_normalization_62/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_62/batchnorm/RsqrtRsqrt(batch_normalization_62/batchnorm/add:z:0*
T0*
_output_shapes
:@�
3batch_normalization_62/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_62_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
$batch_normalization_62/batchnorm/mulMul*batch_normalization_62/batchnorm/Rsqrt:y:0;batch_normalization_62/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
&batch_normalization_62/batchnorm/mul_1Muldense_40/Relu:activations:0(batch_normalization_62/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
&batch_normalization_62/batchnorm/mul_2Mul/batch_normalization_62/moments/Squeeze:output:0(batch_normalization_62/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
/batch_normalization_62/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_62_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
$batch_normalization_62/batchnorm/subSub7batch_normalization_62/batchnorm/ReadVariableOp:value:0*batch_normalization_62/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
&batch_normalization_62/batchnorm/add_1AddV2*batch_normalization_62/batchnorm/mul_1:z:0(batch_normalization_62/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_41/MatMulMatMul*batch_normalization_62/batchnorm/add_1:z:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense_41/TanhTanhdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:���������|
tf.math.multiply_9/MulMuldense_41/Tanh:y:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^batch_normalization_57/AssignNewValue(^batch_normalization_57/AssignNewValue_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1&^batch_normalization_58/AssignNewValue(^batch_normalization_58/AssignNewValue_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_1&^batch_normalization_59/AssignNewValue(^batch_normalization_59/AssignNewValue_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1'^batch_normalization_60/AssignMovingAvg6^batch_normalization_60/AssignMovingAvg/ReadVariableOp)^batch_normalization_60/AssignMovingAvg_18^batch_normalization_60/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_60/batchnorm/ReadVariableOp4^batch_normalization_60/batchnorm/mul/ReadVariableOp'^batch_normalization_61/AssignMovingAvg6^batch_normalization_61/AssignMovingAvg/ReadVariableOp)^batch_normalization_61/AssignMovingAvg_18^batch_normalization_61/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_61/batchnorm/ReadVariableOp4^batch_normalization_61/batchnorm/mul/ReadVariableOp'^batch_normalization_62/AssignMovingAvg6^batch_normalization_62/AssignMovingAvg/ReadVariableOp)^batch_normalization_62/AssignMovingAvg_18^batch_normalization_62/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_62/batchnorm/ReadVariableOp4^batch_normalization_62/batchnorm/mul/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2N
%batch_normalization_57/AssignNewValue%batch_normalization_57/AssignNewValue2R
'batch_normalization_57/AssignNewValue_1'batch_normalization_57/AssignNewValue_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12N
%batch_normalization_58/AssignNewValue%batch_normalization_58/AssignNewValue2R
'batch_normalization_58/AssignNewValue_1'batch_normalization_58/AssignNewValue_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12N
%batch_normalization_59/AssignNewValue%batch_normalization_59/AssignNewValue2R
'batch_normalization_59/AssignNewValue_1'batch_normalization_59/AssignNewValue_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12P
&batch_normalization_60/AssignMovingAvg&batch_normalization_60/AssignMovingAvg2n
5batch_normalization_60/AssignMovingAvg/ReadVariableOp5batch_normalization_60/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_60/AssignMovingAvg_1(batch_normalization_60/AssignMovingAvg_12r
7batch_normalization_60/AssignMovingAvg_1/ReadVariableOp7batch_normalization_60/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_60/batchnorm/ReadVariableOp/batch_normalization_60/batchnorm/ReadVariableOp2j
3batch_normalization_60/batchnorm/mul/ReadVariableOp3batch_normalization_60/batchnorm/mul/ReadVariableOp2P
&batch_normalization_61/AssignMovingAvg&batch_normalization_61/AssignMovingAvg2n
5batch_normalization_61/AssignMovingAvg/ReadVariableOp5batch_normalization_61/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_61/AssignMovingAvg_1(batch_normalization_61/AssignMovingAvg_12r
7batch_normalization_61/AssignMovingAvg_1/ReadVariableOp7batch_normalization_61/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_61/batchnorm/ReadVariableOp/batch_normalization_61/batchnorm/ReadVariableOp2j
3batch_normalization_61/batchnorm/mul/ReadVariableOp3batch_normalization_61/batchnorm/mul/ReadVariableOp2P
&batch_normalization_62/AssignMovingAvg&batch_normalization_62/AssignMovingAvg2n
5batch_normalization_62/AssignMovingAvg/ReadVariableOp5batch_normalization_62/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_62/AssignMovingAvg_1(batch_normalization_62/AssignMovingAvg_12r
7batch_normalization_62/AssignMovingAvg_1/ReadVariableOp7batch_normalization_62/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_62/batchnorm/ReadVariableOp/batch_normalization_62/batchnorm/ReadVariableOp2j
3batch_normalization_62/batchnorm/mul/ReadVariableOp3batch_normalization_62/batchnorm/mul/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
�
�	
)__inference_model_9_layer_call_fn_1489332
input_10!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:

unknown_37
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
 #$%&*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_1489168o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490211

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488540

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_57_layer_call_fn_1490162

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488205�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488269

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490193

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
E__inference_dense_40_layer_call_and_return_conditional_losses_1490616

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_41_layer_call_fn_1490705

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_flatten_9_layer_call_fn_1490390

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_61_layer_call_fn_1490542

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488540p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488575

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490496

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_1488827

inputs+
conv2d_28_1488654:@
conv2d_28_1488656:@,
batch_normalization_57_1488659:@,
batch_normalization_57_1488661:@,
batch_normalization_57_1488663:@,
batch_normalization_57_1488665:@+
conv2d_29_1488680:@@
conv2d_29_1488682:@,
batch_normalization_58_1488685:@,
batch_normalization_58_1488687:@,
batch_normalization_58_1488689:@,
batch_normalization_58_1488691:@+
conv2d_30_1488706:@@
conv2d_30_1488708:@,
batch_normalization_59_1488711:@,
batch_normalization_59_1488713:@,
batch_normalization_59_1488715:@,
batch_normalization_59_1488717:@$
dense_38_1488741:
��
dense_38_1488743:	�-
batch_normalization_60_1488746:	�-
batch_normalization_60_1488748:	�-
batch_normalization_60_1488750:	�-
batch_normalization_60_1488752:	�$
dense_39_1488767:
��
dense_39_1488769:	�-
batch_normalization_61_1488772:	�-
batch_normalization_61_1488774:	�-
batch_normalization_61_1488776:	�-
batch_normalization_61_1488778:	�#
dense_40_1488793:	�@
dense_40_1488795:@,
batch_normalization_62_1488798:@,
batch_normalization_62_1488800:@,
batch_normalization_62_1488802:@,
batch_normalization_62_1488804:@"
dense_41_1488819:@
dense_41_1488821:
tf_math_multiply_9_mul_y
identity��.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall� dense_38/StatefulPartitionedCall� dense_39/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCallj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinputs(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_9/ExpandDims:output:0conv2d_28_1488654conv2d_28_1488656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_57_1488659batch_normalization_57_1488661batch_normalization_57_1488663batch_normalization_57_1488665*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488205�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_29_1488680conv2d_29_1488682*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_58_1488685batch_normalization_58_1488687batch_normalization_58_1488689batch_normalization_58_1488691*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488269�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0conv2d_30_1488706conv2d_30_1488708*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0batch_normalization_59_1488711batch_normalization_59_1488713batch_normalization_59_1488715batch_normalization_59_1488717*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488333�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384�
flatten_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_38_1488741dense_38_1488743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0batch_normalization_60_1488746batch_normalization_60_1488748batch_normalization_60_1488750batch_normalization_60_1488752*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488411�
 dense_39/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0dense_39_1488767dense_39_1488769*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0batch_normalization_61_1488772batch_normalization_61_1488774batch_normalization_61_1488776batch_normalization_61_1488778*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488493�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0dense_40_1488793dense_40_1488795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0batch_normalization_62_1488798batch_normalization_62_1488800batch_normalization_62_1488802batch_normalization_62_1488804*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488575�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0dense_41_1488819dense_41_1488821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818�
tf.math.multiply_9/MulMul)dense_41/StatefulPartitionedCall:output:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
�
�
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1490313

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�'
"__inference__wrapped_model_1488183
input_10J
0model_9_conv2d_28_conv2d_readvariableop_resource:@?
1model_9_conv2d_28_biasadd_readvariableop_resource:@D
6model_9_batch_normalization_57_readvariableop_resource:@F
8model_9_batch_normalization_57_readvariableop_1_resource:@U
Gmodel_9_batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@W
Imodel_9_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@J
0model_9_conv2d_29_conv2d_readvariableop_resource:@@?
1model_9_conv2d_29_biasadd_readvariableop_resource:@D
6model_9_batch_normalization_58_readvariableop_resource:@F
8model_9_batch_normalization_58_readvariableop_1_resource:@U
Gmodel_9_batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@W
Imodel_9_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@J
0model_9_conv2d_30_conv2d_readvariableop_resource:@@?
1model_9_conv2d_30_biasadd_readvariableop_resource:@D
6model_9_batch_normalization_59_readvariableop_resource:@F
8model_9_batch_normalization_59_readvariableop_1_resource:@U
Gmodel_9_batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@W
Imodel_9_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@C
/model_9_dense_38_matmul_readvariableop_resource:
��?
0model_9_dense_38_biasadd_readvariableop_resource:	�O
@model_9_batch_normalization_60_batchnorm_readvariableop_resource:	�S
Dmodel_9_batch_normalization_60_batchnorm_mul_readvariableop_resource:	�Q
Bmodel_9_batch_normalization_60_batchnorm_readvariableop_1_resource:	�Q
Bmodel_9_batch_normalization_60_batchnorm_readvariableop_2_resource:	�C
/model_9_dense_39_matmul_readvariableop_resource:
��?
0model_9_dense_39_biasadd_readvariableop_resource:	�O
@model_9_batch_normalization_61_batchnorm_readvariableop_resource:	�S
Dmodel_9_batch_normalization_61_batchnorm_mul_readvariableop_resource:	�Q
Bmodel_9_batch_normalization_61_batchnorm_readvariableop_1_resource:	�Q
Bmodel_9_batch_normalization_61_batchnorm_readvariableop_2_resource:	�B
/model_9_dense_40_matmul_readvariableop_resource:	�@>
0model_9_dense_40_biasadd_readvariableop_resource:@N
@model_9_batch_normalization_62_batchnorm_readvariableop_resource:@R
Dmodel_9_batch_normalization_62_batchnorm_mul_readvariableop_resource:@P
Bmodel_9_batch_normalization_62_batchnorm_readvariableop_1_resource:@P
Bmodel_9_batch_normalization_62_batchnorm_readvariableop_2_resource:@A
/model_9_dense_41_matmul_readvariableop_resource:@>
0model_9_dense_41_biasadd_readvariableop_resource:$
 model_9_tf_math_multiply_9_mul_y
identity��>model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp�@model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1�-model_9/batch_normalization_57/ReadVariableOp�/model_9/batch_normalization_57/ReadVariableOp_1�>model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp�@model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1�-model_9/batch_normalization_58/ReadVariableOp�/model_9/batch_normalization_58/ReadVariableOp_1�>model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp�@model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1�-model_9/batch_normalization_59/ReadVariableOp�/model_9/batch_normalization_59/ReadVariableOp_1�7model_9/batch_normalization_60/batchnorm/ReadVariableOp�9model_9/batch_normalization_60/batchnorm/ReadVariableOp_1�9model_9/batch_normalization_60/batchnorm/ReadVariableOp_2�;model_9/batch_normalization_60/batchnorm/mul/ReadVariableOp�7model_9/batch_normalization_61/batchnorm/ReadVariableOp�9model_9/batch_normalization_61/batchnorm/ReadVariableOp_1�9model_9/batch_normalization_61/batchnorm/ReadVariableOp_2�;model_9/batch_normalization_61/batchnorm/mul/ReadVariableOp�7model_9/batch_normalization_62/batchnorm/ReadVariableOp�9model_9/batch_normalization_62/batchnorm/ReadVariableOp_1�9model_9/batch_normalization_62/batchnorm/ReadVariableOp_2�;model_9/batch_normalization_62/batchnorm/mul/ReadVariableOp�(model_9/conv2d_28/BiasAdd/ReadVariableOp�'model_9/conv2d_28/Conv2D/ReadVariableOp�(model_9/conv2d_29/BiasAdd/ReadVariableOp�'model_9/conv2d_29/Conv2D/ReadVariableOp�(model_9/conv2d_30/BiasAdd/ReadVariableOp�'model_9/conv2d_30/Conv2D/ReadVariableOp�'model_9/dense_38/BiasAdd/ReadVariableOp�&model_9/dense_38/MatMul/ReadVariableOp�'model_9/dense_39/BiasAdd/ReadVariableOp�&model_9/dense_39/MatMul/ReadVariableOp�'model_9/dense_40/BiasAdd/ReadVariableOp�&model_9/dense_40/MatMul/ReadVariableOp�'model_9/dense_41/BiasAdd/ReadVariableOp�&model_9/dense_41/MatMul/ReadVariableOpr
'model_9/tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#model_9/tf.expand_dims_9/ExpandDims
ExpandDimsinput_100model_9/tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
'model_9/conv2d_28/Conv2D/ReadVariableOpReadVariableOp0model_9_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model_9/conv2d_28/Conv2DConv2D,model_9/tf.expand_dims_9/ExpandDims:output:0/model_9/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
(model_9/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_9/conv2d_28/BiasAddBiasAdd!model_9/conv2d_28/Conv2D:output:00model_9/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@}
model_9/conv2d_28/ReluRelu"model_9/conv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
-model_9/batch_normalization_57/ReadVariableOpReadVariableOp6model_9_batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_57/ReadVariableOp_1ReadVariableOp8model_9_batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
>model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_9_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_9_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_57/FusedBatchNormV3FusedBatchNormV3$model_9/conv2d_28/Relu:activations:05model_9/batch_normalization_57/ReadVariableOp:value:07model_9/batch_normalization_57/ReadVariableOp_1:value:0Fmodel_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
'model_9/conv2d_29/Conv2D/ReadVariableOpReadVariableOp0model_9_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_9/conv2d_29/Conv2DConv2D3model_9/batch_normalization_57/FusedBatchNormV3:y:0/model_9/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
(model_9/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_9/conv2d_29/BiasAddBiasAdd!model_9/conv2d_29/Conv2D:output:00model_9/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@}
model_9/conv2d_29/ReluRelu"model_9/conv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
-model_9/batch_normalization_58/ReadVariableOpReadVariableOp6model_9_batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_58/ReadVariableOp_1ReadVariableOp8model_9_batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
>model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_9_batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_9_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_58/FusedBatchNormV3FusedBatchNormV3$model_9/conv2d_29/Relu:activations:05model_9/batch_normalization_58/ReadVariableOp:value:07model_9/batch_normalization_58/ReadVariableOp_1:value:0Fmodel_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
'model_9/conv2d_30/Conv2D/ReadVariableOpReadVariableOp0model_9_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_9/conv2d_30/Conv2DConv2D3model_9/batch_normalization_58/FusedBatchNormV3:y:0/model_9/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
(model_9/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_9/conv2d_30/BiasAddBiasAdd!model_9/conv2d_30/Conv2D:output:00model_9/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@}
model_9/conv2d_30/ReluRelu"model_9/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:����������@�
-model_9/batch_normalization_59/ReadVariableOpReadVariableOp6model_9_batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_59/ReadVariableOp_1ReadVariableOp8model_9_batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
>model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_9_batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_9_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
/model_9/batch_normalization_59/FusedBatchNormV3FusedBatchNormV3$model_9/conv2d_30/Relu:activations:05model_9/batch_normalization_59/ReadVariableOp:value:07model_9/batch_normalization_59/ReadVariableOp_1:value:0Fmodel_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_9/max_pooling2d_9/MaxPoolMaxPool3model_9/batch_normalization_59/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
ksize
d*
paddingVALID*
strides
dh
model_9/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
model_9/flatten_9/ReshapeReshape(model_9/max_pooling2d_9/MaxPool:output:0 model_9/flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
&model_9/dense_38/MatMul/ReadVariableOpReadVariableOp/model_9_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_9/dense_38/MatMulMatMul"model_9/flatten_9/Reshape:output:0.model_9/dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_9/dense_38/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_38_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_9/dense_38/BiasAddBiasAdd!model_9/dense_38/MatMul:product:0/model_9/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
model_9/dense_38/ReluRelu!model_9/dense_38/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
7model_9/batch_normalization_60/batchnorm/ReadVariableOpReadVariableOp@model_9_batch_normalization_60_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0s
.model_9/batch_normalization_60/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_9/batch_normalization_60/batchnorm/addAddV2?model_9/batch_normalization_60/batchnorm/ReadVariableOp:value:07model_9/batch_normalization_60/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_60/batchnorm/RsqrtRsqrt0model_9/batch_normalization_60/batchnorm/add:z:0*
T0*
_output_shapes	
:��
;model_9/batch_normalization_60/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_9_batch_normalization_60_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model_9/batch_normalization_60/batchnorm/mulMul2model_9/batch_normalization_60/batchnorm/Rsqrt:y:0Cmodel_9/batch_normalization_60/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_60/batchnorm/mul_1Mul#model_9/dense_38/Relu:activations:00model_9/batch_normalization_60/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
9model_9/batch_normalization_60/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_9_batch_normalization_60_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
.model_9/batch_normalization_60/batchnorm/mul_2MulAmodel_9/batch_normalization_60/batchnorm/ReadVariableOp_1:value:00model_9/batch_normalization_60/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
9model_9/batch_normalization_60/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_9_batch_normalization_60_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
,model_9/batch_normalization_60/batchnorm/subSubAmodel_9/batch_normalization_60/batchnorm/ReadVariableOp_2:value:02model_9/batch_normalization_60/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_60/batchnorm/add_1AddV22model_9/batch_normalization_60/batchnorm/mul_1:z:00model_9/batch_normalization_60/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
&model_9/dense_39/MatMul/ReadVariableOpReadVariableOp/model_9_dense_39_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_9/dense_39/MatMulMatMul2model_9/batch_normalization_60/batchnorm/add_1:z:0.model_9/dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_9/dense_39/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_39_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_9/dense_39/BiasAddBiasAdd!model_9/dense_39/MatMul:product:0/model_9/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
model_9/dense_39/ReluRelu!model_9/dense_39/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
7model_9/batch_normalization_61/batchnorm/ReadVariableOpReadVariableOp@model_9_batch_normalization_61_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0s
.model_9/batch_normalization_61/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_9/batch_normalization_61/batchnorm/addAddV2?model_9/batch_normalization_61/batchnorm/ReadVariableOp:value:07model_9/batch_normalization_61/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_61/batchnorm/RsqrtRsqrt0model_9/batch_normalization_61/batchnorm/add:z:0*
T0*
_output_shapes	
:��
;model_9/batch_normalization_61/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_9_batch_normalization_61_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model_9/batch_normalization_61/batchnorm/mulMul2model_9/batch_normalization_61/batchnorm/Rsqrt:y:0Cmodel_9/batch_normalization_61/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_61/batchnorm/mul_1Mul#model_9/dense_39/Relu:activations:00model_9/batch_normalization_61/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
9model_9/batch_normalization_61/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_9_batch_normalization_61_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
.model_9/batch_normalization_61/batchnorm/mul_2MulAmodel_9/batch_normalization_61/batchnorm/ReadVariableOp_1:value:00model_9/batch_normalization_61/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
9model_9/batch_normalization_61/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_9_batch_normalization_61_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
,model_9/batch_normalization_61/batchnorm/subSubAmodel_9/batch_normalization_61/batchnorm/ReadVariableOp_2:value:02model_9/batch_normalization_61/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
.model_9/batch_normalization_61/batchnorm/add_1AddV22model_9/batch_normalization_61/batchnorm/mul_1:z:00model_9/batch_normalization_61/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
&model_9/dense_40/MatMul/ReadVariableOpReadVariableOp/model_9_dense_40_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_9/dense_40/MatMulMatMul2model_9/batch_normalization_61/batchnorm/add_1:z:0.model_9/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_9/dense_40/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_9/dense_40/BiasAddBiasAdd!model_9/dense_40/MatMul:product:0/model_9/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
model_9/dense_40/ReluRelu!model_9/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
7model_9/batch_normalization_62/batchnorm/ReadVariableOpReadVariableOp@model_9_batch_normalization_62_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0s
.model_9/batch_normalization_62/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_9/batch_normalization_62/batchnorm/addAddV2?model_9/batch_normalization_62/batchnorm/ReadVariableOp:value:07model_9/batch_normalization_62/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
.model_9/batch_normalization_62/batchnorm/RsqrtRsqrt0model_9/batch_normalization_62/batchnorm/add:z:0*
T0*
_output_shapes
:@�
;model_9/batch_normalization_62/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_9_batch_normalization_62_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
,model_9/batch_normalization_62/batchnorm/mulMul2model_9/batch_normalization_62/batchnorm/Rsqrt:y:0Cmodel_9/batch_normalization_62/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
.model_9/batch_normalization_62/batchnorm/mul_1Mul#model_9/dense_40/Relu:activations:00model_9/batch_normalization_62/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
9model_9/batch_normalization_62/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_9_batch_normalization_62_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_9/batch_normalization_62/batchnorm/mul_2MulAmodel_9/batch_normalization_62/batchnorm/ReadVariableOp_1:value:00model_9/batch_normalization_62/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
9model_9/batch_normalization_62/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_9_batch_normalization_62_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0�
,model_9/batch_normalization_62/batchnorm/subSubAmodel_9/batch_normalization_62/batchnorm/ReadVariableOp_2:value:02model_9/batch_normalization_62/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
.model_9/batch_normalization_62/batchnorm/add_1AddV22model_9/batch_normalization_62/batchnorm/mul_1:z:00model_9/batch_normalization_62/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
&model_9/dense_41/MatMul/ReadVariableOpReadVariableOp/model_9_dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_9/dense_41/MatMulMatMul2model_9/batch_normalization_62/batchnorm/add_1:z:0.model_9/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_9/dense_41/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_9/dense_41/BiasAddBiasAdd!model_9/dense_41/MatMul:product:0/model_9/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model_9/dense_41/TanhTanh!model_9/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:����������
model_9/tf.math.multiply_9/MulMulmodel_9/dense_41/Tanh:y:0 model_9_tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������q
IdentityIdentity"model_9/tf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp?^model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOpA^model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1.^model_9/batch_normalization_57/ReadVariableOp0^model_9/batch_normalization_57/ReadVariableOp_1?^model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOpA^model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1.^model_9/batch_normalization_58/ReadVariableOp0^model_9/batch_normalization_58/ReadVariableOp_1?^model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOpA^model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1.^model_9/batch_normalization_59/ReadVariableOp0^model_9/batch_normalization_59/ReadVariableOp_18^model_9/batch_normalization_60/batchnorm/ReadVariableOp:^model_9/batch_normalization_60/batchnorm/ReadVariableOp_1:^model_9/batch_normalization_60/batchnorm/ReadVariableOp_2<^model_9/batch_normalization_60/batchnorm/mul/ReadVariableOp8^model_9/batch_normalization_61/batchnorm/ReadVariableOp:^model_9/batch_normalization_61/batchnorm/ReadVariableOp_1:^model_9/batch_normalization_61/batchnorm/ReadVariableOp_2<^model_9/batch_normalization_61/batchnorm/mul/ReadVariableOp8^model_9/batch_normalization_62/batchnorm/ReadVariableOp:^model_9/batch_normalization_62/batchnorm/ReadVariableOp_1:^model_9/batch_normalization_62/batchnorm/ReadVariableOp_2<^model_9/batch_normalization_62/batchnorm/mul/ReadVariableOp)^model_9/conv2d_28/BiasAdd/ReadVariableOp(^model_9/conv2d_28/Conv2D/ReadVariableOp)^model_9/conv2d_29/BiasAdd/ReadVariableOp(^model_9/conv2d_29/Conv2D/ReadVariableOp)^model_9/conv2d_30/BiasAdd/ReadVariableOp(^model_9/conv2d_30/Conv2D/ReadVariableOp(^model_9/dense_38/BiasAdd/ReadVariableOp'^model_9/dense_38/MatMul/ReadVariableOp(^model_9/dense_39/BiasAdd/ReadVariableOp'^model_9/dense_39/MatMul/ReadVariableOp(^model_9/dense_40/BiasAdd/ReadVariableOp'^model_9/dense_40/MatMul/ReadVariableOp(^model_9/dense_41/BiasAdd/ReadVariableOp'^model_9/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2�
>model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp>model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2�
@model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1@model_9/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12^
-model_9/batch_normalization_57/ReadVariableOp-model_9/batch_normalization_57/ReadVariableOp2b
/model_9/batch_normalization_57/ReadVariableOp_1/model_9/batch_normalization_57/ReadVariableOp_12�
>model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp>model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp2�
@model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1@model_9/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12^
-model_9/batch_normalization_58/ReadVariableOp-model_9/batch_normalization_58/ReadVariableOp2b
/model_9/batch_normalization_58/ReadVariableOp_1/model_9/batch_normalization_58/ReadVariableOp_12�
>model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp>model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp2�
@model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1@model_9/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12^
-model_9/batch_normalization_59/ReadVariableOp-model_9/batch_normalization_59/ReadVariableOp2b
/model_9/batch_normalization_59/ReadVariableOp_1/model_9/batch_normalization_59/ReadVariableOp_12r
7model_9/batch_normalization_60/batchnorm/ReadVariableOp7model_9/batch_normalization_60/batchnorm/ReadVariableOp2v
9model_9/batch_normalization_60/batchnorm/ReadVariableOp_19model_9/batch_normalization_60/batchnorm/ReadVariableOp_12v
9model_9/batch_normalization_60/batchnorm/ReadVariableOp_29model_9/batch_normalization_60/batchnorm/ReadVariableOp_22z
;model_9/batch_normalization_60/batchnorm/mul/ReadVariableOp;model_9/batch_normalization_60/batchnorm/mul/ReadVariableOp2r
7model_9/batch_normalization_61/batchnorm/ReadVariableOp7model_9/batch_normalization_61/batchnorm/ReadVariableOp2v
9model_9/batch_normalization_61/batchnorm/ReadVariableOp_19model_9/batch_normalization_61/batchnorm/ReadVariableOp_12v
9model_9/batch_normalization_61/batchnorm/ReadVariableOp_29model_9/batch_normalization_61/batchnorm/ReadVariableOp_22z
;model_9/batch_normalization_61/batchnorm/mul/ReadVariableOp;model_9/batch_normalization_61/batchnorm/mul/ReadVariableOp2r
7model_9/batch_normalization_62/batchnorm/ReadVariableOp7model_9/batch_normalization_62/batchnorm/ReadVariableOp2v
9model_9/batch_normalization_62/batchnorm/ReadVariableOp_19model_9/batch_normalization_62/batchnorm/ReadVariableOp_12v
9model_9/batch_normalization_62/batchnorm/ReadVariableOp_29model_9/batch_normalization_62/batchnorm/ReadVariableOp_22z
;model_9/batch_normalization_62/batchnorm/mul/ReadVariableOp;model_9/batch_normalization_62/batchnorm/mul/ReadVariableOp2T
(model_9/conv2d_28/BiasAdd/ReadVariableOp(model_9/conv2d_28/BiasAdd/ReadVariableOp2R
'model_9/conv2d_28/Conv2D/ReadVariableOp'model_9/conv2d_28/Conv2D/ReadVariableOp2T
(model_9/conv2d_29/BiasAdd/ReadVariableOp(model_9/conv2d_29/BiasAdd/ReadVariableOp2R
'model_9/conv2d_29/Conv2D/ReadVariableOp'model_9/conv2d_29/Conv2D/ReadVariableOp2T
(model_9/conv2d_30/BiasAdd/ReadVariableOp(model_9/conv2d_30/BiasAdd/ReadVariableOp2R
'model_9/conv2d_30/Conv2D/ReadVariableOp'model_9/conv2d_30/Conv2D/ReadVariableOp2R
'model_9/dense_38/BiasAdd/ReadVariableOp'model_9/dense_38/BiasAdd/ReadVariableOp2P
&model_9/dense_38/MatMul/ReadVariableOp&model_9/dense_38/MatMul/ReadVariableOp2R
'model_9/dense_39/BiasAdd/ReadVariableOp'model_9/dense_39/BiasAdd/ReadVariableOp2P
&model_9/dense_39/MatMul/ReadVariableOp&model_9/dense_39/MatMul/ReadVariableOp2R
'model_9/dense_40/BiasAdd/ReadVariableOp'model_9/dense_40/BiasAdd/ReadVariableOp2P
&model_9/dense_40/MatMul/ReadVariableOp&model_9/dense_40/MatMul/ReadVariableOp2R
'model_9/dense_41/BiasAdd/ReadVariableOp'model_9/dense_41/BiasAdd/ReadVariableOp2P
&model_9/dense_41/MatMul/ReadVariableOp&model_9/dense_41/MatMul/ReadVariableOp:V R
,
_output_shapes
:����������
"
_user_specified_name
input_10: '

_output_shapes
:
�
�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490357

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488236

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�

�
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_1489168

inputs+
conv2d_28_1489074:@
conv2d_28_1489076:@,
batch_normalization_57_1489079:@,
batch_normalization_57_1489081:@,
batch_normalization_57_1489083:@,
batch_normalization_57_1489085:@+
conv2d_29_1489088:@@
conv2d_29_1489090:@,
batch_normalization_58_1489093:@,
batch_normalization_58_1489095:@,
batch_normalization_58_1489097:@,
batch_normalization_58_1489099:@+
conv2d_30_1489102:@@
conv2d_30_1489104:@,
batch_normalization_59_1489107:@,
batch_normalization_59_1489109:@,
batch_normalization_59_1489111:@,
batch_normalization_59_1489113:@$
dense_38_1489118:
��
dense_38_1489120:	�-
batch_normalization_60_1489123:	�-
batch_normalization_60_1489125:	�-
batch_normalization_60_1489127:	�-
batch_normalization_60_1489129:	�$
dense_39_1489132:
��
dense_39_1489134:	�-
batch_normalization_61_1489137:	�-
batch_normalization_61_1489139:	�-
batch_normalization_61_1489141:	�-
batch_normalization_61_1489143:	�#
dense_40_1489146:	�@
dense_40_1489148:@,
batch_normalization_62_1489151:@,
batch_normalization_62_1489153:@,
batch_normalization_62_1489155:@,
batch_normalization_62_1489157:@"
dense_41_1489160:@
dense_41_1489162:
tf_math_multiply_9_mul_y
identity��.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall� dense_38/StatefulPartitionedCall� dense_39/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCallj
tf.expand_dims_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_9/ExpandDims
ExpandDimsinputs(tf.expand_dims_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_9/ExpandDims:output:0conv2d_28_1489074conv2d_28_1489076*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_57_1489079batch_normalization_57_1489081batch_normalization_57_1489083batch_normalization_57_1489085*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1488236�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_29_1489088conv2d_29_1489090*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1488679�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_58_1489093batch_normalization_58_1489095batch_normalization_58_1489097batch_normalization_58_1489099*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488300�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0conv2d_30_1489102conv2d_30_1489104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1488705�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0batch_normalization_59_1489107batch_normalization_59_1489109batch_normalization_59_1489111batch_normalization_59_1489113*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488364�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1488384�
flatten_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_38_1489118dense_38_1489120*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_1488740�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0batch_normalization_60_1489123batch_normalization_60_1489125batch_normalization_60_1489127batch_normalization_60_1489129*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1488458�
 dense_39/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0dense_39_1489132dense_39_1489134*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0batch_normalization_61_1489137batch_normalization_61_1489139batch_normalization_61_1489141batch_normalization_61_1489143*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1488540�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0dense_40_1489146dense_40_1489148*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_1488792�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0batch_normalization_62_1489151batch_normalization_62_1489153batch_normalization_62_1489155batch_normalization_62_1489157*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1488622�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0dense_41_1489160dense_41_1489162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1488818�
tf.math.multiply_9/MulMul)dense_41/StatefulPartitionedCall:output:0tf_math_multiply_9_mul_y*
T0*'
_output_shapes
:���������i
IdentityIdentitytf.math.multiply_9/Mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: '

_output_shapes
:
�%
�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490696

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_1488727

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488364

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
E__inference_dense_38_layer_call_and_return_conditional_losses_1490416

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_28_layer_call_fn_1490138

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1488653x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_39_layer_call_fn_1490505

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_1488766p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_41_layer_call_and_return_conditional_losses_1490716

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490462

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1488333

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490293

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_58_layer_call_fn_1490244

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  @F 8� *\
fWRU
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1488269�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
B
input_106
serving_default_input_10:0����������F
tf.math.multiply_90
StatefulPartitionedCall:0���������tensorflow/serving/predict:ĩ
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,axis
	-gamma
.beta
/moving_mean
0moving_variance"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias"
_tf_keras_layer
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
saxis
	tgamma
ubeta
vmoving_mean
wmoving_variance"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
�
#0
$1
-2
.3
/4
05
76
87
A8
B9
C10
D11
K12
L13
U14
V15
W16
X17
k18
l19
t20
u21
v22
w23
~24
25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37"
trackable_list_wrapper
�
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
k12
l13
t14
u15
~16
17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_model_9_layer_call_fn_1488908
)__inference_model_9_layer_call_fn_1489704
)__inference_model_9_layer_call_fn_1489787
)__inference_model_9_layer_call_fn_1489332�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_model_9_layer_call_and_return_conditional_losses_1489937
D__inference_model_9_layer_call_and_return_conditional_losses_1490129
D__inference_model_9_layer_call_and_return_conditional_losses_1489431
D__inference_model_9_layer_call_and_return_conditional_losses_1489530�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�
capture_38B�
"__inference__wrapped_model_1488183input_10"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�beta_1
�beta_2

�decay
�learning_rate
	�iter#m�$m�-m�.m�7m�8m�Am�Bm�Km�Lm�Um�Vm�km�lm�tm�um�~m�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�#v�$v�-v�.v�7v�8v�Av�Bv�Kv�Lv�Uv�Vv�kv�lv�tv�uv�~v�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
"
_generic_user_object
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_28_layer_call_fn_1490138�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1490149�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@2conv2d_28/kernel
:@2conv2d_28/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_57_layer_call_fn_1490162
8__inference_batch_normalization_57_layer_call_fn_1490175�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490193
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490211�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_57/gamma
):'@2batch_normalization_57/beta
2:0@ (2"batch_normalization_57/moving_mean
6:4@ (2&batch_normalization_57/moving_variance
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_29_layer_call_fn_1490220�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1490231�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_29/kernel
:@2conv2d_29/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
A0
B1
C2
D3"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_58_layer_call_fn_1490244
8__inference_batch_normalization_58_layer_call_fn_1490257�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490275
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490293�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_58/gamma
):'@2batch_normalization_58/beta
2:0@ (2"batch_normalization_58/moving_mean
6:4@ (2&batch_normalization_58/moving_variance
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_30_layer_call_fn_1490302�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1490313�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_30/kernel
:@2conv2d_30/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_59_layer_call_fn_1490326
8__inference_batch_normalization_59_layer_call_fn_1490339�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490357
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490375�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_59/gamma
):'@2batch_normalization_59/beta
2:0@ (2"batch_normalization_59/moving_mean
6:4@ (2&batch_normalization_59/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_9_layer_call_fn_1490380�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1490385�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_9_layer_call_fn_1490390�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_9_layer_call_and_return_conditional_losses_1490396�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_38_layer_call_fn_1490405�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_38_layer_call_and_return_conditional_losses_1490416�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_38/kernel
:�2dense_38/bias
<
t0
u1
v2
w3"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_60_layer_call_fn_1490429
8__inference_batch_normalization_60_layer_call_fn_1490442�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490462
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490496�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_60/gamma
*:(�2batch_normalization_60/beta
3:1� (2"batch_normalization_60/moving_mean
7:5� (2&batch_normalization_60/moving_variance
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_39_layer_call_fn_1490505�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_39_layer_call_and_return_conditional_losses_1490516�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_39/kernel
:�2dense_39/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_61_layer_call_fn_1490529
8__inference_batch_normalization_61_layer_call_fn_1490542�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490562
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490596�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_61/gamma
*:(�2batch_normalization_61/beta
3:1� (2"batch_normalization_61/moving_mean
7:5� (2&batch_normalization_61/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_40_layer_call_fn_1490605�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_40_layer_call_and_return_conditional_losses_1490616�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_40/kernel
:@2dense_40/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_62_layer_call_fn_1490629
8__inference_batch_normalization_62_layer_call_fn_1490642�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490662
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490696�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_62/gamma
):'@2batch_normalization_62/beta
2:0@ (2"batch_normalization_62/moving_mean
6:4@ (2&batch_normalization_62/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_41_layer_call_fn_1490705�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_41_layer_call_and_return_conditional_losses_1490716�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_41/kernel
:2dense_41/bias
"
_generic_user_object
z
/0
01
C2
D3
W4
X5
v6
w7
�8
�9
�10
�11"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�
capture_38B�
)__inference_model_9_layer_call_fn_1488908input_10"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
)__inference_model_9_layer_call_fn_1489704inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
)__inference_model_9_layer_call_fn_1489787inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
)__inference_model_9_layer_call_fn_1489332input_10"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
D__inference_model_9_layer_call_and_return_conditional_losses_1489937inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
D__inference_model_9_layer_call_and_return_conditional_losses_1490129inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
D__inference_model_9_layer_call_and_return_conditional_losses_1489431input_10"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
�
�
capture_38B�
D__inference_model_9_layer_call_and_return_conditional_losses_1489530input_10"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
J
Constjtf.TrackableConstant
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
�
�
capture_38B�
%__inference_signature_wrapper_1489621input_10"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_38
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_28_layer_call_fn_1490138inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1490149inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_57_layer_call_fn_1490162inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_57_layer_call_fn_1490175inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490193inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490211inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_29_layer_call_fn_1490220inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1490231inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_58_layer_call_fn_1490244inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_58_layer_call_fn_1490257inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490275inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490293inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_30_layer_call_fn_1490302inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1490313inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_59_layer_call_fn_1490326inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_59_layer_call_fn_1490339inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490357inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490375inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_9_layer_call_fn_1490380inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1490385inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_flatten_9_layer_call_fn_1490390inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_9_layer_call_and_return_conditional_losses_1490396inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_38_layer_call_fn_1490405inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_38_layer_call_and_return_conditional_losses_1490416inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_60_layer_call_fn_1490429inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_60_layer_call_fn_1490442inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490462inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490496inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_39_layer_call_fn_1490505inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_39_layer_call_and_return_conditional_losses_1490516inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_61_layer_call_fn_1490529inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_61_layer_call_fn_1490542inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490562inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490596inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_40_layer_call_fn_1490605inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_40_layer_call_and_return_conditional_losses_1490616inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_62_layer_call_fn_1490629inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_62_layer_call_fn_1490642inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490662inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490696inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_41_layer_call_fn_1490705inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_41_layer_call_and_return_conditional_losses_1490716inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
/:-@2Adam/conv2d_28/kernel/m
!:@2Adam/conv2d_28/bias/m
/:-@2#Adam/batch_normalization_57/gamma/m
.:,@2"Adam/batch_normalization_57/beta/m
/:-@@2Adam/conv2d_29/kernel/m
!:@2Adam/conv2d_29/bias/m
/:-@2#Adam/batch_normalization_58/gamma/m
.:,@2"Adam/batch_normalization_58/beta/m
/:-@@2Adam/conv2d_30/kernel/m
!:@2Adam/conv2d_30/bias/m
/:-@2#Adam/batch_normalization_59/gamma/m
.:,@2"Adam/batch_normalization_59/beta/m
(:&
��2Adam/dense_38/kernel/m
!:�2Adam/dense_38/bias/m
0:.�2#Adam/batch_normalization_60/gamma/m
/:-�2"Adam/batch_normalization_60/beta/m
(:&
��2Adam/dense_39/kernel/m
!:�2Adam/dense_39/bias/m
0:.�2#Adam/batch_normalization_61/gamma/m
/:-�2"Adam/batch_normalization_61/beta/m
':%	�@2Adam/dense_40/kernel/m
 :@2Adam/dense_40/bias/m
/:-@2#Adam/batch_normalization_62/gamma/m
.:,@2"Adam/batch_normalization_62/beta/m
&:$@2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
/:-@2Adam/conv2d_28/kernel/v
!:@2Adam/conv2d_28/bias/v
/:-@2#Adam/batch_normalization_57/gamma/v
.:,@2"Adam/batch_normalization_57/beta/v
/:-@@2Adam/conv2d_29/kernel/v
!:@2Adam/conv2d_29/bias/v
/:-@2#Adam/batch_normalization_58/gamma/v
.:,@2"Adam/batch_normalization_58/beta/v
/:-@@2Adam/conv2d_30/kernel/v
!:@2Adam/conv2d_30/bias/v
/:-@2#Adam/batch_normalization_59/gamma/v
.:,@2"Adam/batch_normalization_59/beta/v
(:&
��2Adam/dense_38/kernel/v
!:�2Adam/dense_38/bias/v
0:.�2#Adam/batch_normalization_60/gamma/v
/:-�2"Adam/batch_normalization_60/beta/v
(:&
��2Adam/dense_39/kernel/v
!:�2Adam/dense_39/bias/v
0:.�2#Adam/batch_normalization_61/gamma/v
/:-�2"Adam/batch_normalization_61/beta/v
':%	�@2Adam/dense_40/kernel/v
 :@2Adam/dense_40/bias/v
/:-@2#Adam/batch_normalization_62/gamma/v
.:,@2"Adam/batch_normalization_62/beta/v
&:$@2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v�
"__inference__wrapped_model_1488183�4#$-./078ABCDKLUVWXklwtvu~�������������6�3
,�)
'�$
input_10����������
� "G�D
B
tf.math.multiply_9,�)
tf.math.multiply_9����������
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490193�-./0M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1490211�-./0M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_57_layer_call_fn_1490162�-./0M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_57_layer_call_fn_1490175�-./0M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490275�ABCDM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1490293�ABCDM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_58_layer_call_fn_1490244�ABCDM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_58_layer_call_fn_1490257�ABCDM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490357�UVWXM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1490375�UVWXM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_59_layer_call_fn_1490326�UVWXM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_59_layer_call_fn_1490339�UVWXM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490462dwtvu4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
S__inference_batch_normalization_60_layer_call_and_return_conditional_losses_1490496dvwtu4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
8__inference_batch_normalization_60_layer_call_fn_1490429Wwtvu4�1
*�'
!�
inputs����������
p 
� "������������
8__inference_batch_normalization_60_layer_call_fn_1490442Wvwtu4�1
*�'
!�
inputs����������
p
� "������������
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490562h����4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
S__inference_batch_normalization_61_layer_call_and_return_conditional_losses_1490596h����4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
8__inference_batch_normalization_61_layer_call_fn_1490529[����4�1
*�'
!�
inputs����������
p 
� "������������
8__inference_batch_normalization_61_layer_call_fn_1490542[����4�1
*�'
!�
inputs����������
p
� "������������
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490662f����3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
S__inference_batch_normalization_62_layer_call_and_return_conditional_losses_1490696f����3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� �
8__inference_batch_normalization_62_layer_call_fn_1490629Y����3�0
)�&
 �
inputs���������@
p 
� "����������@�
8__inference_batch_normalization_62_layer_call_fn_1490642Y����3�0
)�&
 �
inputs���������@
p
� "����������@�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1490149n#$8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������@
� �
+__inference_conv2d_28_layer_call_fn_1490138a#$8�5
.�+
)�&
inputs����������
� "!�����������@�
F__inference_conv2d_29_layer_call_and_return_conditional_losses_1490231n788�5
.�+
)�&
inputs����������@
� ".�+
$�!
0����������@
� �
+__inference_conv2d_29_layer_call_fn_1490220a788�5
.�+
)�&
inputs����������@
� "!�����������@�
F__inference_conv2d_30_layer_call_and_return_conditional_losses_1490313nKL8�5
.�+
)�&
inputs����������@
� ".�+
$�!
0����������@
� �
+__inference_conv2d_30_layer_call_fn_1490302aKL8�5
.�+
)�&
inputs����������@
� "!�����������@�
E__inference_dense_38_layer_call_and_return_conditional_losses_1490416^kl0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
*__inference_dense_38_layer_call_fn_1490405Qkl0�-
&�#
!�
inputs����������
� "������������
E__inference_dense_39_layer_call_and_return_conditional_losses_1490516^~0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
*__inference_dense_39_layer_call_fn_1490505Q~0�-
&�#
!�
inputs����������
� "������������
E__inference_dense_40_layer_call_and_return_conditional_losses_1490616_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� �
*__inference_dense_40_layer_call_fn_1490605R��0�-
&�#
!�
inputs����������
� "����������@�
E__inference_dense_41_layer_call_and_return_conditional_losses_1490716^��/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� 
*__inference_dense_41_layer_call_fn_1490705Q��/�,
%�"
 �
inputs���������@
� "�����������
F__inference_flatten_9_layer_call_and_return_conditional_losses_1490396a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� �
+__inference_flatten_9_layer_call_fn_1490390T7�4
-�*
(�%
inputs���������@
� "������������
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1490385�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_9_layer_call_fn_1490380�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
D__inference_model_9_layer_call_and_return_conditional_losses_1489431�4#$-./078ABCDKLUVWXklwtvu~�������������>�;
4�1
'�$
input_10����������
p 

 
� "%�"
�
0���������
� �
D__inference_model_9_layer_call_and_return_conditional_losses_1489530�4#$-./078ABCDKLUVWXklvwtu~�������������>�;
4�1
'�$
input_10����������
p

 
� "%�"
�
0���������
� �
D__inference_model_9_layer_call_and_return_conditional_losses_1489937�4#$-./078ABCDKLUVWXklwtvu~�������������<�9
2�/
%�"
inputs����������
p 

 
� "%�"
�
0���������
� �
D__inference_model_9_layer_call_and_return_conditional_losses_1490129�4#$-./078ABCDKLUVWXklvwtu~�������������<�9
2�/
%�"
inputs����������
p

 
� "%�"
�
0���������
� �
)__inference_model_9_layer_call_fn_1488908�4#$-./078ABCDKLUVWXklwtvu~�������������>�;
4�1
'�$
input_10����������
p 

 
� "�����������
)__inference_model_9_layer_call_fn_1489332�4#$-./078ABCDKLUVWXklvwtu~�������������>�;
4�1
'�$
input_10����������
p

 
� "�����������
)__inference_model_9_layer_call_fn_1489704�4#$-./078ABCDKLUVWXklwtvu~�������������<�9
2�/
%�"
inputs����������
p 

 
� "�����������
)__inference_model_9_layer_call_fn_1489787�4#$-./078ABCDKLUVWXklvwtu~�������������<�9
2�/
%�"
inputs����������
p

 
� "�����������
%__inference_signature_wrapper_1489621�4#$-./078ABCDKLUVWXklwtvu~�������������B�?
� 
8�5
3
input_10'�$
input_10����������"G�D
B
tf.math.multiply_9,�)
tf.math.multiply_9���������