��,
�$�$
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
�
AsString

input"T

output"
Ttype:
2		
"
	precisionint���������"

scientificbool( "
shortestbool( "
widthint���������"
fillstring 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.0.0-alpha02v1.12.0-9492-g2c319fb4158�!

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_1Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
Placeholder_3Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_4Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_5Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_6Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_7Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_8Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
h
Placeholder_9Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_10Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_11Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_12Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_13Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_14Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_15Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_16Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_17Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_18Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_19Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_20Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_21Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_22Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
i
Placeholder_23Placeholder*
shape:���������*
dtype0	*#
_output_shapes
:���������
Y
ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
g

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_1/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_1
ExpandDimsPlaceholder_1ExpandDims_1/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_2/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_2
ExpandDimsPlaceholder_2ExpandDims_2/dim*
T0*'
_output_shapes
:���������
[
ExpandDims_3/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_4/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_4
ExpandDimsPlaceholder_4ExpandDims_4/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_5/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_5
ExpandDimsPlaceholder_5ExpandDims_5/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_6/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_6
ExpandDimsPlaceholder_6ExpandDims_6/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_7/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_7
ExpandDimsPlaceholder_7ExpandDims_7/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_8/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_8
ExpandDimsPlaceholder_8ExpandDims_8/dim*
T0	*'
_output_shapes
:���������
[
ExpandDims_9/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
m
ExpandDims_9
ExpandDimsPlaceholder_9ExpandDims_9/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_10/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_10
ExpandDimsPlaceholder_10ExpandDims_10/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_11/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_11
ExpandDimsPlaceholder_11ExpandDims_11/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_12/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_12
ExpandDimsPlaceholder_12ExpandDims_12/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_13/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_13
ExpandDimsPlaceholder_13ExpandDims_13/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_14/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_14
ExpandDimsPlaceholder_14ExpandDims_14/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_15/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_15
ExpandDimsPlaceholder_15ExpandDims_15/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_16/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_16
ExpandDimsPlaceholder_16ExpandDims_16/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_17/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_17
ExpandDimsPlaceholder_17ExpandDims_17/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_18/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_18
ExpandDimsPlaceholder_18ExpandDims_18/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_19/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_19
ExpandDimsPlaceholder_19ExpandDims_19/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_20/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_20
ExpandDimsPlaceholder_20ExpandDims_20/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_21/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_21
ExpandDimsPlaceholder_21ExpandDims_21/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_22/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_22
ExpandDimsPlaceholder_22ExpandDims_22/dim*
T0	*'
_output_shapes
:���������
\
ExpandDims_23/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
p
ExpandDims_23
ExpandDimsPlaceholder_23ExpandDims_23/dim*
T0	*'
_output_shapes
:���������
�
Mlinear/linear_model/Allergies.Corn_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Allergies.Corn_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Allergies.Corn_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Allergies.Corn_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Allergies.Corn_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Allergies.Corn_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0Mlinear/linear_model/Allergies.Corn_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Allergies.Corn_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Allergies.Eggs_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Allergies.Eggs_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Allergies.Eggs_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0Mlinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/Allergies.Fish_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Allergies.Fish_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Allergies.Fish_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Allergies.Fish_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Allergies.Fish_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Allergies.Fish_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0Mlinear/linear_model/Allergies.Fish_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Allergies.Fish_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Plinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Initializer/zerosConst*Q
_classG
ECloc:@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0VarHandleOp*
shape
:*O
shared_name@>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
_linear/linear_model/Allergies.Gelatin_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
_output_shapes
: 
�
Elinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/AssignAssignVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0Plinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Initializer/zeros*Q
_classG
ECloc:@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0
�
Rlinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/Allergies.Milk_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Allergies.Milk_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Allergies.Milk_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Allergies.Milk_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Allergies.Milk_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Allergies.Milk_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0Mlinear/linear_model/Allergies.Milk_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Allergies.Milk_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/Allergies.None_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Allergies.None_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Allergies.None_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Allergies.None_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Allergies.None_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Allergies.None_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Allergies.None_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0Mlinear/linear_model/Allergies.None_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Allergies.None_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Plinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Initializer/zerosConst*Q
_classG
ECloc:@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0VarHandleOp*
shape
:*O
shared_name@>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
_linear/linear_model/Allergies.Peanuts_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
_output_shapes
: 
�
Elinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/AssignAssignVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0Plinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Initializer/zeros*Q
_classG
ECloc:@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0
�
Rlinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Llinear/linear_model/Allergies.Soy_indicator/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/Allergies.Soy_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
:linear/linear_model/Allergies.Soy_indicator/weights/part_0VarHandleOp*
shape
:*K
shared_name<:linear/linear_model/Allergies.Soy_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
[linear/linear_model/Allergies.Soy_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0*
_output_shapes
: 
�
Alinear/linear_model/Allergies.Soy_indicator/weights/part_0/AssignAssignVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0Llinear/linear_model/Allergies.Soy_indicator/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0
�
Nlinear/linear_model/Allergies.Soy_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Nlinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Initializer/zerosConst*O
_classE
CAloc:@linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
<linear/linear_model/Allergies.Wheat_indicator/weights/part_0VarHandleOp*
shape
:*M
shared_name><linear/linear_model/Allergies.Wheat_indicator/weights/part_0*O
_classE
CAloc:@linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
]linear/linear_model/Allergies.Wheat_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
_output_shapes
: 
�
Clinear/linear_model/Allergies.Wheat_indicator/weights/part_0/AssignAssignVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0Nlinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Initializer/zeros*O
_classE
CAloc:@linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0
�
Plinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0*O
_classE
CAloc:@linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
8linear/linear_model/BMI/weights/part_0/Initializer/zerosConst*9
_class/
-+loc:@linear/linear_model/BMI/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
&linear/linear_model/BMI/weights/part_0VarHandleOp*
shape
:*7
shared_name(&linear/linear_model/BMI/weights/part_0*9
_class/
-+loc:@linear/linear_model/BMI/weights/part_0*
dtype0*
_output_shapes
: 
�
Glinear/linear_model/BMI/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/BMI/weights/part_0*
_output_shapes
: 
�
-linear/linear_model/BMI/weights/part_0/AssignAssignVariableOp&linear/linear_model/BMI/weights/part_08linear/linear_model/BMI/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/BMI/weights/part_0*
dtype0
�
:linear/linear_model/BMI/weights/part_0/Read/ReadVariableOpReadVariableOp&linear/linear_model/BMI/weights/part_0*9
_class/
-+loc:@linear/linear_model/BMI/weights/part_0*
dtype0*
_output_shapes

:
�
Glinear/linear_model/Diabetes_indicator/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/Diabetes_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
5linear/linear_model/Diabetes_indicator/weights/part_0VarHandleOp*
shape
:*F
shared_name75linear/linear_model/Diabetes_indicator/weights/part_0*H
_class>
<:loc:@linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/Diabetes_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/Diabetes_indicator/weights/part_0*
_output_shapes
: 
�
<linear/linear_model/Diabetes_indicator/weights/part_0/AssignAssignVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0Glinear/linear_model/Diabetes_indicator/weights/part_0/Initializer/zeros*H
_class>
<:loc:@linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0
�
Ilinear/linear_model/Diabetes_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0*H
_class>
<:loc:@linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Klinear/linear_model/FoodType.Egg_indicator/weights/part_0/Initializer/zerosConst*L
_classB
@>loc:@linear/linear_model/FoodType.Egg_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
9linear/linear_model/FoodType.Egg_indicator/weights/part_0VarHandleOp*
shape
:*J
shared_name;9linear/linear_model/FoodType.Egg_indicator/weights/part_0*L
_classB
@>loc:@linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/FoodType.Egg_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0*
_output_shapes
: 
�
@linear/linear_model/FoodType.Egg_indicator/weights/part_0/AssignAssignVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0Klinear/linear_model/FoodType.Egg_indicator/weights/part_0/Initializer/zeros*L
_classB
@>loc:@linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0
�
Mlinear/linear_model/FoodType.Egg_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0*L
_classB
@>loc:@linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Ulinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Initializer/zerosConst*V
_classL
JHloc:@linear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
Clinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0VarHandleOp*
shape
:*T
shared_nameEClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*V
_classL
JHloc:@linear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
dlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
_output_shapes
: 
�
Jlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/AssignAssignVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0Ulinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Initializer/zeros*V
_classL
JHloc:@linear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0
�
Wlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Read/ReadVariableOpReadVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*V
_classL
JHloc:@linear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Olinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Initializer/zerosConst*P
_classF
DBloc:@linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
=linear/linear_model/FoodType.Seafood_indicator/weights/part_0VarHandleOp*
shape
:*N
shared_name?=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*P
_classF
DBloc:@linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
^linear/linear_model/FoodType.Seafood_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
_output_shapes
: 
�
Dlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/AssignAssignVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0Olinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Initializer/zeros*P
_classF
DBloc:@linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0
�
Qlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*P
_classF
DBloc:@linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/FoodType.Vegan_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/FoodType.Vegan_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/FoodType.Vegan_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0Mlinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Rlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Initializer/zerosConst*S
_classI
GEloc:@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0VarHandleOp*
shape
:*Q
shared_nameB@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*S
_classI
GEloc:@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
alinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
_output_shapes
: 
�
Glinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/AssignAssignVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0Rlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Initializer/zeros*S
_classI
GEloc:@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0
�
Tlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*S
_classI
GEloc:@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Llinear/linear_model/Likes.Chinese_indicator/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/Likes.Chinese_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
:linear/linear_model/Likes.Chinese_indicator/weights/part_0VarHandleOp*
shape
:*K
shared_name<:linear/linear_model/Likes.Chinese_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
[linear/linear_model/Likes.Chinese_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0*
_output_shapes
: 
�
Alinear/linear_model/Likes.Chinese_indicator/weights/part_0/AssignAssignVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0Llinear/linear_model/Likes.Chinese_indicator/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0
�
Nlinear/linear_model/Likes.Chinese_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Mlinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
;linear/linear_model/Likes.Lebanese_indicator/weights/part_0VarHandleOp*
shape
:*L
shared_name=;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
\linear/linear_model/Likes.Lebanese_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
_output_shapes
: 
�
Blinear/linear_model/Likes.Lebanese_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0Mlinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Initializer/zeros*N
_classD
B@loc:@linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0
�
Olinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*N
_classD
B@loc:@linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Rlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Initializer/zerosConst*S
_classI
GEloc:@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0VarHandleOp*
shape
:*Q
shared_nameB@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*S
_classI
GEloc:@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
alinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
_output_shapes
: 
�
Glinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/AssignAssignVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0Rlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Initializer/zeros*S
_classI
GEloc:@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0
�
Tlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*S
_classI
GEloc:@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Ilinear/linear_model/Likes.None_indicator/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/Likes.None_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
7linear/linear_model/Likes.None_indicator/weights/part_0VarHandleOp*
shape
:*H
shared_name97linear/linear_model/Likes.None_indicator/weights/part_0*J
_class@
><loc:@linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/Likes.None_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/Likes.None_indicator/weights/part_0*
_output_shapes
: 
�
>linear/linear_model/Likes.None_indicator/weights/part_0/AssignAssignVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0Ilinear/linear_model/Likes.None_indicator/weights/part_0/Initializer/zeros*J
_class@
><loc:@linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0
�
Klinear/linear_model/Likes.None_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0*J
_class@
><loc:@linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Llinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
:linear/linear_model/Likes.Punjabi_indicator/weights/part_0VarHandleOp*
shape
:*K
shared_name<:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
[linear/linear_model/Likes.Punjabi_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
_output_shapes
: 
�
Alinear/linear_model/Likes.Punjabi_indicator/weights/part_0/AssignAssignVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0Llinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0
�
Nlinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Ilinear/linear_model/Likes.Thai_indicator/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/Likes.Thai_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
7linear/linear_model/Likes.Thai_indicator/weights/part_0VarHandleOp*
shape
:*H
shared_name97linear/linear_model/Likes.Thai_indicator/weights/part_0*J
_class@
><loc:@linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/Likes.Thai_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/Likes.Thai_indicator/weights/part_0*
_output_shapes
: 
�
>linear/linear_model/Likes.Thai_indicator/weights/part_0/AssignAssignVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0Ilinear/linear_model/Likes.Thai_indicator/weights/part_0/Initializer/zeros*J
_class@
><loc:@linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0
�
Klinear/linear_model/Likes.Thai_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0*J
_class@
><loc:@linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Llinear/linear_model/Likes.Western_indicator/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/Likes.Western_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
:linear/linear_model/Likes.Western_indicator/weights/part_0VarHandleOp*
shape
:*K
shared_name<:linear/linear_model/Likes.Western_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
[linear/linear_model/Likes.Western_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/Likes.Western_indicator/weights/part_0*
_output_shapes
: 
�
Alinear/linear_model/Likes.Western_indicator/weights/part_0/AssignAssignVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0Llinear/linear_model/Likes.Western_indicator/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0
�
Nlinear/linear_model/Likes.Western_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0*M
_classC
A?loc:@linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
Plinear/linear_model/Taste.Preferences_indicator/weights/part_0/Initializer/zerosConst*Q
_classG
ECloc:@linear/linear_model/Taste.Preferences_indicator/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
>linear/linear_model/Taste.Preferences_indicator/weights/part_0VarHandleOp*
shape
:*O
shared_name@>linear/linear_model/Taste.Preferences_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0*
_output_shapes
: 
�
_linear/linear_model/Taste.Preferences_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0*
_output_shapes
: 
�
Elinear/linear_model/Taste.Preferences_indicator/weights/part_0/AssignAssignVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0Plinear/linear_model/Taste.Preferences_indicator/weights/part_0/Initializer/zeros*Q
_classG
ECloc:@linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0
�
Rlinear/linear_model/Taste.Preferences_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0*Q
_classG
ECloc:@linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
'linear/linear_model/bias_weights/part_0VarHandleOp*
shape:*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
: 
�
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
elinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/NotEqualNotEqualExpandDims_8clinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/valuesGatherNdExpandDims_8^linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/dense_shapeShapeExpandDims_8*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/range/startalinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/Sizehlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/one_hot\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/SumTlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Allergies.Corn_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Allergies.Corn_indicator/weightsIdentityClinear/linear_model/Allergies.Corn_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Reshape4linear/linear_model/Allergies.Corn_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/NotEqualNotEqualExpandDims_9clinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/valuesGatherNdExpandDims_9^linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/dense_shapeShapeExpandDims_9*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/range/startalinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/Sizehlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/one_hot\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/SumTlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Allergies.Eggs_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Allergies.Eggs_indicator/weightsIdentityClinear/linear_model/Allergies.Eggs_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Reshape4linear/linear_model/Allergies.Eggs_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/NotEqualNotEqualExpandDims_10clinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/valuesGatherNdExpandDims_10^linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/dense_shapeShapeExpandDims_10*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/range/startalinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/Sizehlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/one_hot\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/SumTlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Allergies.Fish_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Allergies.Fish_indicator/weightsIdentityClinear/linear_model/Allergies.Fish_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Reshape4linear/linear_model/Allergies.Fish_indicator/weights*
T0*'
_output_shapes
:���������
�
hlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/ignore_valueCasthlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/NotEqualNotEqualExpandDims_11flinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/indicesWhereblinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
`linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/valuesGatherNdExpandDims_11alinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/dense_shapeShapeExpandDims_11*
T0	*
out_type0	*
_output_shapes
:
�
hlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
glinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/rangeRangenlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/range/startglinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/Sizenlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/range/delta*
_output_shapes
:
�
jlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/ToInt64Casthlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
ulinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/ToInt64Casthlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
slinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
xlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2xlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/hash_tableulinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/ToInt64jlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/ToInt64*

Tout0	*	
Tin0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2xlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/hash_table`linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/valuesslinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
elinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SparseToDenseSparseToDensealinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/indiceselinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/to_sparse_input/dense_shapemlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/hash_table_Lookup/LookupTableFindV2elinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Qlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hotOneHotWlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SparseToDenseWlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/depthZlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/on_value[linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SumSumQlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/one_hot_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Olinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/ShapeShapeMlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Sum*
T0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_sliceStridedSliceOlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Shape]linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stack_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stack_1_linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Reshape/shapePackWlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/strided_sliceYlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Qlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/ReshapeReshapeMlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/SumWlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Flinear/linear_model/Allergies.Gelatin_indicator/weights/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear_model/Allergies.Gelatin_indicator/weightsIdentityFlinear/linear_model/Allergies.Gelatin_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/weighted_sumMatMulQlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Reshape7linear/linear_model/Allergies.Gelatin_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/NotEqualNotEqualExpandDims_15clinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/valuesGatherNdExpandDims_15^linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/dense_shapeShapeExpandDims_15*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/range/startalinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/Sizehlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/one_hot\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/SumTlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Allergies.Milk_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Allergies.Milk_indicator/weightsIdentityClinear/linear_model/Allergies.Milk_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Reshape4linear/linear_model/Allergies.Milk_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/NotEqualNotEqualExpandDims_16clinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/valuesGatherNdExpandDims_16^linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/dense_shapeShapeExpandDims_16*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/range/startalinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/Sizehlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Allergies.None_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/one_hot\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Allergies.None_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/SumTlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Allergies.None_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Allergies.None_indicator/weightsIdentityClinear/linear_model/Allergies.None_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Allergies.None_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/Reshape4linear/linear_model/Allergies.None_indicator/weights*
T0*'
_output_shapes
:���������
�
hlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/ignore_valueCasthlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
blinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/NotEqualNotEqualExpandDims_12flinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/indicesWhereblinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
`linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/valuesGatherNdExpandDims_12alinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/dense_shapeShapeExpandDims_12*
T0	*
out_type0	*
_output_shapes
:
�
hlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
glinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/rangeRangenlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/range/startglinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/Sizenlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/range/delta*
_output_shapes
:
�
jlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/ToInt64Casthlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
ulinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/ToInt64Casthlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
slinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
xlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2xlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/hash_tableulinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/ToInt64jlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/ToInt64*

Tout0	*	
Tin0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2xlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/hash_table`linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/valuesslinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
elinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SparseToDenseSparseToDensealinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/indiceselinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/to_sparse_input/dense_shapemlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/hash_table_Lookup/LookupTableFindV2elinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Qlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hotOneHotWlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SparseToDenseWlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/depthZlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/on_value[linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SumSumQlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/one_hot_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Olinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/ShapeShapeMlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Sum*
T0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_sliceStridedSliceOlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Shape]linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stack_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stack_1_linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Reshape/shapePackWlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/strided_sliceYlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Qlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/ReshapeReshapeMlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/SumWlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Flinear/linear_model/Allergies.Peanuts_indicator/weights/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear_model/Allergies.Peanuts_indicator/weightsIdentityFlinear/linear_model/Allergies.Peanuts_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/weighted_sumMatMulQlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Reshape7linear/linear_model/Allergies.Peanuts_indicator/weights*
T0*'
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/ignore_valueCastdlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
^linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/NotEqualNotEqualExpandDims_13blinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/indicesWhere^linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/valuesGatherNdExpandDims_13]linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/dense_shapeShapeExpandDims_13*
T0	*
out_type0	*
_output_shapes
:
�
`linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/rangeRangeflinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/range/start_linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/Sizeflinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/range/delta*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/ToInt64Cast`linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/ToInt64Cast`linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
klinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
plinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2plinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/hash_tablemlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/ToInt64blinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/ToInt64*

Tout0	*	
Tin0	
�
ilinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2plinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/hash_table\linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/valuesklinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
alinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SparseToDenseSparseToDense]linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/indicesalinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/to_sparse_input/dense_shapeilinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/hash_table_Lookup/LookupTableFindV2alinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Slinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hotOneHotSlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SparseToDenseSlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/depthVlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/on_valueWlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ilinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SumSumMlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/one_hot[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Klinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/ShapeShapeIlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Sum*
T0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/ShapeYlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stack[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Reshape/shapePackSlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/strided_sliceUlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/ReshapeReshapeIlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/SumSlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Blinear/linear_model/Allergies.Soy_indicator/weights/ReadVariableOpReadVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
3linear/linear_model/Allergies.Soy_indicator/weightsIdentityBlinear/linear_model/Allergies.Soy_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Rlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/weighted_sumMatMulMlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Reshape3linear/linear_model/Allergies.Soy_indicator/weights*
T0*'
_output_shapes
:���������
�
flinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
dlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/ignore_valueCastflinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
`linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/NotEqualNotEqualExpandDims_14dlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/indicesWhere`linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/valuesGatherNdExpandDims_14_linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
clinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/dense_shapeShapeExpandDims_14*
T0	*
out_type0	*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
clinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
jlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
jlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
dlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/rangeRangejlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/range/startclinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/Sizejlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/range/delta*
_output_shapes
:
�
flinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/ToInt64Castdlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
qlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/ToInt64Castdlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
tlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2tlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/hash_tableqlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/ToInt64flinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/ToInt64*

Tout0	*	
Tin0	
�
klinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2tlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/hash_table^linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/valuesolinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
clinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SparseToDenseSparseToDense_linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/indicesclinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/to_sparse_input/dense_shapeklinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/hash_table_Lookup/LookupTableFindV2clinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Olinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hotOneHotUlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SparseToDenseUlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/depthXlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/on_valueYlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Klinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SumSumOlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/one_hot]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Mlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/ShapeShapeKlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Sum*
T0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_sliceStridedSliceMlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Shape[linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stack]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stack_1]linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Reshape/shapePackUlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/strided_sliceWlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Olinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/ReshapeReshapeKlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/SumUlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Dlinear/linear_model/Allergies.Wheat_indicator/weights/ReadVariableOpReadVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
5linear/linear_model/Allergies.Wheat_indicator/weightsIdentityDlinear/linear_model/Allergies.Wheat_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Tlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/weighted_sumMatMulOlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Reshape5linear/linear_model/Allergies.Wheat_indicator/weights*
T0*'
_output_shapes
:���������
s
7linear/linear_model/linear_model/linear_model/BMI/ShapeShapeExpandDims_2*
T0*
_output_shapes
:
�
Elinear/linear_model/linear_model/linear_model/BMI/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Glinear/linear_model/linear_model/linear_model/BMI/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Glinear/linear_model/linear_model/linear_model/BMI/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
?linear/linear_model/linear_model/linear_model/BMI/strided_sliceStridedSlice7linear/linear_model/linear_model/linear_model/BMI/ShapeElinear/linear_model/linear_model/linear_model/BMI/strided_slice/stackGlinear/linear_model/linear_model/linear_model/BMI/strided_slice/stack_1Glinear/linear_model/linear_model/linear_model/BMI/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Alinear/linear_model/linear_model/linear_model/BMI/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
?linear/linear_model/linear_model/linear_model/BMI/Reshape/shapePack?linear/linear_model/linear_model/linear_model/BMI/strided_sliceAlinear/linear_model/linear_model/linear_model/BMI/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
9linear/linear_model/linear_model/linear_model/BMI/ReshapeReshapeExpandDims_2?linear/linear_model/linear_model/linear_model/BMI/Reshape/shape*
T0*'
_output_shapes
:���������
�
.linear/linear_model/BMI/weights/ReadVariableOpReadVariableOp&linear/linear_model/BMI/weights/part_0*
dtype0*
_output_shapes

:
�
linear/linear_model/BMI/weightsIdentity.linear/linear_model/BMI/weights/ReadVariableOp*
T0*
_output_shapes

:
�
>linear/linear_model/linear_model/linear_model/BMI/weighted_sumMatMul9linear/linear_model/linear_model/linear_model/BMI/Reshapelinear/linear_model/BMI/weights*
T0*'
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/ignore_valueCast_linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
Ylinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/NotEqualNotEqualExpandDims_1]linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
Xlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/indicesWhereYlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
Wlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/valuesGatherNdExpandDims_1Xlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/dense_shapeShapeExpandDims_1*
T0	*
out_type0	*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
Ulinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/rangeRange\linear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/range/startUlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/Size\linear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/range/delta*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/ToInt64CastVlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
clinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/ToInt64CastVlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
alinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
zlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2flinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/hash_tableclinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/ToInt64Xlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/ToInt64*

Tout0	*	
Tin0	
�
dlinear/linear_model/linear_model/linear_model/Diabetes_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2flinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/hash_tableWlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/valuesalinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
\linear/linear_model/linear_model/linear_model/Diabetes_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Diabetes_indicator/SparseToDenseSparseToDenseXlinear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/indices\linear/linear_model/linear_model/linear_model/Diabetes_indicator/to_sparse_input/dense_shapedlinear/linear_model/linear_model/linear_model/Diabetes_indicator/hash_table_Lookup/LookupTableFindV2\linear/linear_model/linear_model/linear_model/Diabetes_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Nlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Qlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Hlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hotOneHotNlinear/linear_model/linear_model/linear_model/Diabetes_indicator/SparseToDenseNlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/depthQlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/on_valueRlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Dlinear/linear_model/linear_model/linear_model/Diabetes_indicator/SumSumHlinear/linear_model/linear_model/linear_model/Diabetes_indicator/one_hotVlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Flinear/linear_model/linear_model/linear_model/Diabetes_indicator/ShapeShapeDlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Sum*
T0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/Diabetes_indicator/ShapeTlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stackVlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Diabetes_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Reshape/shapePackNlinear/linear_model/linear_model/linear_model/Diabetes_indicator/strided_slicePlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Hlinear/linear_model/linear_model/linear_model/Diabetes_indicator/ReshapeReshapeDlinear/linear_model/linear_model/linear_model/Diabetes_indicator/SumNlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
=linear/linear_model/Diabetes_indicator/weights/ReadVariableOpReadVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
.linear/linear_model/Diabetes_indicator/weightsIdentity=linear/linear_model/Diabetes_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Mlinear/linear_model/linear_model/linear_model/Diabetes_indicator/weighted_sumMatMulHlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Reshape.linear/linear_model/Diabetes_indicator/weights*
T0*'
_output_shapes
:���������
�
clinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
alinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/ignore_valueCastclinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
]linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/NotEqualNotEqualExpandDims_3alinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/indicesWhere]linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
[linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/valuesGatherNdExpandDims_3\linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/dense_shapeShapeExpandDims_3*
T0	*
out_type0	*
_output_shapes
:
�
^linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
dlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
dlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
^linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/rangeRangedlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/range/start]linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/Sizedlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/range/delta*
_output_shapes
:
�
`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/ToInt64Cast^linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
klinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/ToInt64Cast^linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
ilinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2nlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/hash_tableklinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/ToInt64`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/ToInt64*

Tout0	*	
Tin0	
�
hlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2nlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/hash_table[linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/valuesilinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SparseToDenseSparseToDense\linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/indices`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/to_sparse_input/dense_shapehlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/hash_table_Lookup/LookupTableFindV2`linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Rlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Llinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hotOneHotRlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SparseToDenseRlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/depthUlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/on_valueVlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
Zlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Hlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SumSumLlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/one_hotZlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Jlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/ShapeShapeHlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Sum*
T0*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Rlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_sliceStridedSliceJlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/ShapeXlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stackZlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stack_1Zlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Reshape/shapePackRlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/strided_sliceTlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/ReshapeReshapeHlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/SumRlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Alinear/linear_model/FoodType.Egg_indicator/weights/ReadVariableOpReadVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
2linear/linear_model/FoodType.Egg_indicator/weightsIdentityAlinear/linear_model/FoodType.Egg_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Qlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/weighted_sumMatMulLlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/Reshape2linear/linear_model/FoodType.Egg_indicator/weights*
T0*'
_output_shapes
:���������
�
mlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
klinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/ignore_valueCastmlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
glinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/NotEqualNotEqualExpandDims_4klinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
flinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/indicesWhereglinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/valuesGatherNdExpandDims_4flinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
jlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/dense_shapeShapeExpandDims_4*
T0	*
out_type0	*
_output_shapes
:
�
rlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
qlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
xlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
xlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/rangeRangexlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/range/startqlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/Sizexlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/range/delta*
_output_shapes
:
�
tlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/ToInt64Castrlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/ToInt64Castrlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
}linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2�linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/hash_tablelinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/ToInt64tlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/ToInt64*

Tout0	*	
Tin0	
�
rlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2�linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/hash_tableelinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/values}linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/SparseToDenseSparseToDenseflinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/indicesjlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/to_sparse_input/dense_shaperlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/hash_table_Lookup/LookupTableFindV2jlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
^linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
_linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hotOneHot\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/SparseToDense\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/depth_linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/on_value`linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Rlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/SumSumVlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/one_hotdlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/ShapeShapeRlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Sum*
T0*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Shapeblinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stackdlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
^linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Reshape/shapePack\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/strided_slice^linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/ReshapeReshapeRlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Sum\linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Klinear/linear_model/FoodType.NonVegetarian_indicator/weights/ReadVariableOpReadVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
<linear/linear_model/FoodType.NonVegetarian_indicator/weightsIdentityKlinear/linear_model/FoodType.NonVegetarian_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
[linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/weighted_sumMatMulVlinear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/Reshape<linear/linear_model/FoodType.NonVegetarian_indicator/weights*
T0*'
_output_shapes
:���������
�
glinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
elinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/ignore_valueCastglinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
alinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/NotEqualNotEqualExpandDims_5elinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
`linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/indicesWherealinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/valuesGatherNdExpandDims_5`linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/dense_shapeShapeExpandDims_5*
T0	*
out_type0	*
_output_shapes
:
�
flinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
elinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
llinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
llinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/rangeRangellinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/range/startelinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/Sizellinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/range/delta*
_output_shapes
:
�
hlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/ToInt64Castflinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
slinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/ToInt64Castflinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
qlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/hash_tableslinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/ToInt64hlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/ToInt64*

Tout0	*	
Tin0	
�
llinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/hash_table_linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/valuesqlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
dlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SparseToDenseSparseToDense`linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/indicesdlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/to_sparse_input/dense_shapellinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/hash_table_Lookup/LookupTableFindV2dlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hotOneHotVlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SparseToDenseVlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/depthYlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/on_valueZlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SumSumPlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/one_hot^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Nlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/ShapeShapeLlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Sum*
T0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Shape\linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stack^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stack_1^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Reshape/shapePackVlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/strided_sliceXlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/ReshapeReshapeLlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/SumVlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Elinear/linear_model/FoodType.Seafood_indicator/weights/ReadVariableOpReadVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
6linear/linear_model/FoodType.Seafood_indicator/weightsIdentityElinear/linear_model/FoodType.Seafood_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Ulinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/weighted_sumMatMulPlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/Reshape6linear/linear_model/FoodType.Seafood_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/NotEqualNotEqualExpandDims_6clinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/valuesGatherNdExpandDims_6^linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/dense_shapeShapeExpandDims_6*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/range/startalinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/Sizehlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SumSumNlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/one_hot\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/ShapeZlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/SumTlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/FoodType.Vegan_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/FoodType.Vegan_indicator/weightsIdentityClinear/linear_model/FoodType.Vegan_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/Reshape4linear/linear_model/FoodType.Vegan_indicator/weights*
T0*'
_output_shapes
:���������
�
jlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/ignore_valueCastjlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
dlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/NotEqualNotEqualExpandDims_7hlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
clinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/indicesWheredlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/valuesGatherNdExpandDims_7clinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
glinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/dense_shapeShapeExpandDims_7*
T0	*
out_type0	*
_output_shapes
:
�
llinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
klinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
llinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/rangeRangerlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/range/startklinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/Sizerlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/range/delta*
_output_shapes
:
�
nlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/ToInt64Castllinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/ToInt64Castllinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
wlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
|linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2|linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/hash_tableylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/ToInt64nlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/ToInt64*

Tout0	*	
Tin0	
�
olinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2|linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/hash_tableblinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/valueswlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
glinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SparseToDenseSparseToDenseclinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/indicesglinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/to_sparse_input/dense_shapeolinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/hash_table_Lookup/LookupTableFindV2glinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
]linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hotOneHotYlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SparseToDenseYlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/depth\linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/on_value]linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Olinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SumSumSlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/one_hotalinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Qlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/ShapeShapeOlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Sum*
T0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_sliceStridedSliceQlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Shape_linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stackalinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stack_1alinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Reshape/shapePackYlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/strided_slice[linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/ReshapeReshapeOlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/SumYlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Hlinear/linear_model/FoodType.Vegetarian_indicator/weights/ReadVariableOpReadVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/FoodType.Vegetarian_indicator/weightsIdentityHlinear/linear_model/FoodType.Vegetarian_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Xlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/weighted_sumMatMulSlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/Reshape9linear/linear_model/FoodType.Vegetarian_indicator/weights*
T0*'
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/ignore_valueCastdlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
^linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/NotEqualNotEqualExpandDims_17blinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/indicesWhere^linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/valuesGatherNdExpandDims_17]linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/dense_shapeShapeExpandDims_17*
T0	*
out_type0	*
_output_shapes
:
�
`linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/rangeRangeflinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/range/start_linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/Sizeflinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/range/delta*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
klinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
plinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2plinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/hash_tablemlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/ToInt64blinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/ToInt64*

Tout0	*	
Tin0	
�
ilinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2plinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/hash_table\linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/valuesklinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
alinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SparseToDenseSparseToDense]linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/indicesalinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/to_sparse_input/dense_shapeilinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/hash_table_Lookup/LookupTableFindV2alinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Slinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hotOneHotSlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SparseToDenseSlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/depthVlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/on_valueWlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ilinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SumSumMlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/one_hot[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Klinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/ShapeShapeIlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Sum*
T0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/ShapeYlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stack[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Reshape/shapePackSlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/strided_sliceUlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/ReshapeReshapeIlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/SumSlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Blinear/linear_model/Likes.Chinese_indicator/weights/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
3linear/linear_model/Likes.Chinese_indicator/weightsIdentityBlinear/linear_model/Likes.Chinese_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Rlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/weighted_sumMatMulMlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Reshape3linear/linear_model/Likes.Chinese_indicator/weights*
T0*'
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
clinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/ignore_valueCastelinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
_linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/NotEqualNotEqualExpandDims_18clinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/valuesGatherNdExpandDims_18^linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/dense_shapeShapeExpandDims_18*
T0	*
out_type0	*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/rangeRangehlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/range/startalinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/Sizehlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/range/delta*
_output_shapes
:
�
dlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/ToInt64Castblinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
olinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/ToInt64Castblinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2rlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/hash_tableolinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/ToInt64dlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/ToInt64*

Tout0	*	
Tin0	
�
jlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
blinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Tlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Xlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Nlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SumSumNlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/one_hot\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Llinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Sum*
T0*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Tlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/ShapeZlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/SumTlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Clinear/linear_model/Likes.Lebanese_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
4linear/linear_model/Likes.Lebanese_indicator/weightsIdentityClinear/linear_model/Likes.Lebanese_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Slinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Reshape4linear/linear_model/Likes.Lebanese_indicator/weights*
T0*'
_output_shapes
:���������
�
jlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/ignore_valueCastjlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
dlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/NotEqualNotEqualExpandDims_19hlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
clinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/indicesWheredlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
blinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/valuesGatherNdExpandDims_19clinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
glinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/dense_shapeShapeExpandDims_19*
T0	*
out_type0	*
_output_shapes
:
�
llinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
klinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
rlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
llinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/rangeRangerlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/range/startklinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/Sizerlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/range/delta*
_output_shapes
:
�
nlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/ToInt64Castllinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/ToInt64Castllinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
wlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
|linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2|linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/hash_tableylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/ToInt64nlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/ToInt64*

Tout0	*	
Tin0	
�
olinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2|linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/hash_tableblinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/valueswlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
glinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SparseToDenseSparseToDenseclinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/indicesglinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/to_sparse_input/dense_shapeolinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/hash_table_Lookup/LookupTableFindV2glinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
\linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
]linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hotOneHotYlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SparseToDenseYlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/depth\linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/on_value]linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Olinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SumSumSlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/one_hotalinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Qlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/ShapeShapeOlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Sum*
T0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
alinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_sliceStridedSliceQlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Shape_linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stackalinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stack_1alinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Reshape/shapePackYlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/strided_slice[linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/ReshapeReshapeOlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/SumYlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Hlinear/linear_model/Likes.Maharashtrian_indicator/weights/ReadVariableOpReadVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/Likes.Maharashtrian_indicator/weightsIdentityHlinear/linear_model/Likes.Maharashtrian_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Xlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/weighted_sumMatMulSlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Reshape9linear/linear_model/Likes.Maharashtrian_indicator/weights*
T0*'
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
_linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/ignore_valueCastalinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
[linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/NotEqualNotEqualExpandDims_22_linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
Zlinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/indicesWhere[linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
Ylinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/valuesGatherNdExpandDims_22Zlinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/dense_shapeShapeExpandDims_22*
T0	*
out_type0	*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/rangeRange`linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/range/startYlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/Size`linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/range/delta*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/ToInt64CastZlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
glinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/ToInt64CastZlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
elinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
jlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
~linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2jlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/hash_tableglinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/ToInt64\linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/ToInt64*

Tout0	*	
Tin0	
�
flinear/linear_model/linear_model/linear_model/Likes.None_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2jlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/hash_tableYlinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/valueselinear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
^linear/linear_model/linear_model/linear_model/Likes.None_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.None_indicator/SparseToDenseSparseToDenseZlinear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/indices^linear/linear_model/linear_model/linear_model/Likes.None_indicator/to_sparse_input/dense_shapeflinear/linear_model/linear_model/linear_model/Likes.None_indicator/hash_table_Lookup/LookupTableFindV2^linear/linear_model/linear_model/linear_model/Likes.None_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Plinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hotOneHotPlinear/linear_model/linear_model/linear_model/Likes.None_indicator/SparseToDensePlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/depthSlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/on_valueTlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
Xlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Flinear/linear_model/linear_model/linear_model/Likes.None_indicator/SumSumJlinear/linear_model/linear_model/linear_model/Likes.None_indicator/one_hotXlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Hlinear/linear_model/linear_model/linear_model/Likes.None_indicator/ShapeShapeFlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Sum*
T0*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_sliceStridedSliceHlinear/linear_model/linear_model/linear_model/Likes.None_indicator/ShapeVlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stackXlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stack_1Xlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.None_indicator/Reshape/shapePackPlinear/linear_model/linear_model/linear_model/Likes.None_indicator/strided_sliceRlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Likes.None_indicator/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/Likes.None_indicator/SumPlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
?linear/linear_model/Likes.None_indicator/weights/ReadVariableOpReadVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
0linear/linear_model/Likes.None_indicator/weightsIdentity?linear/linear_model/Likes.None_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Olinear/linear_model/linear_model/linear_model/Likes.None_indicator/weighted_sumMatMulJlinear/linear_model/linear_model/linear_model/Likes.None_indicator/Reshape0linear/linear_model/Likes.None_indicator/weights*
T0*'
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/ignore_valueCastdlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
^linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/NotEqualNotEqualExpandDims_20blinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/indicesWhere^linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/valuesGatherNdExpandDims_20]linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/dense_shapeShapeExpandDims_20*
T0	*
out_type0	*
_output_shapes
:
�
`linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/rangeRangeflinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/range/start_linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/Sizeflinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/range/delta*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
klinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
plinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2plinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/hash_tablemlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/ToInt64blinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/ToInt64*

Tout0	*	
Tin0	
�
ilinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2plinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/hash_table\linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/valuesklinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
alinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SparseToDenseSparseToDense]linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/indicesalinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/to_sparse_input/dense_shapeilinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/hash_table_Lookup/LookupTableFindV2alinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Slinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hotOneHotSlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SparseToDenseSlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/depthVlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/on_valueWlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ilinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SumSumMlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/one_hot[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Klinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/ShapeShapeIlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Sum*
T0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/ShapeYlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stack[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Reshape/shapePackSlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/strided_sliceUlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/ReshapeReshapeIlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/SumSlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Blinear/linear_model/Likes.Punjabi_indicator/weights/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
3linear/linear_model/Likes.Punjabi_indicator/weightsIdentityBlinear/linear_model/Likes.Punjabi_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Rlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/weighted_sumMatMulMlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Reshape3linear/linear_model/Likes.Punjabi_indicator/weights*
T0*'
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
_linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/ignore_valueCastalinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
[linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/NotEqualNotEqualExpandDims_23_linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
Zlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/indicesWhere[linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
Ylinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/valuesGatherNdExpandDims_23Zlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
^linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/dense_shapeShapeExpandDims_23*
T0	*
out_type0	*
_output_shapes
:
�
Zlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/rangeRange`linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/range/startYlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/Size`linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/range/delta*
_output_shapes
:
�
\linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/ToInt64CastZlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
glinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/ToInt64CastZlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
elinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
jlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
~linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2jlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/hash_tableglinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/ToInt64\linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/ToInt64*

Tout0	*	
Tin0	
�
flinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2jlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/hash_tableYlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/valueselinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
^linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SparseToDenseSparseToDenseZlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/indices^linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/to_sparse_input/dense_shapeflinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/hash_table_Lookup/LookupTableFindV2^linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Plinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Tlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hotOneHotPlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SparseToDensePlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/depthSlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/on_valueTlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
Xlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Flinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SumSumJlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/one_hotXlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Hlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/ShapeShapeFlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Sum*
T0*
_output_shapes
:
�
Vlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Xlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_sliceStridedSliceHlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/ShapeVlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stackXlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stack_1Xlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Rlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Plinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Reshape/shapePackPlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/strided_sliceRlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/SumPlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
?linear/linear_model/Likes.Thai_indicator/weights/ReadVariableOpReadVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
0linear/linear_model/Likes.Thai_indicator/weightsIdentity?linear/linear_model/Likes.Thai_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Olinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/weighted_sumMatMulJlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Reshape0linear/linear_model/Likes.Thai_indicator/weights*
T0*'
_output_shapes
:���������
�
dlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
blinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/ignore_valueCastdlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
^linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/NotEqualNotEqualExpandDims_21blinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
]linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/indicesWhere^linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
\linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/valuesGatherNdExpandDims_21]linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/dense_shapeShapeExpandDims_21*
T0	*
out_type0	*
_output_shapes
:
�
`linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
`linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/rangeRangeflinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/range/start_linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/Sizeflinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/range/delta*
_output_shapes
:
�
blinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
mlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/ToInt64Cast`linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
klinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
plinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2plinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/hash_tablemlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/ToInt64blinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/ToInt64*

Tout0	*	
Tin0	
�
ilinear/linear_model/linear_model/linear_model/Likes.Western_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2plinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/hash_table\linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/valuesklinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
alinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SparseToDenseSparseToDense]linear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/indicesalinear/linear_model/linear_model/linear_model/Likes.Western_indicator/to_sparse_input/dense_shapeilinear/linear_model/linear_model/linear_model/Likes.Western_indicator/hash_table_Lookup/LookupTableFindV2alinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Slinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hotOneHotSlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SparseToDenseSlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/depthVlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/on_valueWlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ilinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SumSumMlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/one_hot[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Klinear/linear_model/linear_model/linear_model/Likes.Western_indicator/ShapeShapeIlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Sum*
T0*
_output_shapes
:
�
Ylinear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Slinear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/ShapeYlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stack[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ulinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Reshape/shapePackSlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/strided_sliceUlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/ReshapeReshapeIlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/SumSlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Blinear/linear_model/Likes.Western_indicator/weights/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
3linear/linear_model/Likes.Western_indicator/weightsIdentityBlinear/linear_model/Likes.Western_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Rlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/weighted_sumMatMulMlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/Reshape3linear/linear_model/Likes.Western_indicator/weights*
T0*'
_output_shapes
:���������
�
hlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
flinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/ignore_valueCasthlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
�
blinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/NotEqualNotEqual
ExpandDimsflinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:���������
�
alinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/indicesWhereblinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
`linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/valuesGatherNd
ExpandDimsalinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
elinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/dense_shapeShape
ExpandDims*
T0	*
out_type0	*
_output_shapes
:
�
hlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
�
glinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
nlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
hlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/rangeRangenlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/range/startglinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/Sizenlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/range/delta*
_output_shapes
:
�
jlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/ToInt64Casthlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
ulinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/ToInt64Casthlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/Const*

SrcT0*
_output_shapes
:*

DstT0	
�
slinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
xlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0	*
_output_shapes
: 
�
�linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2xlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/hash_tableulinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/ToInt64jlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/ToInt64*

Tout0	*	
Tin0	
�
mlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2xlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/hash_table`linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/valuesslinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:���������*	
Tin0	
�
elinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SparseToDense/default_valueConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SparseToDenseSparseToDensealinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/indiceselinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/to_sparse_input/dense_shapemlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/hash_table_Lookup/LookupTableFindV2elinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:���������
�
Wlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
[linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Qlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hotOneHotWlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SparseToDenseWlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/depthZlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/on_value[linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot/off_value*
T0*+
_output_shapes
:���������
�
_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Sum/reduction_indicesConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Mlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SumSumQlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/one_hot_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
Olinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/ShapeShapeMlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Sum*
T0*
_output_shapes
:
�
]linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Wlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_sliceStridedSliceOlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Shape]linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stack_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stack_1_linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
�
Ylinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Wlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Reshape/shapePackWlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/strided_sliceYlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
�
Qlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/ReshapeReshapeMlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/SumWlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
�
Flinear/linear_model/Taste.Preferences_indicator/weights/ReadVariableOpReadVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear_model/Taste.Preferences_indicator/weightsIdentityFlinear/linear_model/Taste.Preferences_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Vlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/weighted_sumMatMulQlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Reshape7linear/linear_model/Taste.Preferences_indicator/weights*
T0*'
_output_shapes
:���������
�
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNSlinear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/weighted_sumVlinear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/Allergies.None_indicator/weighted_sumVlinear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/weighted_sumRlinear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/weighted_sumTlinear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/weighted_sum>linear/linear_model/linear_model/linear_model/BMI/weighted_sumMlinear/linear_model/linear_model/linear_model/Diabetes_indicator/weighted_sumQlinear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/weighted_sum[linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/weighted_sumUlinear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/weighted_sumXlinear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/weighted_sumRlinear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/weighted_sumXlinear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/weighted_sumOlinear/linear_model/linear_model/linear_model/Likes.None_indicator/weighted_sumRlinear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/weighted_sumOlinear/linear_model/linear_model/linear_model/Likes.Thai_indicator/weighted_sumRlinear/linear_model/linear_model/linear_model/Likes.Western_indicator/weighted_sumVlinear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/weighted_sum*
T0*
N*'
_output_shapes
:���������
�
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
�
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:���������
[
linear/bias/tagConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
�
!linear/bias/values/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
o
linear/bias/valuesPack!linear/bias/values/ReadVariableOp*
T0*
N*
_output_shapes

:
\
linear/biasHistogramSummarylinear/bias/taglinear/bias/values*
_output_shapes
: 
�
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0*
_output_shapes

:
f
$linear/zero_fraction/total_size/SizeConst*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_1Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_2Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_3Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_4Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_5Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_6Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_7Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_8Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
5linear/zero_fraction/total_size/Size_9/ReadVariableOpReadVariableOp&linear/linear_model/BMI/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_9Const*
value	B	 R*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_10/ReadVariableOpReadVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_10Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_11/ReadVariableOpReadVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_11Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_12/ReadVariableOpReadVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_12Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_13/ReadVariableOpReadVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_13Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_14/ReadVariableOpReadVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_14Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_15/ReadVariableOpReadVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_15Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_16/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_16Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_17/ReadVariableOpReadVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_17Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_18/ReadVariableOpReadVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_18Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_19/ReadVariableOpReadVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_19Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_20/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_20Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_21/ReadVariableOpReadVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_21Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_22/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_22Const*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
6linear/zero_fraction/total_size/Size_23/ReadVariableOpReadVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0*
_output_shapes

:
i
'linear/zero_fraction/total_size/Size_23Const*
value	B	 RD*
dtype0	*
_output_shapes
: 
�
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3&linear/zero_fraction/total_size/Size_4&linear/zero_fraction/total_size/Size_5&linear/zero_fraction/total_size/Size_6&linear/zero_fraction/total_size/Size_7&linear/zero_fraction/total_size/Size_8&linear/zero_fraction/total_size/Size_9'linear/zero_fraction/total_size/Size_10'linear/zero_fraction/total_size/Size_11'linear/zero_fraction/total_size/Size_12'linear/zero_fraction/total_size/Size_13'linear/zero_fraction/total_size/Size_14'linear/zero_fraction/total_size/Size_15'linear/zero_fraction/total_size/Size_16'linear/zero_fraction/total_size/Size_17'linear/zero_fraction/total_size/Size_18'linear/zero_fraction/total_size/Size_19'linear/zero_fraction/total_size/Size_20'linear/zero_fraction/total_size/Size_21'linear/zero_fraction/total_size/Size_22'linear/zero_fraction/total_size/Size_23*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
�
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 
�
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
�
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Allergies.Corn_indicator/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Allergies.Corn_indicator/weights/part_0*
_output_shapes
: : 
�
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
�
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
T0*
_output_shapes
: 
�
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Allergies.Eggs_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_2/SwitchSwitch'linear/zero_fraction/total_zero/Equal_2'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_2/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_2/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_2/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_2/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_2/pred_idIdentity'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_2/ConstConst6^linear/zero_fraction/total_zero/zero_count_2/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Allergies.Fish_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Allergies.Fish_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_2/ToFloatCast;linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_2/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_24linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_2*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_2/mulMulClinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_2/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_2/MergeMerge0linear/zero_fraction/total_zero/zero_count_2/mul2linear/zero_fraction/total_zero/zero_count_2/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_3Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_3/SwitchSwitch'linear/zero_fraction/total_zero/Equal_3'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_3/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_3/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_3/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_3/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_3/pred_idIdentity'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_3/ConstConst6^linear/zero_fraction/total_zero/zero_count_3/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/SwitchSwitch>linear/linear_model/Allergies.Gelatin_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0*Q
_classG
ECloc:@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_3/ToFloatCast;linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_3/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_34linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_3*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_3/mulMulClinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_3/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_3/MergeMerge0linear/zero_fraction/total_zero/zero_count_3/mul2linear/zero_fraction/total_zero/zero_count_3/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_4Equal&linear/zero_fraction/total_size/Size_4'linear/zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_4/SwitchSwitch'linear/zero_fraction/total_zero/Equal_4'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_4/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_4/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_4/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_4/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_4/pred_idIdentity'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_4/ConstConst6^linear/zero_fraction/total_zero/zero_count_4/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Allergies.Milk_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Allergies.Milk_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_4/ToFloatCast;linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_4/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_44linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_4*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_4/mulMulClinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_4/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_4/MergeMerge0linear/zero_fraction/total_zero/zero_count_4/mul2linear/zero_fraction/total_zero/zero_count_4/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_5Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_5Equal&linear/zero_fraction/total_size/Size_5'linear/zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_5/SwitchSwitch'linear/zero_fraction/total_zero/Equal_5'linear/zero_fraction/total_zero/Equal_5*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_5/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_5/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_5/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_5/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_5/pred_idIdentity'linear/zero_fraction/total_zero/Equal_5*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_5/ConstConst6^linear/zero_fraction/total_zero/zero_count_5/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Allergies.None_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_5/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Allergies.None_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_5/ToFloatCast;linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_5/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_54linear/zero_fraction/total_zero/zero_count_5/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_5*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_5/mulMulClinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_5/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_5/MergeMerge0linear/zero_fraction/total_zero/zero_count_5/mul2linear/zero_fraction/total_zero/zero_count_5/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_6Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_6Equal&linear/zero_fraction/total_size/Size_6'linear/zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_6/SwitchSwitch'linear/zero_fraction/total_zero/Equal_6'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_6/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_6/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_6/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_6/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_6/pred_idIdentity'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_6/ConstConst6^linear/zero_fraction/total_zero/zero_count_6/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/SwitchSwitch>linear/linear_model/Allergies.Peanuts_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0*Q
_classG
ECloc:@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_6/ToFloatCast;linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_6/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_64linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_6*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_6/mulMulClinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_6/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_6/MergeMerge0linear/zero_fraction/total_zero/zero_count_6/mul2linear/zero_fraction/total_zero/zero_count_6/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_7Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_7Equal&linear/zero_fraction/total_size/Size_7'linear/zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_7/SwitchSwitch'linear/zero_fraction/total_zero/Equal_7'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_7/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_7/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_7/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_7/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_7/pred_idIdentity'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_7/ConstConst6^linear/zero_fraction/total_zero/zero_count_7/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/SwitchSwitch:linear/linear_model/Allergies.Soy_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_7/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/Allergies.Soy_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_7/ToFloatCast;linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_7/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_74linear/zero_fraction/total_zero/zero_count_7/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_7*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_7/mulMulClinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_7/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_7/MergeMerge0linear/zero_fraction/total_zero/zero_count_7/mul2linear/zero_fraction/total_zero/zero_count_7/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_8Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_8Equal&linear/zero_fraction/total_size/Size_8'linear/zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_8/SwitchSwitch'linear/zero_fraction/total_zero/Equal_8'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_8/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_8/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_8/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_8/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_8/pred_idIdentity'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_8/ConstConst6^linear/zero_fraction/total_zero/zero_count_8/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/SwitchSwitch<linear/linear_model/Allergies.Wheat_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0*O
_classE
CAloc:@linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_8/ToFloatCast;linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_8/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_84linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_8*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_8/mulMulClinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_8/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_8/MergeMerge0linear/zero_fraction/total_zero/zero_count_8/mul2linear/zero_fraction/total_zero/zero_count_8/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_9Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'linear/zero_fraction/total_zero/Equal_9Equal&linear/zero_fraction/total_size/Size_9'linear/zero_fraction/total_zero/Const_9*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_9/SwitchSwitch'linear/zero_fraction/total_zero/Equal_9'linear/zero_fraction/total_zero/Equal_9*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_9/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_9/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_9/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_9/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_9/pred_idIdentity'linear/zero_fraction/total_zero/Equal_9*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_9/ConstConst6^linear/zero_fraction/total_zero/zero_count_9/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp/SwitchSwitch&linear/linear_model/BMI/weights/part_04linear/zero_fraction/total_zero/zero_count_9/pred_id*
T0*9
_class/
-+loc:@linear/linear_model/BMI/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_9/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_9/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_9/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_9/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_9/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_9/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_9/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_9/ToFloatCast;linear/zero_fraction/total_zero/zero_count_9/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_9/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_94linear/zero_fraction/total_zero/zero_count_9/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_9*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_9/mulMulClinear/zero_fraction/total_zero/zero_count_9/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_9/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_9/MergeMerge0linear/zero_fraction/total_zero/zero_count_9/mul2linear/zero_fraction/total_zero/zero_count_9/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_10Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_10Equal'linear/zero_fraction/total_size/Size_10(linear/zero_fraction/total_zero/Const_10*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_10/SwitchSwitch(linear/zero_fraction/total_zero/Equal_10(linear/zero_fraction/total_zero/Equal_10*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_10/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_10/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_10/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_10/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_10/pred_idIdentity(linear/zero_fraction/total_zero/Equal_10*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_10/ConstConst7^linear/zero_fraction/total_zero/zero_count_10/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp/SwitchSwitch5linear/linear_model/Diabetes_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_10/pred_id*
T0*H
_class>
<:loc:@linear/linear_model/Diabetes_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_10/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_10/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_10/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_10/ToFloatCast<linear/zero_fraction/total_zero/zero_count_10/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_10/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_105linear/zero_fraction/total_zero/zero_count_10/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_10*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_10/mulMulDlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_10/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_10/MergeMerge1linear/zero_fraction/total_zero/zero_count_10/mul3linear/zero_fraction/total_zero/zero_count_10/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_11Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_11Equal'linear/zero_fraction/total_size/Size_11(linear/zero_fraction/total_zero/Const_11*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_11/SwitchSwitch(linear/zero_fraction/total_zero/Equal_11(linear/zero_fraction/total_zero/Equal_11*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_11/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_11/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_11/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_11/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_11/pred_idIdentity(linear/zero_fraction/total_zero/Equal_11*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_11/ConstConst7^linear/zero_fraction/total_zero/zero_count_11/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp/SwitchSwitch9linear/linear_model/FoodType.Egg_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_11/pred_id*
T0*L
_classB
@>loc:@linear/linear_model/FoodType.Egg_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_11/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_11/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_11/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_11/ToFloatCast<linear/zero_fraction/total_zero/zero_count_11/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_11/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_115linear/zero_fraction/total_zero/zero_count_11/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_11*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_11/mulMulDlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_11/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_11/MergeMerge1linear/zero_fraction/total_zero/zero_count_11/mul3linear/zero_fraction/total_zero/zero_count_11/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_12Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_12Equal'linear/zero_fraction/total_size/Size_12(linear/zero_fraction/total_zero/Const_12*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_12/SwitchSwitch(linear/zero_fraction/total_zero/Equal_12(linear/zero_fraction/total_zero/Equal_12*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_12/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_12/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_12/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_12/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_12/pred_idIdentity(linear/zero_fraction/total_zero/Equal_12*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_12/ConstConst7^linear/zero_fraction/total_zero/zero_count_12/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp/SwitchSwitchClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_12/pred_id*
T0*V
_classL
JHloc:@linear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_12/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_12/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_12/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_12/ToFloatCast<linear/zero_fraction/total_zero/zero_count_12/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_12/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_125linear/zero_fraction/total_zero/zero_count_12/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_12*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_12/mulMulDlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_12/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_12/MergeMerge1linear/zero_fraction/total_zero/zero_count_12/mul3linear/zero_fraction/total_zero/zero_count_12/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_13Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_13Equal'linear/zero_fraction/total_size/Size_13(linear/zero_fraction/total_zero/Const_13*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_13/SwitchSwitch(linear/zero_fraction/total_zero/Equal_13(linear/zero_fraction/total_zero/Equal_13*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_13/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_13/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_13/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_13/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_13/pred_idIdentity(linear/zero_fraction/total_zero/Equal_13*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_13/ConstConst7^linear/zero_fraction/total_zero/zero_count_13/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp/SwitchSwitch=linear/linear_model/FoodType.Seafood_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_13/pred_id*
T0*P
_classF
DBloc:@linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_13/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_13/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_13/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_13/ToFloatCast<linear/zero_fraction/total_zero/zero_count_13/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_13/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_135linear/zero_fraction/total_zero/zero_count_13/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_13*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_13/mulMulDlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_13/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_13/MergeMerge1linear/zero_fraction/total_zero/zero_count_13/mul3linear/zero_fraction/total_zero/zero_count_13/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_14Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_14Equal'linear/zero_fraction/total_size/Size_14(linear/zero_fraction/total_zero/Const_14*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_14/SwitchSwitch(linear/zero_fraction/total_zero/Equal_14(linear/zero_fraction/total_zero/Equal_14*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_14/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_14/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_14/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_14/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_14/pred_idIdentity(linear/zero_fraction/total_zero/Equal_14*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_14/ConstConst7^linear/zero_fraction/total_zero/zero_count_14/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/FoodType.Vegan_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_14/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_14/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_14/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_14/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_14/ToFloatCast<linear/zero_fraction/total_zero/zero_count_14/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_14/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_145linear/zero_fraction/total_zero/zero_count_14/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_14*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_14/mulMulDlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_14/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_14/MergeMerge1linear/zero_fraction/total_zero/zero_count_14/mul3linear/zero_fraction/total_zero/zero_count_14/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_15Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_15Equal'linear/zero_fraction/total_size/Size_15(linear/zero_fraction/total_zero/Const_15*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_15/SwitchSwitch(linear/zero_fraction/total_zero/Equal_15(linear/zero_fraction/total_zero/Equal_15*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_15/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_15/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_15/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_15/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_15/pred_idIdentity(linear/zero_fraction/total_zero/Equal_15*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_15/ConstConst7^linear/zero_fraction/total_zero/zero_count_15/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp/SwitchSwitch@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_15/pred_id*
T0*S
_classI
GEloc:@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_15/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_15/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_15/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_15/ToFloatCast<linear/zero_fraction/total_zero/zero_count_15/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_15/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_155linear/zero_fraction/total_zero/zero_count_15/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_15*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_15/mulMulDlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_15/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_15/MergeMerge1linear/zero_fraction/total_zero/zero_count_15/mul3linear/zero_fraction/total_zero/zero_count_15/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_16Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_16Equal'linear/zero_fraction/total_size/Size_16(linear/zero_fraction/total_zero/Const_16*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_16/SwitchSwitch(linear/zero_fraction/total_zero/Equal_16(linear/zero_fraction/total_zero/Equal_16*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_16/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_16/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_16/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_16/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_16/pred_idIdentity(linear/zero_fraction/total_zero/Equal_16*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_16/ConstConst7^linear/zero_fraction/total_zero/zero_count_16/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp/SwitchSwitch:linear/linear_model/Likes.Chinese_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_16/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/Likes.Chinese_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_16/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_16/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_16/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_16/ToFloatCast<linear/zero_fraction/total_zero/zero_count_16/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_16/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_165linear/zero_fraction/total_zero/zero_count_16/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_16*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_16/mulMulDlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_16/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_16/MergeMerge1linear/zero_fraction/total_zero/zero_count_16/mul3linear/zero_fraction/total_zero/zero_count_16/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_17Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_17Equal'linear/zero_fraction/total_size/Size_17(linear/zero_fraction/total_zero/Const_17*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_17/SwitchSwitch(linear/zero_fraction/total_zero/Equal_17(linear/zero_fraction/total_zero/Equal_17*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_17/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_17/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_17/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_17/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_17/pred_idIdentity(linear/zero_fraction/total_zero/Equal_17*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_17/ConstConst7^linear/zero_fraction/total_zero/zero_count_17/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp/SwitchSwitch;linear/linear_model/Likes.Lebanese_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_17/pred_id*
T0*N
_classD
B@loc:@linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_17/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_17/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_17/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_17/ToFloatCast<linear/zero_fraction/total_zero/zero_count_17/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_17/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_175linear/zero_fraction/total_zero/zero_count_17/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_17*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_17/mulMulDlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_17/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_17/MergeMerge1linear/zero_fraction/total_zero/zero_count_17/mul3linear/zero_fraction/total_zero/zero_count_17/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_18Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_18Equal'linear/zero_fraction/total_size/Size_18(linear/zero_fraction/total_zero/Const_18*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_18/SwitchSwitch(linear/zero_fraction/total_zero/Equal_18(linear/zero_fraction/total_zero/Equal_18*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_18/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_18/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_18/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_18/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_18/pred_idIdentity(linear/zero_fraction/total_zero/Equal_18*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_18/ConstConst7^linear/zero_fraction/total_zero/zero_count_18/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp/SwitchSwitch@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_18/pred_id*
T0*S
_classI
GEloc:@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_18/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_18/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_18/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_18/ToFloatCast<linear/zero_fraction/total_zero/zero_count_18/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_18/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_185linear/zero_fraction/total_zero/zero_count_18/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_18*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_18/mulMulDlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_18/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_18/MergeMerge1linear/zero_fraction/total_zero/zero_count_18/mul3linear/zero_fraction/total_zero/zero_count_18/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_19Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_19Equal'linear/zero_fraction/total_size/Size_19(linear/zero_fraction/total_zero/Const_19*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_19/SwitchSwitch(linear/zero_fraction/total_zero/Equal_19(linear/zero_fraction/total_zero/Equal_19*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_19/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_19/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_19/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_19/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_19/pred_idIdentity(linear/zero_fraction/total_zero/Equal_19*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_19/ConstConst7^linear/zero_fraction/total_zero/zero_count_19/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp/SwitchSwitch7linear/linear_model/Likes.None_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_19/pred_id*
T0*J
_class@
><loc:@linear/linear_model/Likes.None_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_19/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_19/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_19/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_19/ToFloatCast<linear/zero_fraction/total_zero/zero_count_19/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_19/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_195linear/zero_fraction/total_zero/zero_count_19/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_19*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_19/mulMulDlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_19/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_19/MergeMerge1linear/zero_fraction/total_zero/zero_count_19/mul3linear/zero_fraction/total_zero/zero_count_19/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_20Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_20Equal'linear/zero_fraction/total_size/Size_20(linear/zero_fraction/total_zero/Const_20*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_20/SwitchSwitch(linear/zero_fraction/total_zero/Equal_20(linear/zero_fraction/total_zero/Equal_20*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_20/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_20/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_20/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_20/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_20/pred_idIdentity(linear/zero_fraction/total_zero/Equal_20*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_20/ConstConst7^linear/zero_fraction/total_zero/zero_count_20/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp/SwitchSwitch:linear/linear_model/Likes.Punjabi_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_20/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_20/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_20/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_20/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_20/ToFloatCast<linear/zero_fraction/total_zero/zero_count_20/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_20/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_205linear/zero_fraction/total_zero/zero_count_20/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_20*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_20/mulMulDlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_20/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_20/MergeMerge1linear/zero_fraction/total_zero/zero_count_20/mul3linear/zero_fraction/total_zero/zero_count_20/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_21Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_21Equal'linear/zero_fraction/total_size/Size_21(linear/zero_fraction/total_zero/Const_21*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_21/SwitchSwitch(linear/zero_fraction/total_zero/Equal_21(linear/zero_fraction/total_zero/Equal_21*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_21/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_21/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_21/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_21/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_21/pred_idIdentity(linear/zero_fraction/total_zero/Equal_21*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_21/ConstConst7^linear/zero_fraction/total_zero/zero_count_21/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp/SwitchSwitch7linear/linear_model/Likes.Thai_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_21/pred_id*
T0*J
_class@
><loc:@linear/linear_model/Likes.Thai_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_21/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_21/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_21/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_21/ToFloatCast<linear/zero_fraction/total_zero/zero_count_21/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_21/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_215linear/zero_fraction/total_zero/zero_count_21/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_21*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_21/mulMulDlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_21/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_21/MergeMerge1linear/zero_fraction/total_zero/zero_count_21/mul3linear/zero_fraction/total_zero/zero_count_21/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_22Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_22Equal'linear/zero_fraction/total_size/Size_22(linear/zero_fraction/total_zero/Const_22*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_22/SwitchSwitch(linear/zero_fraction/total_zero/Equal_22(linear/zero_fraction/total_zero/Equal_22*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_22/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_22/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_22/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_22/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_22/pred_idIdentity(linear/zero_fraction/total_zero/Equal_22*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_22/ConstConst7^linear/zero_fraction/total_zero/zero_count_22/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp/SwitchSwitch:linear/linear_model/Likes.Western_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_22/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/Likes.Western_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_22/switch_f*
value	B	 R"*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_22/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_22/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_22/ToFloatCast<linear/zero_fraction/total_zero/zero_count_22/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_22/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_225linear/zero_fraction/total_zero/zero_count_22/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_22*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_22/mulMulDlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_22/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_22/MergeMerge1linear/zero_fraction/total_zero/zero_count_22/mul3linear/zero_fraction/total_zero/zero_count_22/Const*
T0*
N*
_output_shapes
: : 
j
(linear/zero_fraction/total_zero/Const_23Const*
value	B	 R *
dtype0	*
_output_shapes
: 
�
(linear/zero_fraction/total_zero/Equal_23Equal'linear/zero_fraction/total_size/Size_23(linear/zero_fraction/total_zero/Const_23*
T0	*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_23/SwitchSwitch(linear/zero_fraction/total_zero/Equal_23(linear/zero_fraction/total_zero/Equal_23*
T0
*
_output_shapes
: : 
�
6linear/zero_fraction/total_zero/zero_count_23/switch_tIdentity6linear/zero_fraction/total_zero/zero_count_23/Switch:1*
T0
*
_output_shapes
: 
�
6linear/zero_fraction/total_zero/zero_count_23/switch_fIdentity4linear/zero_fraction/total_zero/zero_count_23/Switch*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_23/pred_idIdentity(linear/zero_fraction/total_zero/Equal_23*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_23/ConstConst7^linear/zero_fraction/total_zero/zero_count_23/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOpReadVariableOpQlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Qlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp/SwitchSwitch>linear/linear_model/Taste.Preferences_indicator/weights/part_05linear/zero_fraction/total_zero/zero_count_23/pred_id*
T0*Q
_classG
ECloc:@linear/linear_model/Taste.Preferences_indicator/weights/part_0*
_output_shapes
: : 
�
@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/SizeConst7^linear/zero_fraction/total_zero/zero_count_23/switch_f*
value	B	 RD*
dtype0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual/yConst7^linear/zero_fraction/total_zero/zero_count_23/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual	LessEqual@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/SizeGlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/SwitchSwitchElinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqualElinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Ilinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_tIdentityIlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_fIdentityGlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_idIdentityElinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/zerosConstJ^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Wlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Tlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Slinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/CastCastWlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/ConstConstJ^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
\linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/nonzero_countSumSlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/CastTlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/CastCast\linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/zerosConstJ^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ylinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchVlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchJlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOpHlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id*
T0*]
_classS
QOloc:@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Ulinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/CastCastYlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
�
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/ConstConstJ^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/nonzero_countSumUlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/CastVlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/MergeMerge^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/nonzero_countElinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Rlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/subSub@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/CastCastRlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/Cast_1Cast@linear/zero_fraction/total_zero/zero_count_23/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
�
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/truedivRealDivSlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/CastUlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/fractionIdentityVlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_23/ToFloatCast<linear/zero_fraction/total_zero/zero_count_23/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
�
<linear/zero_fraction/total_zero/zero_count_23/ToFloat/SwitchSwitch'linear/zero_fraction/total_size/Size_235linear/zero_fraction/total_zero/zero_count_23/pred_id*
T0	*:
_class0
.,loc:@linear/zero_fraction/total_size/Size_23*
_output_shapes
: : 
�
1linear/zero_fraction/total_zero/zero_count_23/mulMulDlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/fraction5linear/zero_fraction/total_zero/zero_count_23/ToFloat*
T0*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_23/MergeMerge1linear/zero_fraction/total_zero/zero_count_23/mul3linear/zero_fraction/total_zero/zero_count_23/Const*
T0*
N*
_output_shapes
: : 
�

$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge2linear/zero_fraction/total_zero/zero_count_2/Merge2linear/zero_fraction/total_zero/zero_count_3/Merge2linear/zero_fraction/total_zero/zero_count_4/Merge2linear/zero_fraction/total_zero/zero_count_5/Merge2linear/zero_fraction/total_zero/zero_count_6/Merge2linear/zero_fraction/total_zero/zero_count_7/Merge2linear/zero_fraction/total_zero/zero_count_8/Merge2linear/zero_fraction/total_zero/zero_count_9/Merge3linear/zero_fraction/total_zero/zero_count_10/Merge3linear/zero_fraction/total_zero/zero_count_11/Merge3linear/zero_fraction/total_zero/zero_count_12/Merge3linear/zero_fraction/total_zero/zero_count_13/Merge3linear/zero_fraction/total_zero/zero_count_14/Merge3linear/zero_fraction/total_zero/zero_count_15/Merge3linear/zero_fraction/total_zero/zero_count_16/Merge3linear/zero_fraction/total_zero/zero_count_17/Merge3linear/zero_fraction/total_zero/zero_count_18/Merge3linear/zero_fraction/total_zero/zero_count_19/Merge3linear/zero_fraction/total_zero/zero_count_20/Merge3linear/zero_fraction/total_zero/zero_count_21/Merge3linear/zero_fraction/total_zero/zero_count_22/Merge3linear/zero_fraction/total_zero/zero_count_23/Merge*
T0*
N*
_output_shapes
: 
�
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

SrcT0	*
_output_shapes
: *

DstT0
�
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 
�
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
�
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
�
linear/head/logits/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
v
+linear/head/predictions/class_ids/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
!linear/head/predictions/class_idsArgMax:linear/linear_model/linear_model/linear_model/weighted_sum+linear/head/predictions/class_ids/dimension*
T0*#
_output_shapes
:���������
q
&linear/head/predictions/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
"linear/head/predictions/ExpandDims
ExpandDims!linear/head/predictions/class_ids&linear/head/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:���������
�
#linear/head/predictions/str_classesAsString"linear/head/predictions/ExpandDims*
T0	*'
_output_shapes
:���������
�
%linear/head/predictions/probabilitiesSoftmax:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:���������
f
linear/head/ShapeShape%linear/head/predictions/probabilities*
T0*
_output_shapes
:
i
linear/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Y
linear/head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
linear/head/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Y
linear/head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/head/rangeRangelinear/head/range/startlinear/head/range/limitlinear/head/range/delta*
_output_shapes
:
X
linear/head/AsStringAsStringlinear/head/range*
T0*
_output_shapes
:
\
linear/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*
T0*
_output_shapes

:
^
linear/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
T0*
N*
_output_shapes
:
~
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*
T0*'
_output_shapes
:���������

initNoOp
�
init_all_tablesNoOp�^linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/table_init/LookupTableImportV2{^linear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/table_init/LookupTableImportV2^linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/table_init/LookupTableImportV2^linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/table_init/LookupTableImportV2�^linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/table_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
�
save/Read/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0*
dtype0*
_output_shapes

:
\
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes

:
b
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_1/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_2/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_3/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_4/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_5/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_6/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_7/ReadVariableOpReadVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_8/ReadVariableOpReadVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_9/ReadVariableOpReadVariableOp&linear/linear_model/BMI/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_10/ReadVariableOpReadVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_11/ReadVariableOpReadVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_12/ReadVariableOpReadVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_13/ReadVariableOpReadVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_14/ReadVariableOpReadVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_28Identitysave/Read_14/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_15/ReadVariableOpReadVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_16/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_17/ReadVariableOpReadVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_18/ReadVariableOpReadVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_36Identitysave/Read_18/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_19/ReadVariableOpReadVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_38Identitysave/Read_19/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_20/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_40Identitysave/Read_20/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_21/ReadVariableOpReadVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_42Identitysave/Read_21/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_22/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_44Identitysave/Read_22/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_23/ReadVariableOpReadVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_46Identitysave/Read_23/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:

save/Read_24/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
^
save/Identity_48Identitysave/Read_24/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes
:
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_73365e136bdf4e7583eb00f1d33cb2fe/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/Read_25/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_26/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_27/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_28/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_29/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_30/ReadVariableOpReadVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_31/ReadVariableOpReadVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_32/ReadVariableOpReadVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_33/ReadVariableOpReadVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_34/ReadVariableOpReadVariableOp&linear/linear_model/BMI/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_35/ReadVariableOpReadVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_36/ReadVariableOpReadVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_37/ReadVariableOpReadVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_38/ReadVariableOpReadVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_39/ReadVariableOpReadVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_40/ReadVariableOpReadVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_80Identitysave/Read_40/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_81Identitysave/Identity_80"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_41/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_82Identitysave/Read_41/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_83Identitysave/Identity_82"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_42/ReadVariableOpReadVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_84Identitysave/Read_42/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_85Identitysave/Identity_84"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_43/ReadVariableOpReadVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_86Identitysave/Read_43/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_87Identitysave/Identity_86"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_44/ReadVariableOpReadVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_88Identitysave/Read_44/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_89Identitysave/Identity_88"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_45/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_90Identitysave/Read_45/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_91Identitysave/Identity_90"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_46/ReadVariableOpReadVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_92Identitysave/Read_46/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_93Identitysave/Identity_92"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_47/ReadVariableOpReadVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_94Identitysave/Read_47/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_95Identitysave/Identity_94"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_48/ReadVariableOpReadVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_96Identitysave/Read_48/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_97Identitysave/Identity_96"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_49/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_98Identitysave/Read_49/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_99Identitysave/Identity_98"/device:CPU:0*
T0*
_output_shapes
:
�
save/SaveV2_1/tensor_namesConst"/device:CPU:0*�

value�
B�
B4linear/linear_model/Allergies.Corn_indicator/weightsB4linear/linear_model/Allergies.Eggs_indicator/weightsB4linear/linear_model/Allergies.Fish_indicator/weightsB7linear/linear_model/Allergies.Gelatin_indicator/weightsB4linear/linear_model/Allergies.Milk_indicator/weightsB4linear/linear_model/Allergies.None_indicator/weightsB7linear/linear_model/Allergies.Peanuts_indicator/weightsB3linear/linear_model/Allergies.Soy_indicator/weightsB5linear/linear_model/Allergies.Wheat_indicator/weightsBlinear/linear_model/BMI/weightsB.linear/linear_model/Diabetes_indicator/weightsB2linear/linear_model/FoodType.Egg_indicator/weightsB<linear/linear_model/FoodType.NonVegetarian_indicator/weightsB6linear/linear_model/FoodType.Seafood_indicator/weightsB4linear/linear_model/FoodType.Vegan_indicator/weightsB9linear/linear_model/FoodType.Vegetarian_indicator/weightsB3linear/linear_model/Likes.Chinese_indicator/weightsB4linear/linear_model/Likes.Lebanese_indicator/weightsB9linear/linear_model/Likes.Maharashtrian_indicator/weightsB0linear/linear_model/Likes.None_indicator/weightsB3linear/linear_model/Likes.Punjabi_indicator/weightsB0linear/linear_model/Likes.Thai_indicator/weightsB3linear/linear_model/Likes.Western_indicator/weightsB7linear/linear_model/Taste.Preferences_indicator/weightsB linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
�
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*�
value�B�B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B1 17 0,1:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B4 17 0,4:0,17B17 0,17*
dtype0*
_output_shapes
:
�
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79save/Identity_81save/Identity_83save/Identity_85save/Identity_87save/Identity_89save/Identity_91save/Identity_93save/Identity_95save/Identity_97save/Identity_99"/device:CPU:0*'
dtypes
2
�
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/Identity_100Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
�
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*�

value�
B�
B4linear/linear_model/Allergies.Corn_indicator/weightsB4linear/linear_model/Allergies.Eggs_indicator/weightsB4linear/linear_model/Allergies.Fish_indicator/weightsB7linear/linear_model/Allergies.Gelatin_indicator/weightsB4linear/linear_model/Allergies.Milk_indicator/weightsB4linear/linear_model/Allergies.None_indicator/weightsB7linear/linear_model/Allergies.Peanuts_indicator/weightsB3linear/linear_model/Allergies.Soy_indicator/weightsB5linear/linear_model/Allergies.Wheat_indicator/weightsBlinear/linear_model/BMI/weightsB.linear/linear_model/Diabetes_indicator/weightsB2linear/linear_model/FoodType.Egg_indicator/weightsB<linear/linear_model/FoodType.NonVegetarian_indicator/weightsB6linear/linear_model/FoodType.Seafood_indicator/weightsB4linear/linear_model/FoodType.Vegan_indicator/weightsB9linear/linear_model/FoodType.Vegetarian_indicator/weightsB3linear/linear_model/Likes.Chinese_indicator/weightsB4linear/linear_model/Likes.Lebanese_indicator/weightsB9linear/linear_model/Likes.Maharashtrian_indicator/weightsB0linear/linear_model/Likes.None_indicator/weightsB3linear/linear_model/Likes.Punjabi_indicator/weightsB0linear/linear_model/Likes.Thai_indicator/weightsB3linear/linear_model/Likes.Western_indicator/weightsB7linear/linear_model/Taste.Preferences_indicator/weightsB linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
�
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*�
value�B�B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B1 17 0,1:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B2 17 0,2:0,17B4 17 0,4:0,17B17 0,17*
dtype0*
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*'
dtypes
2*�
_output_shapes�
�:::::::::::::::::::::::::
g
save/Identity_101Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOpAssignVariableOp;linear/linear_model/Allergies.Corn_indicator/weights/part_0save/Identity_101"/device:CPU:0*
dtype0
i
save/Identity_102Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_1AssignVariableOp;linear/linear_model/Allergies.Eggs_indicator/weights/part_0save/Identity_102"/device:CPU:0*
dtype0
i
save/Identity_103Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_2AssignVariableOp;linear/linear_model/Allergies.Fish_indicator/weights/part_0save/Identity_103"/device:CPU:0*
dtype0
i
save/Identity_104Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_3AssignVariableOp>linear/linear_model/Allergies.Gelatin_indicator/weights/part_0save/Identity_104"/device:CPU:0*
dtype0
i
save/Identity_105Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_4AssignVariableOp;linear/linear_model/Allergies.Milk_indicator/weights/part_0save/Identity_105"/device:CPU:0*
dtype0
i
save/Identity_106Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_5AssignVariableOp;linear/linear_model/Allergies.None_indicator/weights/part_0save/Identity_106"/device:CPU:0*
dtype0
i
save/Identity_107Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_6AssignVariableOp>linear/linear_model/Allergies.Peanuts_indicator/weights/part_0save/Identity_107"/device:CPU:0*
dtype0
i
save/Identity_108Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_7AssignVariableOp:linear/linear_model/Allergies.Soy_indicator/weights/part_0save/Identity_108"/device:CPU:0*
dtype0
i
save/Identity_109Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_8AssignVariableOp<linear/linear_model/Allergies.Wheat_indicator/weights/part_0save/Identity_109"/device:CPU:0*
dtype0
i
save/Identity_110Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_9AssignVariableOp&linear/linear_model/BMI/weights/part_0save/Identity_110"/device:CPU:0*
dtype0
j
save/Identity_111Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_10AssignVariableOp5linear/linear_model/Diabetes_indicator/weights/part_0save/Identity_111"/device:CPU:0*
dtype0
j
save/Identity_112Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_11AssignVariableOp9linear/linear_model/FoodType.Egg_indicator/weights/part_0save/Identity_112"/device:CPU:0*
dtype0
j
save/Identity_113Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_12AssignVariableOpClinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0save/Identity_113"/device:CPU:0*
dtype0
j
save/Identity_114Identitysave/RestoreV2_1:13"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_13AssignVariableOp=linear/linear_model/FoodType.Seafood_indicator/weights/part_0save/Identity_114"/device:CPU:0*
dtype0
j
save/Identity_115Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_14AssignVariableOp;linear/linear_model/FoodType.Vegan_indicator/weights/part_0save/Identity_115"/device:CPU:0*
dtype0
j
save/Identity_116Identitysave/RestoreV2_1:15"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_15AssignVariableOp@linear/linear_model/FoodType.Vegetarian_indicator/weights/part_0save/Identity_116"/device:CPU:0*
dtype0
j
save/Identity_117Identitysave/RestoreV2_1:16"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_16AssignVariableOp:linear/linear_model/Likes.Chinese_indicator/weights/part_0save/Identity_117"/device:CPU:0*
dtype0
j
save/Identity_118Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_17AssignVariableOp;linear/linear_model/Likes.Lebanese_indicator/weights/part_0save/Identity_118"/device:CPU:0*
dtype0
j
save/Identity_119Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_18AssignVariableOp@linear/linear_model/Likes.Maharashtrian_indicator/weights/part_0save/Identity_119"/device:CPU:0*
dtype0
j
save/Identity_120Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_19AssignVariableOp7linear/linear_model/Likes.None_indicator/weights/part_0save/Identity_120"/device:CPU:0*
dtype0
j
save/Identity_121Identitysave/RestoreV2_1:20"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_20AssignVariableOp:linear/linear_model/Likes.Punjabi_indicator/weights/part_0save/Identity_121"/device:CPU:0*
dtype0
j
save/Identity_122Identitysave/RestoreV2_1:21"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_21AssignVariableOp7linear/linear_model/Likes.Thai_indicator/weights/part_0save/Identity_122"/device:CPU:0*
dtype0
j
save/Identity_123Identitysave/RestoreV2_1:22"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_22AssignVariableOp:linear/linear_model/Likes.Western_indicator/weights/part_0save/Identity_123"/device:CPU:0*
dtype0
j
save/Identity_124Identitysave/RestoreV2_1:23"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_23AssignVariableOp>linear/linear_model/Taste.Preferences_indicator/weights/part_0save/Identity_124"/device:CPU:0*
dtype0
f
save/Identity_125Identitysave/RestoreV2_1:24"/device:CPU:0*
T0*
_output_shapes
:
�
save/AssignVariableOp_24AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_125"/device:CPU:0*
dtype0
�
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"@
save/Const:0save/Identity_100:0save/restore_all (5 @F8"�G
trainable_variables�G�G
�
=linear/linear_model/Allergies.Corn_indicator/weights/part_0:0Blinear/linear_model/Allergies.Corn_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Corn_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Corn_indicator/weights  "(2Olinear/linear_model/Allergies.Corn_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Eggs_indicator/weights/part_0:0Blinear/linear_model/Allergies.Eggs_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Eggs_indicator/weights  "(2Olinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Fish_indicator/weights/part_0:0Blinear/linear_model/Allergies.Fish_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Fish_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Fish_indicator/weights  "(2Olinear/linear_model/Allergies.Fish_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0:0Elinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/AssignTlinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Allergies.Gelatin_indicator/weights  "(2Rlinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Milk_indicator/weights/part_0:0Blinear/linear_model/Allergies.Milk_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Milk_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Milk_indicator/weights  "(2Olinear/linear_model/Allergies.Milk_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.None_indicator/weights/part_0:0Blinear/linear_model/Allergies.None_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.None_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.None_indicator/weights  "(2Olinear/linear_model/Allergies.None_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0:0Elinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/AssignTlinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Allergies.Peanuts_indicator/weights  "(2Rlinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Allergies.Soy_indicator/weights/part_0:0Alinear/linear_model/Allergies.Soy_indicator/weights/part_0/AssignPlinear/linear_model/Allergies.Soy_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Allergies.Soy_indicator/weights  "(2Nlinear/linear_model/Allergies.Soy_indicator/weights/part_0/Initializer/zeros:08
�
>linear/linear_model/Allergies.Wheat_indicator/weights/part_0:0Clinear/linear_model/Allergies.Wheat_indicator/weights/part_0/AssignRlinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Read/ReadVariableOp:0"C
5linear/linear_model/Allergies.Wheat_indicator/weights  "(2Plinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Initializer/zeros:08
�
(linear/linear_model/BMI/weights/part_0:0-linear/linear_model/BMI/weights/part_0/Assign<linear/linear_model/BMI/weights/part_0/Read/ReadVariableOp:0"-
linear/linear_model/BMI/weights  "(2:linear/linear_model/BMI/weights/part_0/Initializer/zeros:08
�
7linear/linear_model/Diabetes_indicator/weights/part_0:0<linear/linear_model/Diabetes_indicator/weights/part_0/AssignKlinear/linear_model/Diabetes_indicator/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/Diabetes_indicator/weights  "(2Ilinear/linear_model/Diabetes_indicator/weights/part_0/Initializer/zeros:08
�
;linear/linear_model/FoodType.Egg_indicator/weights/part_0:0@linear/linear_model/FoodType.Egg_indicator/weights/part_0/AssignOlinear/linear_model/FoodType.Egg_indicator/weights/part_0/Read/ReadVariableOp:0"@
2linear/linear_model/FoodType.Egg_indicator/weights  "(2Mlinear/linear_model/FoodType.Egg_indicator/weights/part_0/Initializer/zeros:08
�
Elinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0:0Jlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/AssignYlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Read/ReadVariableOp:0"J
<linear/linear_model/FoodType.NonVegetarian_indicator/weights  "(2Wlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Initializer/zeros:08
�
?linear/linear_model/FoodType.Seafood_indicator/weights/part_0:0Dlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/AssignSlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Read/ReadVariableOp:0"D
6linear/linear_model/FoodType.Seafood_indicator/weights  "(2Qlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/FoodType.Vegan_indicator/weights/part_0:0Blinear/linear_model/FoodType.Vegan_indicator/weights/part_0/AssignQlinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/FoodType.Vegan_indicator/weights  "(2Olinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Initializer/zeros:08
�
Blinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0:0Glinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/AssignVlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Read/ReadVariableOp:0"G
9linear/linear_model/FoodType.Vegetarian_indicator/weights  "(2Tlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Chinese_indicator/weights/part_0:0Alinear/linear_model/Likes.Chinese_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Chinese_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Chinese_indicator/weights  "(2Nlinear/linear_model/Likes.Chinese_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Likes.Lebanese_indicator/weights/part_0:0Blinear/linear_model/Likes.Lebanese_indicator/weights/part_0/AssignQlinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Likes.Lebanese_indicator/weights  "(2Olinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Initializer/zeros:08
�
Blinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0:0Glinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/AssignVlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Read/ReadVariableOp:0"G
9linear/linear_model/Likes.Maharashtrian_indicator/weights  "(2Tlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Initializer/zeros:08
�
9linear/linear_model/Likes.None_indicator/weights/part_0:0>linear/linear_model/Likes.None_indicator/weights/part_0/AssignMlinear/linear_model/Likes.None_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/Likes.None_indicator/weights  "(2Klinear/linear_model/Likes.None_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Punjabi_indicator/weights/part_0:0Alinear/linear_model/Likes.Punjabi_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Punjabi_indicator/weights  "(2Nlinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Initializer/zeros:08
�
9linear/linear_model/Likes.Thai_indicator/weights/part_0:0>linear/linear_model/Likes.Thai_indicator/weights/part_0/AssignMlinear/linear_model/Likes.Thai_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/Likes.Thai_indicator/weights  "(2Klinear/linear_model/Likes.Thai_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Western_indicator/weights/part_0:0Alinear/linear_model/Likes.Western_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Western_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Western_indicator/weights  "(2Nlinear/linear_model/Likes.Western_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Taste.Preferences_indicator/weights/part_0:0Elinear/linear_model/Taste.Preferences_indicator/weights/part_0/AssignTlinear/linear_model/Taste.Preferences_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Taste.Preferences_indicator/weights  "(2Rlinear/linear_model/Taste.Preferences_indicator/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"�G
	variables�G�G
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
=linear/linear_model/Allergies.Corn_indicator/weights/part_0:0Blinear/linear_model/Allergies.Corn_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Corn_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Corn_indicator/weights  "(2Olinear/linear_model/Allergies.Corn_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Eggs_indicator/weights/part_0:0Blinear/linear_model/Allergies.Eggs_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Eggs_indicator/weights  "(2Olinear/linear_model/Allergies.Eggs_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Fish_indicator/weights/part_0:0Blinear/linear_model/Allergies.Fish_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Fish_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Fish_indicator/weights  "(2Olinear/linear_model/Allergies.Fish_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0:0Elinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/AssignTlinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Allergies.Gelatin_indicator/weights  "(2Rlinear/linear_model/Allergies.Gelatin_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.Milk_indicator/weights/part_0:0Blinear/linear_model/Allergies.Milk_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.Milk_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.Milk_indicator/weights  "(2Olinear/linear_model/Allergies.Milk_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Allergies.None_indicator/weights/part_0:0Blinear/linear_model/Allergies.None_indicator/weights/part_0/AssignQlinear/linear_model/Allergies.None_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Allergies.None_indicator/weights  "(2Olinear/linear_model/Allergies.None_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0:0Elinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/AssignTlinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Allergies.Peanuts_indicator/weights  "(2Rlinear/linear_model/Allergies.Peanuts_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Allergies.Soy_indicator/weights/part_0:0Alinear/linear_model/Allergies.Soy_indicator/weights/part_0/AssignPlinear/linear_model/Allergies.Soy_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Allergies.Soy_indicator/weights  "(2Nlinear/linear_model/Allergies.Soy_indicator/weights/part_0/Initializer/zeros:08
�
>linear/linear_model/Allergies.Wheat_indicator/weights/part_0:0Clinear/linear_model/Allergies.Wheat_indicator/weights/part_0/AssignRlinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Read/ReadVariableOp:0"C
5linear/linear_model/Allergies.Wheat_indicator/weights  "(2Plinear/linear_model/Allergies.Wheat_indicator/weights/part_0/Initializer/zeros:08
�
(linear/linear_model/BMI/weights/part_0:0-linear/linear_model/BMI/weights/part_0/Assign<linear/linear_model/BMI/weights/part_0/Read/ReadVariableOp:0"-
linear/linear_model/BMI/weights  "(2:linear/linear_model/BMI/weights/part_0/Initializer/zeros:08
�
7linear/linear_model/Diabetes_indicator/weights/part_0:0<linear/linear_model/Diabetes_indicator/weights/part_0/AssignKlinear/linear_model/Diabetes_indicator/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/Diabetes_indicator/weights  "(2Ilinear/linear_model/Diabetes_indicator/weights/part_0/Initializer/zeros:08
�
;linear/linear_model/FoodType.Egg_indicator/weights/part_0:0@linear/linear_model/FoodType.Egg_indicator/weights/part_0/AssignOlinear/linear_model/FoodType.Egg_indicator/weights/part_0/Read/ReadVariableOp:0"@
2linear/linear_model/FoodType.Egg_indicator/weights  "(2Mlinear/linear_model/FoodType.Egg_indicator/weights/part_0/Initializer/zeros:08
�
Elinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0:0Jlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/AssignYlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Read/ReadVariableOp:0"J
<linear/linear_model/FoodType.NonVegetarian_indicator/weights  "(2Wlinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0/Initializer/zeros:08
�
?linear/linear_model/FoodType.Seafood_indicator/weights/part_0:0Dlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/AssignSlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Read/ReadVariableOp:0"D
6linear/linear_model/FoodType.Seafood_indicator/weights  "(2Qlinear/linear_model/FoodType.Seafood_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/FoodType.Vegan_indicator/weights/part_0:0Blinear/linear_model/FoodType.Vegan_indicator/weights/part_0/AssignQlinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/FoodType.Vegan_indicator/weights  "(2Olinear/linear_model/FoodType.Vegan_indicator/weights/part_0/Initializer/zeros:08
�
Blinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0:0Glinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/AssignVlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Read/ReadVariableOp:0"G
9linear/linear_model/FoodType.Vegetarian_indicator/weights  "(2Tlinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Chinese_indicator/weights/part_0:0Alinear/linear_model/Likes.Chinese_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Chinese_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Chinese_indicator/weights  "(2Nlinear/linear_model/Likes.Chinese_indicator/weights/part_0/Initializer/zeros:08
�
=linear/linear_model/Likes.Lebanese_indicator/weights/part_0:0Blinear/linear_model/Likes.Lebanese_indicator/weights/part_0/AssignQlinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/Likes.Lebanese_indicator/weights  "(2Olinear/linear_model/Likes.Lebanese_indicator/weights/part_0/Initializer/zeros:08
�
Blinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0:0Glinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/AssignVlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Read/ReadVariableOp:0"G
9linear/linear_model/Likes.Maharashtrian_indicator/weights  "(2Tlinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0/Initializer/zeros:08
�
9linear/linear_model/Likes.None_indicator/weights/part_0:0>linear/linear_model/Likes.None_indicator/weights/part_0/AssignMlinear/linear_model/Likes.None_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/Likes.None_indicator/weights  "(2Klinear/linear_model/Likes.None_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Punjabi_indicator/weights/part_0:0Alinear/linear_model/Likes.Punjabi_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Punjabi_indicator/weights  "(2Nlinear/linear_model/Likes.Punjabi_indicator/weights/part_0/Initializer/zeros:08
�
9linear/linear_model/Likes.Thai_indicator/weights/part_0:0>linear/linear_model/Likes.Thai_indicator/weights/part_0/AssignMlinear/linear_model/Likes.Thai_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/Likes.Thai_indicator/weights  "(2Klinear/linear_model/Likes.Thai_indicator/weights/part_0/Initializer/zeros:08
�
<linear/linear_model/Likes.Western_indicator/weights/part_0:0Alinear/linear_model/Likes.Western_indicator/weights/part_0/AssignPlinear/linear_model/Likes.Western_indicator/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/Likes.Western_indicator/weights  "(2Nlinear/linear_model/Likes.Western_indicator/weights/part_0/Initializer/zeros:08
�
@linear/linear_model/Taste.Preferences_indicator/weights/part_0:0Elinear/linear_model/Taste.Preferences_indicator/weights/part_0/AssignTlinear/linear_model/Taste.Preferences_indicator/weights/part_0/Read/ReadVariableOp:0"E
7linear/linear_model/Taste.Preferences_indicator/weights  "(2Rlinear/linear_model/Taste.Preferences_indicator/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"�
table_initializer�
�
�linear/linear_model/linear_model/linear_model/Allergies.Corn_indicator/Allergies.Corn_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Eggs_indicator/Allergies.Eggs_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Fish_indicator/Allergies.Fish_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Gelatin_indicator/Allergies.Gelatin_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Milk_indicator/Allergies.Milk_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.None_indicator/Allergies.None_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Peanuts_indicator/Allergies.Peanuts_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Soy_indicator/Allergies.Soy_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Allergies.Wheat_indicator/Allergies.Wheat_lookup/hash_table/table_init/LookupTableImportV2
zlinear/linear_model/linear_model/linear_model/Diabetes_indicator/Diabetes_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/FoodType.Egg_indicator/FoodType.Egg_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/FoodType.NonVegetarian_indicator/FoodType.NonVegetarian_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/FoodType.Seafood_indicator/FoodType.Seafood_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/FoodType.Vegan_indicator/FoodType.Vegan_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/FoodType.Vegetarian_indicator/FoodType.Vegetarian_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Likes.Chinese_indicator/Likes.Chinese_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Likes.Lebanese_indicator/Likes.Lebanese_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Likes.Maharashtrian_indicator/Likes.Maharashtrian_lookup/hash_table/table_init/LookupTableImportV2
~linear/linear_model/linear_model/linear_model/Likes.None_indicator/Likes.None_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Likes.Punjabi_indicator/Likes.Punjabi_lookup/hash_table/table_init/LookupTableImportV2
~linear/linear_model/linear_model/linear_model/Likes.Thai_indicator/Likes.Thai_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Likes.Western_indicator/Likes.Western_lookup/hash_table/table_init/LookupTableImportV2
�linear/linear_model/linear_model/linear_model/Taste.Preferences_indicator/Taste.Preferences_lookup/hash_table/table_init/LookupTableImportV2"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"��	
cond_context��	��	
�
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *�
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
�/
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*�
=linear/linear_model/Allergies.Corn_indicator/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
4linear/zero_fraction/total_zero/zero_count/ToFloat:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0�
=linear/linear_model/Allergies.Corn_indicator/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:02�

�

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02�

�

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*�
=linear/linear_model/Allergies.Eggs_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_1/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0�
=linear/linear_model/Allergies.Eggs_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_2/cond_text6linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_2/Const:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_2/cond_text_16linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_f:0*�
=linear/linear_model/Allergies.Fish_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_2:0
=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_2/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_2/mul:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_2:0=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0�
=linear/linear_model/Allergies.Fish_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0�
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0�
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:12�

�

Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0�
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0�
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
�
6linear/zero_fraction/total_zero/zero_count_3/cond_text6linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_3/Const:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_3/cond_text_16linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_f:0*�
@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_3:0
=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_3/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_3/mul:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_3:0=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0�
@linear/linear_model/Allergies.Gelatin_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_4/cond_text6linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_4/Const:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_4/cond_text_16linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_f:0*�
=linear/linear_model/Allergies.Milk_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_4:0
=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_4/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_4/mul:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_4:0=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:0�
=linear/linear_model/Allergies.Milk_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:02�

�

Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_5/cond_text6linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_5/Const:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_5/cond_text_16linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_f:0*�
=linear/linear_model/Allergies.None_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_5:0
=linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_5/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_5/mul:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:0i
(linear/zero_fraction/total_size/Size_5:0=linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch:0�
=linear/linear_model/Allergies.None_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_6/cond_text6linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_6/Const:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_6/cond_text_16linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_f:0*�
@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_6:0
=linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_6/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_6/mul:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0�
@linear/linear_model/Allergies.Peanuts_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_6:0=linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_7/cond_text6linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_7/Const:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_7/cond_text_16linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_f:0*�
<linear/linear_model/Allergies.Soy_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_7:0
=linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_7/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_7/mul:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:0�
<linear/linear_model/Allergies.Soy_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_7:0=linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_8/cond_text6linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_8/Const:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_8/cond_text_16linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_f:0*�
>linear/linear_model/Allergies.Wheat_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_8:0
=linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_8/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_8/mul:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction:0�
>linear/linear_model/Allergies.Wheat_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0i
(linear/zero_fraction/total_size/Size_8:0=linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_9/cond_text6linear/zero_fraction/total_zero/zero_count_9/pred_id:07linear/zero_fraction/total_zero/zero_count_9/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_9/Const:0
6linear/zero_fraction/total_zero/zero_count_9/pred_id:0
7linear/zero_fraction/total_zero/zero_count_9/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_9/pred_id:06linear/zero_fraction/total_zero/zero_count_9/pred_id:0
�/
8linear/zero_fraction/total_zero/zero_count_9/cond_text_16linear/zero_fraction/total_zero/zero_count_9/pred_id:07linear/zero_fraction/total_zero/zero_count_9/switch_f:0*�
(linear/linear_model/BMI/weights/part_0:0
(linear/zero_fraction/total_size/Size_9:0
=linear/zero_fraction/total_zero/zero_count_9/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_9/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_9/mul:0
6linear/zero_fraction/total_zero/zero_count_9/pred_id:0
7linear/zero_fraction/total_zero/zero_count_9/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_9/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_9/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_9/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_9:0=linear/zero_fraction/total_zero/zero_count_9/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_9/pred_id:06linear/zero_fraction/total_zero/zero_count_9/pred_id:0~
(linear/linear_model/BMI/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_9/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_9/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_10/cond_text7linear/zero_fraction/total_zero/zero_count_10/pred_id:08linear/zero_fraction/total_zero/zero_count_10/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_10/Const:0
7linear/zero_fraction/total_zero/zero_count_10/pred_id:0
8linear/zero_fraction/total_zero/zero_count_10/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_10/pred_id:07linear/zero_fraction/total_zero/zero_count_10/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_10/cond_text_17linear/zero_fraction/total_zero/zero_count_10/pred_id:08linear/zero_fraction/total_zero/zero_count_10/switch_f:0*�
7linear/linear_model/Diabetes_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_10:0
>linear/zero_fraction/total_zero/zero_count_10/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_10/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_10/mul:0
7linear/zero_fraction/total_zero/zero_count_10/pred_id:0
8linear/zero_fraction/total_zero/zero_count_10/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_10/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_10/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_10/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_10:0>linear/zero_fraction/total_zero/zero_count_10/ToFloat/Switch:0r
7linear/zero_fraction/total_zero/zero_count_10/pred_id:07linear/zero_fraction/total_zero/zero_count_10/pred_id:0�
7linear/linear_model/Diabetes_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_10/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_10/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_11/cond_text7linear/zero_fraction/total_zero/zero_count_11/pred_id:08linear/zero_fraction/total_zero/zero_count_11/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_11/Const:0
7linear/zero_fraction/total_zero/zero_count_11/pred_id:0
8linear/zero_fraction/total_zero/zero_count_11/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_11/pred_id:07linear/zero_fraction/total_zero/zero_count_11/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_11/cond_text_17linear/zero_fraction/total_zero/zero_count_11/pred_id:08linear/zero_fraction/total_zero/zero_count_11/switch_f:0*�
;linear/linear_model/FoodType.Egg_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_11:0
>linear/zero_fraction/total_zero/zero_count_11/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_11/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_11/mul:0
7linear/zero_fraction/total_zero/zero_count_11/pred_id:0
8linear/zero_fraction/total_zero/zero_count_11/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_11/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_11/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_11/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_11:0>linear/zero_fraction/total_zero/zero_count_11/ToFloat/Switch:0�
;linear/linear_model/FoodType.Egg_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_11/pred_id:07linear/zero_fraction/total_zero/zero_count_11/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_t:0�
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0�
Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero/NotEqual/Switch:12�

�

Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/switch_f:0�
Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/pred_id:0�
Llinear/zero_fraction/total_zero/zero_count_11/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_11/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
�
7linear/zero_fraction/total_zero/zero_count_12/cond_text7linear/zero_fraction/total_zero/zero_count_12/pred_id:08linear/zero_fraction/total_zero/zero_count_12/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_12/Const:0
7linear/zero_fraction/total_zero/zero_count_12/pred_id:0
8linear/zero_fraction/total_zero/zero_count_12/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_12/pred_id:07linear/zero_fraction/total_zero/zero_count_12/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_12/cond_text_17linear/zero_fraction/total_zero/zero_count_12/pred_id:08linear/zero_fraction/total_zero/zero_count_12/switch_f:0*�
Elinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_12:0
>linear/zero_fraction/total_zero/zero_count_12/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_12/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_12/mul:0
7linear/zero_fraction/total_zero/zero_count_12/pred_id:0
8linear/zero_fraction/total_zero/zero_count_12/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_12/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_12/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_12/zero_fraction/fraction:0�
Elinear/linear_model/FoodType.NonVegetarian_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp/Switch:0k
)linear/zero_fraction/total_size/Size_12:0>linear/zero_fraction/total_zero/zero_count_12/ToFloat/Switch:0r
7linear/zero_fraction/total_zero/zero_count_12/pred_id:07linear/zero_fraction/total_zero/zero_count_12/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_12/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_12/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_13/cond_text7linear/zero_fraction/total_zero/zero_count_13/pred_id:08linear/zero_fraction/total_zero/zero_count_13/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_13/Const:0
7linear/zero_fraction/total_zero/zero_count_13/pred_id:0
8linear/zero_fraction/total_zero/zero_count_13/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_13/pred_id:07linear/zero_fraction/total_zero/zero_count_13/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_13/cond_text_17linear/zero_fraction/total_zero/zero_count_13/pred_id:08linear/zero_fraction/total_zero/zero_count_13/switch_f:0*�
?linear/linear_model/FoodType.Seafood_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_13:0
>linear/zero_fraction/total_zero/zero_count_13/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_13/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_13/mul:0
7linear/zero_fraction/total_zero/zero_count_13/pred_id:0
8linear/zero_fraction/total_zero/zero_count_13/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_13/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_13/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_13/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_13:0>linear/zero_fraction/total_zero/zero_count_13/ToFloat/Switch:0�
?linear/linear_model/FoodType.Seafood_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_13/pred_id:07linear/zero_fraction/total_zero/zero_count_13/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_13/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_13/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_14/cond_text7linear/zero_fraction/total_zero/zero_count_14/pred_id:08linear/zero_fraction/total_zero/zero_count_14/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_14/Const:0
7linear/zero_fraction/total_zero/zero_count_14/pred_id:0
8linear/zero_fraction/total_zero/zero_count_14/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_14/pred_id:07linear/zero_fraction/total_zero/zero_count_14/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_14/cond_text_17linear/zero_fraction/total_zero/zero_count_14/pred_id:08linear/zero_fraction/total_zero/zero_count_14/switch_f:0*�
=linear/linear_model/FoodType.Vegan_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_14:0
>linear/zero_fraction/total_zero/zero_count_14/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_14/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_14/mul:0
7linear/zero_fraction/total_zero/zero_count_14/pred_id:0
8linear/zero_fraction/total_zero/zero_count_14/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_14/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_14/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_14/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_14/pred_id:07linear/zero_fraction/total_zero/zero_count_14/pred_id:0k
)linear/zero_fraction/total_size/Size_14:0>linear/zero_fraction/total_zero/zero_count_14/ToFloat/Switch:0�
=linear/linear_model/FoodType.Vegan_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_14/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_14/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_15/cond_text7linear/zero_fraction/total_zero/zero_count_15/pred_id:08linear/zero_fraction/total_zero/zero_count_15/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_15/Const:0
7linear/zero_fraction/total_zero/zero_count_15/pred_id:0
8linear/zero_fraction/total_zero/zero_count_15/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_15/pred_id:07linear/zero_fraction/total_zero/zero_count_15/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_15/cond_text_17linear/zero_fraction/total_zero/zero_count_15/pred_id:08linear/zero_fraction/total_zero/zero_count_15/switch_f:0*�
Blinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_15:0
>linear/zero_fraction/total_zero/zero_count_15/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_15/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_15/mul:0
7linear/zero_fraction/total_zero/zero_count_15/pred_id:0
8linear/zero_fraction/total_zero/zero_count_15/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_15/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_15/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_15/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_15/pred_id:07linear/zero_fraction/total_zero/zero_count_15/pred_id:0k
)linear/zero_fraction/total_size/Size_15:0>linear/zero_fraction/total_zero/zero_count_15/ToFloat/Switch:0�
Blinear/linear_model/FoodType.Vegetarian_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_15/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_15/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_16/cond_text7linear/zero_fraction/total_zero/zero_count_16/pred_id:08linear/zero_fraction/total_zero/zero_count_16/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_16/Const:0
7linear/zero_fraction/total_zero/zero_count_16/pred_id:0
8linear/zero_fraction/total_zero/zero_count_16/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_16/pred_id:07linear/zero_fraction/total_zero/zero_count_16/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_16/cond_text_17linear/zero_fraction/total_zero/zero_count_16/pred_id:08linear/zero_fraction/total_zero/zero_count_16/switch_f:0*�
<linear/linear_model/Likes.Chinese_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_16:0
>linear/zero_fraction/total_zero/zero_count_16/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_16/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_16/mul:0
7linear/zero_fraction/total_zero/zero_count_16/pred_id:0
8linear/zero_fraction/total_zero/zero_count_16/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_16/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_16/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_16/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_16/pred_id:07linear/zero_fraction/total_zero/zero_count_16/pred_id:0�
<linear/linear_model/Likes.Chinese_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp/Switch:0k
)linear/zero_fraction/total_size/Size_16:0>linear/zero_fraction/total_zero/zero_count_16/ToFloat/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_16/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_16/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_17/cond_text7linear/zero_fraction/total_zero/zero_count_17/pred_id:08linear/zero_fraction/total_zero/zero_count_17/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_17/Const:0
7linear/zero_fraction/total_zero/zero_count_17/pred_id:0
8linear/zero_fraction/total_zero/zero_count_17/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_17/pred_id:07linear/zero_fraction/total_zero/zero_count_17/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_17/cond_text_17linear/zero_fraction/total_zero/zero_count_17/pred_id:08linear/zero_fraction/total_zero/zero_count_17/switch_f:0*�
=linear/linear_model/Likes.Lebanese_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_17:0
>linear/zero_fraction/total_zero/zero_count_17/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_17/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_17/mul:0
7linear/zero_fraction/total_zero/zero_count_17/pred_id:0
8linear/zero_fraction/total_zero/zero_count_17/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_17/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_17/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_17/zero_fraction/fraction:0�
=linear/linear_model/Likes.Lebanese_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_17/pred_id:07linear/zero_fraction/total_zero/zero_count_17/pred_id:0k
)linear/zero_fraction/total_size/Size_17:0>linear/zero_fraction/total_zero/zero_count_17/ToFloat/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_17/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_17/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_18/cond_text7linear/zero_fraction/total_zero/zero_count_18/pred_id:08linear/zero_fraction/total_zero/zero_count_18/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_18/Const:0
7linear/zero_fraction/total_zero/zero_count_18/pred_id:0
8linear/zero_fraction/total_zero/zero_count_18/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_18/pred_id:07linear/zero_fraction/total_zero/zero_count_18/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_18/cond_text_17linear/zero_fraction/total_zero/zero_count_18/pred_id:08linear/zero_fraction/total_zero/zero_count_18/switch_f:0*�
Blinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_18:0
>linear/zero_fraction/total_zero/zero_count_18/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_18/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_18/mul:0
7linear/zero_fraction/total_zero/zero_count_18/pred_id:0
8linear/zero_fraction/total_zero/zero_count_18/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_18/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_18/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_18/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_18:0>linear/zero_fraction/total_zero/zero_count_18/ToFloat/Switch:0�
Blinear/linear_model/Likes.Maharashtrian_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_18/pred_id:07linear/zero_fraction/total_zero/zero_count_18/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_18/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_18/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_19/cond_text7linear/zero_fraction/total_zero/zero_count_19/pred_id:08linear/zero_fraction/total_zero/zero_count_19/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_19/Const:0
7linear/zero_fraction/total_zero/zero_count_19/pred_id:0
8linear/zero_fraction/total_zero/zero_count_19/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_19/pred_id:07linear/zero_fraction/total_zero/zero_count_19/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_19/cond_text_17linear/zero_fraction/total_zero/zero_count_19/pred_id:08linear/zero_fraction/total_zero/zero_count_19/switch_f:0*�
9linear/linear_model/Likes.None_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_19:0
>linear/zero_fraction/total_zero/zero_count_19/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_19/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_19/mul:0
7linear/zero_fraction/total_zero/zero_count_19/pred_id:0
8linear/zero_fraction/total_zero/zero_count_19/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_19/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_19/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_19/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_19:0>linear/zero_fraction/total_zero/zero_count_19/ToFloat/Switch:0�
9linear/linear_model/Likes.None_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_19/pred_id:07linear/zero_fraction/total_zero/zero_count_19/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_t:0�
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0�
Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero/NotEqual/Switch:12�

�

Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/switch_f:0�
Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/pred_id:0�
Llinear/zero_fraction/total_zero/zero_count_19/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_19/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
�
7linear/zero_fraction/total_zero/zero_count_20/cond_text7linear/zero_fraction/total_zero/zero_count_20/pred_id:08linear/zero_fraction/total_zero/zero_count_20/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_20/Const:0
7linear/zero_fraction/total_zero/zero_count_20/pred_id:0
8linear/zero_fraction/total_zero/zero_count_20/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_20/pred_id:07linear/zero_fraction/total_zero/zero_count_20/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_20/cond_text_17linear/zero_fraction/total_zero/zero_count_20/pred_id:08linear/zero_fraction/total_zero/zero_count_20/switch_f:0*�
<linear/linear_model/Likes.Punjabi_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_20:0
>linear/zero_fraction/total_zero/zero_count_20/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_20/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_20/mul:0
7linear/zero_fraction/total_zero/zero_count_20/pred_id:0
8linear/zero_fraction/total_zero/zero_count_20/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_20/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_20/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_20/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_20/pred_id:07linear/zero_fraction/total_zero/zero_count_20/pred_id:0�
<linear/linear_model/Likes.Punjabi_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp/Switch:0k
)linear/zero_fraction/total_size/Size_20:0>linear/zero_fraction/total_zero/zero_count_20/ToFloat/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_20/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_20/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_21/cond_text7linear/zero_fraction/total_zero/zero_count_21/pred_id:08linear/zero_fraction/total_zero/zero_count_21/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_21/Const:0
7linear/zero_fraction/total_zero/zero_count_21/pred_id:0
8linear/zero_fraction/total_zero/zero_count_21/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_21/pred_id:07linear/zero_fraction/total_zero/zero_count_21/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_21/cond_text_17linear/zero_fraction/total_zero/zero_count_21/pred_id:08linear/zero_fraction/total_zero/zero_count_21/switch_f:0*�
9linear/linear_model/Likes.Thai_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_21:0
>linear/zero_fraction/total_zero/zero_count_21/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_21/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_21/mul:0
7linear/zero_fraction/total_zero/zero_count_21/pred_id:0
8linear/zero_fraction/total_zero/zero_count_21/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_21/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_21/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_21/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_21/pred_id:07linear/zero_fraction/total_zero/zero_count_21/pred_id:0�
9linear/linear_model/Likes.Thai_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp/Switch:0k
)linear/zero_fraction/total_size/Size_21:0>linear/zero_fraction/total_zero/zero_count_21/ToFloat/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_21/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_21/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_22/cond_text7linear/zero_fraction/total_zero/zero_count_22/pred_id:08linear/zero_fraction/total_zero/zero_count_22/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_22/Const:0
7linear/zero_fraction/total_zero/zero_count_22/pred_id:0
8linear/zero_fraction/total_zero/zero_count_22/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_22/pred_id:07linear/zero_fraction/total_zero/zero_count_22/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_22/cond_text_17linear/zero_fraction/total_zero/zero_count_22/pred_id:08linear/zero_fraction/total_zero/zero_count_22/switch_f:0*�
<linear/linear_model/Likes.Western_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_22:0
>linear/zero_fraction/total_zero/zero_count_22/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_22/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_22/mul:0
7linear/zero_fraction/total_zero/zero_count_22/pred_id:0
8linear/zero_fraction/total_zero/zero_count_22/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_22/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_22/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_22/zero_fraction/fraction:0r
7linear/zero_fraction/total_zero/zero_count_22/pred_id:07linear/zero_fraction/total_zero/zero_count_22/pred_id:0�
<linear/linear_model/Likes.Western_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp/Switch:0k
)linear/zero_fraction/total_size/Size_22:0>linear/zero_fraction/total_zero/zero_count_22/ToFloat/Switch:02�
�
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_22/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_22/zero_fraction/cond/pred_id:0
�
7linear/zero_fraction/total_zero/zero_count_23/cond_text7linear/zero_fraction/total_zero/zero_count_23/pred_id:08linear/zero_fraction/total_zero/zero_count_23/switch_t:0 *�
5linear/zero_fraction/total_zero/zero_count_23/Const:0
7linear/zero_fraction/total_zero/zero_count_23/pred_id:0
8linear/zero_fraction/total_zero/zero_count_23/switch_t:0r
7linear/zero_fraction/total_zero/zero_count_23/pred_id:07linear/zero_fraction/total_zero/zero_count_23/pred_id:0
�0
9linear/zero_fraction/total_zero/zero_count_23/cond_text_17linear/zero_fraction/total_zero/zero_count_23/pred_id:08linear/zero_fraction/total_zero/zero_count_23/switch_f:0*�
@linear/linear_model/Taste.Preferences_indicator/weights/part_0:0
)linear/zero_fraction/total_size/Size_23:0
>linear/zero_fraction/total_zero/zero_count_23/ToFloat/Switch:0
7linear/zero_fraction/total_zero/zero_count_23/ToFloat:0
3linear/zero_fraction/total_zero/zero_count_23/mul:0
7linear/zero_fraction/total_zero/zero_count_23/pred_id:0
8linear/zero_fraction/total_zero/zero_count_23/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual/y:0
Glinear/zero_fraction/total_zero/zero_count_23/zero_fraction/LessEqual:0
Slinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp/Switch:0
Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp:0
Blinear/zero_fraction/total_zero/zero_count_23/zero_fraction/Size:0
Glinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Cast:0
Hlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Merge:0
Hlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Merge:1
Ilinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Switch:1
Ulinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/zeros:0
Wlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_f:0
Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_t:0
Ulinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/Cast_1:0
Tlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/sub:0
Xlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/counts_to_fraction/truediv:0
Flinear/zero_fraction/total_zero/zero_count_23/zero_fraction/fraction:0k
)linear/zero_fraction/total_size/Size_23:0>linear/zero_fraction/total_zero/zero_count_23/ToFloat/Switch:0�
@linear/linear_model/Taste.Preferences_indicator/weights/part_0:0Slinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp/Switch:0r
7linear/zero_fraction/total_zero/zero_count_23/pred_id:07linear/zero_fraction/total_zero/zero_count_23/pred_id:02�
�
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/cond_textJlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_t:0 *�	
Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp:0
Glinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/Const:0
`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ylinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual:0
^linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/nonzero_count:0
Vlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_t:0�
Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp:0`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:02�

�

Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/cond_text_1Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_f:0*�
Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp:0
Wlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/Cast:0
Xlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/Const:0
blinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
[linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual:0
`linear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Xlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/zeros:0
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0
Klinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/switch_f:0�
Llinear/zero_fraction/total_zero/zero_count_23/zero_fraction/ReadVariableOp:0blinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_23/zero_fraction/cond/pred_id:0"%
saved_model_main_op


group_deps*�
predict�
5
Taste.Preferences 
Placeholder:0	���������
<
FoodType.NonVegetarian"
Placeholder_4:0	���������
6
Allergies.Wheat#
Placeholder_14:0	���������
4
Likes.Western#
Placeholder_21:0	���������
4
Likes.Punjabi#
Placeholder_20:0	���������
6
FoodType.Seafood"
Placeholder_5:0	���������
5
Allergies.Fish#
Placeholder_10:0	���������
8
Allergies.Gelatin#
Placeholder_11:0	���������
9
FoodType.Vegetarian"
Placeholder_7:0	���������
1

Likes.None#
Placeholder_22:0	���������
1

Likes.Thai#
Placeholder_23:0	���������
4
Likes.Chinese#
Placeholder_17:0	���������
5
Allergies.Milk#
Placeholder_15:0	���������
2
FoodType.Egg"
Placeholder_3:0	���������
)
BMI"
Placeholder_2:0���������
:
Likes.Maharashtrian#
Placeholder_19:0	���������
.
Diabetes"
Placeholder_1:0	���������
4
Allergies.Eggs"
Placeholder_9:0	���������
4
Allergies.Corn"
Placeholder_8:0	���������
4
Allergies.Soy#
Placeholder_13:0	���������
5
Allergies.None#
Placeholder_16:0	���������
8
Allergies.Peanuts#
Placeholder_12:0	���������
5
Likes.Lebanese#
Placeholder_18:0	���������
4
FoodType.Vegan"
Placeholder_6:0	���������H
	class_ids;
$linear/head/predictions/ExpandDims:0	���������O
probabilities>
'linear/head/predictions/probabilities:0���������G
classes<
%linear/head/predictions/str_classes:0���������]
logitsS
<linear/linear_model/linear_model/linear_model/weighted_sum:0���������tensorflow/serving/predict