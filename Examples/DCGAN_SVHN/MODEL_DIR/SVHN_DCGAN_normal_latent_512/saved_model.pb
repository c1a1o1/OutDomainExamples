ŇĎ
ëÂ
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"
data_formatstringNHWC"
is_trainingbool(
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
ö
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
*	1.9.0-rc02b'v1.8.0-3033-ga6a265b'8ĺé
p
PlaceholderPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.G/dense/kernel/Initializer/random_normal/shapeConst*
valueB"      *!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
:

-G/dense/kernel/Initializer/random_normal/meanConst*
valueB
 *    *!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
: 

/G/dense/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
: 
ŕ
=G/dense/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.G/dense/kernel/Initializer/random_normal/shape*
T0*!
_class
loc:@G/dense/kernel*
dtype0* 
_output_shapes
:
 
ń
,G/dense/kernel/Initializer/random_normal/mulMul=G/dense/kernel/Initializer/random_normal/RandomStandardNormal/G/dense/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@G/dense/kernel* 
_output_shapes
:
 
Ú
(G/dense/kernel/Initializer/random_normalAdd,G/dense/kernel/Initializer/random_normal/mul-G/dense/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@G/dense/kernel* 
_output_shapes
:
 

G/dense/kernelVarHandleOp*!
_class
loc:@G/dense/kernel*
shape:
 *
dtype0*
_output_shapes
: *
shared_nameG/dense/kernel
m
/G/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/dense/kernel*
_output_shapes
: 

G/dense/kernel/AssignAssignVariableOpG/dense/kernel(G/dense/kernel/Initializer/random_normal*!
_class
loc:@G/dense/kernel*
dtype0

"G/dense/kernel/Read/ReadVariableOpReadVariableOpG/dense/kernel*!
_class
loc:@G/dense/kernel*
dtype0* 
_output_shapes
:
 

.G/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB: *
_class
loc:@G/dense/bias*
dtype0*
_output_shapes
:

$G/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@G/dense/bias*
dtype0*
_output_shapes
: 
Ă
G/dense/bias/Initializer/zerosFill.G/dense/bias/Initializer/zeros/shape_as_tensor$G/dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@G/dense/bias*
_output_shapes	
: 

G/dense/biasVarHandleOp*
_class
loc:@G/dense/bias*
shape: *
dtype0*
_output_shapes
: *
shared_nameG/dense/bias
i
-G/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/dense/bias*
_output_shapes
: 

G/dense/bias/AssignAssignVariableOpG/dense/biasG/dense/bias/Initializer/zeros*
_class
loc:@G/dense/bias*
dtype0

 G/dense/bias/Read/ReadVariableOpReadVariableOpG/dense/bias*
_class
loc:@G/dense/bias*
dtype0*
_output_shapes	
: 
n
G/dense/MatMul/ReadVariableOpReadVariableOpG/dense/kernel*
dtype0* 
_output_shapes
:
 
w
G/dense/MatMulMatMulPlaceholderG/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
h
G/dense/BiasAdd/ReadVariableOpReadVariableOpG/dense/bias*
dtype0*
_output_shapes	
: 
}
G/dense/BiasAddBiasAddG/dense/MatMulG/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
X
G/dense/ReluReluG/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
h
G/Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
n
	G/ReshapeReshapeG/dense/ReluG/Reshape/shape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
9G/conv2d_transpose/kernel/Initializer/random_normal/shapeConst*%
valueB"            *,
_class"
 loc:@G/conv2d_transpose/kernel*
dtype0*
_output_shapes
:
Ť
8G/conv2d_transpose/kernel/Initializer/random_normal/meanConst*
valueB
 *    *,
_class"
 loc:@G/conv2d_transpose/kernel*
dtype0*
_output_shapes
: 
­
:G/conv2d_transpose/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*,
_class"
 loc:@G/conv2d_transpose/kernel*
dtype0*
_output_shapes
: 

HG/conv2d_transpose/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal9G/conv2d_transpose/kernel/Initializer/random_normal/shape*
dtype0*(
_output_shapes
:*
T0*,
_class"
 loc:@G/conv2d_transpose/kernel
Ľ
7G/conv2d_transpose/kernel/Initializer/random_normal/mulMulHG/conv2d_transpose/kernel/Initializer/random_normal/RandomStandardNormal:G/conv2d_transpose/kernel/Initializer/random_normal/stddev*
T0*,
_class"
 loc:@G/conv2d_transpose/kernel*(
_output_shapes
:

3G/conv2d_transpose/kernel/Initializer/random_normalAdd7G/conv2d_transpose/kernel/Initializer/random_normal/mul8G/conv2d_transpose/kernel/Initializer/random_normal/mean*
T0*,
_class"
 loc:@G/conv2d_transpose/kernel*(
_output_shapes
:
Ć
G/conv2d_transpose/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nameG/conv2d_transpose/kernel*,
_class"
 loc:@G/conv2d_transpose/kernel

:G/conv2d_transpose/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose/kernel*
_output_shapes
: 
ż
 G/conv2d_transpose/kernel/AssignAssignVariableOpG/conv2d_transpose/kernel3G/conv2d_transpose/kernel/Initializer/random_normal*,
_class"
 loc:@G/conv2d_transpose/kernel*
dtype0
ż
-G/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpG/conv2d_transpose/kernel*,
_class"
 loc:@G/conv2d_transpose/kernel*
dtype0*(
_output_shapes
:
¤
)G/conv2d_transpose/bias/Initializer/zerosConst*
valueB*    **
_class 
loc:@G/conv2d_transpose/bias*
dtype0*
_output_shapes	
:
ł
G/conv2d_transpose/biasVarHandleOp**
_class 
loc:@G/conv2d_transpose/bias*
shape:*
dtype0*
_output_shapes
: *(
shared_nameG/conv2d_transpose/bias

8G/conv2d_transpose/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose/bias*
_output_shapes
: 
Ż
G/conv2d_transpose/bias/AssignAssignVariableOpG/conv2d_transpose/bias)G/conv2d_transpose/bias/Initializer/zeros**
_class 
loc:@G/conv2d_transpose/bias*
dtype0
Ź
+G/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpG/conv2d_transpose/bias**
_class 
loc:@G/conv2d_transpose/bias*
dtype0*
_output_shapes	
:
Q
G/conv2d_transpose/ShapeShape	G/Reshape*
T0*
_output_shapes
:
p
&G/conv2d_transpose/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(G/conv2d_transpose/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(G/conv2d_transpose/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 G/conv2d_transpose/strided_sliceStridedSliceG/conv2d_transpose/Shape&G/conv2d_transpose/strided_slice/stack(G/conv2d_transpose/strided_slice/stack_1(G/conv2d_transpose/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
(G/conv2d_transpose/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

"G/conv2d_transpose/strided_slice_1StridedSliceG/conv2d_transpose/Shape(G/conv2d_transpose/strided_slice_1/stack*G/conv2d_transpose/strided_slice_1/stack_1*G/conv2d_transpose/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
r
(G/conv2d_transpose/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

"G/conv2d_transpose/strided_slice_2StridedSliceG/conv2d_transpose/Shape(G/conv2d_transpose/strided_slice_2/stack*G/conv2d_transpose/strided_slice_2/stack_1*G/conv2d_transpose/strided_slice_2/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Z
G/conv2d_transpose/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
G/conv2d_transpose/mulMul"G/conv2d_transpose/strided_slice_1G/conv2d_transpose/mul/y*
T0*
_output_shapes
: 
\
G/conv2d_transpose/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv2d_transpose/mul_1Mul"G/conv2d_transpose/strided_slice_2G/conv2d_transpose/mul_1/y*
T0*
_output_shapes
: 
]
G/conv2d_transpose/stack/3Const*
value
B :*
dtype0*
_output_shapes
: 
ž
G/conv2d_transpose/stackPack G/conv2d_transpose/strided_sliceG/conv2d_transpose/mulG/conv2d_transpose/mul_1G/conv2d_transpose/stack/3*
T0*
N*
_output_shapes
:

2G/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpG/conv2d_transpose/kernel*
dtype0*(
_output_shapes
:
ö
#G/conv2d_transpose/conv2d_transposeConv2DBackpropInputG/conv2d_transpose/stack2G/conv2d_transpose/conv2d_transpose/ReadVariableOp	G/Reshape*
T0*
strides
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
)G/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpG/conv2d_transpose/bias*
dtype0*
_output_shapes	
:
°
G/conv2d_transpose/BiasAddBiasAdd#G/conv2d_transpose/conv2d_transpose)G/conv2d_transpose/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
G/conv2d_transpose/ReluReluG/conv2d_transpose/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
,G/batch_normalization/gamma/Initializer/onesConst*
valueB*  ?*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0*
_output_shapes	
:
ż
G/batch_normalization/gammaVarHandleOp*,
shared_nameG/batch_normalization/gamma*.
_class$
" loc:@G/batch_normalization/gamma*
shape:*
dtype0*
_output_shapes
: 

<G/batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization/gamma*
_output_shapes
: 
ž
"G/batch_normalization/gamma/AssignAssignVariableOpG/batch_normalization/gamma,G/batch_normalization/gamma/Initializer/ones*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0
¸
/G/batch_normalization/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization/gamma*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0*
_output_shapes	
:
Ş
,G/batch_normalization/beta/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@G/batch_normalization/beta*
dtype0*
_output_shapes	
:
ź
G/batch_normalization/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *+
shared_nameG/batch_normalization/beta*-
_class#
!loc:@G/batch_normalization/beta

;G/batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization/beta*
_output_shapes
: 
ť
!G/batch_normalization/beta/AssignAssignVariableOpG/batch_normalization/beta,G/batch_normalization/beta/Initializer/zeros*-
_class#
!loc:@G/batch_normalization/beta*
dtype0
ľ
.G/batch_normalization/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization/beta*-
_class#
!loc:@G/batch_normalization/beta*
dtype0*
_output_shapes	
:
¸
3G/batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:
Ń
!G/batch_normalization/moving_meanVarHandleOp*2
shared_name#!G/batch_normalization/moving_mean*4
_class*
(&loc:@G/batch_normalization/moving_mean*
shape:*
dtype0*
_output_shapes
: 

BG/batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!G/batch_normalization/moving_mean*
_output_shapes
: 
×
(G/batch_normalization/moving_mean/AssignAssignVariableOp!G/batch_normalization/moving_mean3G/batch_normalization/moving_mean/Initializer/zeros*4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0
Ę
5G/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp!G/batch_normalization/moving_mean*4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:
ż
6G/batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ?*8
_class.
,*loc:@G/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:
Ý
%G/batch_normalization/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *6
shared_name'%G/batch_normalization/moving_variance*8
_class.
,*loc:@G/batch_normalization/moving_variance*
shape:

FG/batch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%G/batch_normalization/moving_variance*
_output_shapes
: 
ć
,G/batch_normalization/moving_variance/AssignAssignVariableOp%G/batch_normalization/moving_variance6G/batch_normalization/moving_variance/Initializer/ones*8
_class.
,*loc:@G/batch_normalization/moving_variance*
dtype0
Ö
9G/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp%G/batch_normalization/moving_variance*8
_class.
,*loc:@G/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:
}
$G/batch_normalization/ReadVariableOpReadVariableOpG/batch_normalization/gamma*
dtype0*
_output_shapes	
:
~
&G/batch_normalization/ReadVariableOp_1ReadVariableOpG/batch_normalization/beta*
dtype0*
_output_shapes	
:

3G/batch_normalization/FusedBatchNorm/ReadVariableOpReadVariableOp!G/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:

5G/batch_normalization/FusedBatchNorm/ReadVariableOp_1ReadVariableOp%G/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:

$G/batch_normalization/FusedBatchNormFusedBatchNormG/conv2d_transpose/Relu$G/batch_normalization/ReadVariableOp&G/batch_normalization/ReadVariableOp_13G/batch_normalization/FusedBatchNorm/ReadVariableOp5G/batch_normalization/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::
`
G/batch_normalization/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
Ä
;G/conv2d_transpose_1/kernel/Initializer/random_normal/shapeConst*%
valueB"      @      *.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0*
_output_shapes
:
Ż
:G/conv2d_transpose_1/kernel/Initializer/random_normal/meanConst*
valueB
 *    *.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0*
_output_shapes
: 
ą
<G/conv2d_transpose_1/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0*
_output_shapes
: 

JG/conv2d_transpose_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal;G/conv2d_transpose_1/kernel/Initializer/random_normal/shape*
T0*.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0*'
_output_shapes
:@
Ź
9G/conv2d_transpose_1/kernel/Initializer/random_normal/mulMulJG/conv2d_transpose_1/kernel/Initializer/random_normal/RandomStandardNormal<G/conv2d_transpose_1/kernel/Initializer/random_normal/stddev*
T0*.
_class$
" loc:@G/conv2d_transpose_1/kernel*'
_output_shapes
:@

5G/conv2d_transpose_1/kernel/Initializer/random_normalAdd9G/conv2d_transpose_1/kernel/Initializer/random_normal/mul:G/conv2d_transpose_1/kernel/Initializer/random_normal/mean*
T0*.
_class$
" loc:@G/conv2d_transpose_1/kernel*'
_output_shapes
:@
Ë
G/conv2d_transpose_1/kernelVarHandleOp*.
_class$
" loc:@G/conv2d_transpose_1/kernel*
shape:@*
dtype0*
_output_shapes
: *,
shared_nameG/conv2d_transpose_1/kernel

<G/conv2d_transpose_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose_1/kernel*
_output_shapes
: 
Ç
"G/conv2d_transpose_1/kernel/AssignAssignVariableOpG/conv2d_transpose_1/kernel5G/conv2d_transpose_1/kernel/Initializer/random_normal*.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0
Ä
/G/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpG/conv2d_transpose_1/kernel*.
_class$
" loc:@G/conv2d_transpose_1/kernel*
dtype0*'
_output_shapes
:@
Ś
+G/conv2d_transpose_1/bias/Initializer/zerosConst*
valueB@*    *,
_class"
 loc:@G/conv2d_transpose_1/bias*
dtype0*
_output_shapes
:@
¸
G/conv2d_transpose_1/biasVarHandleOp*
shape:@*
dtype0*
_output_shapes
: **
shared_nameG/conv2d_transpose_1/bias*,
_class"
 loc:@G/conv2d_transpose_1/bias

:G/conv2d_transpose_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose_1/bias*
_output_shapes
: 
ˇ
 G/conv2d_transpose_1/bias/AssignAssignVariableOpG/conv2d_transpose_1/bias+G/conv2d_transpose_1/bias/Initializer/zeros*,
_class"
 loc:@G/conv2d_transpose_1/bias*
dtype0
ą
-G/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpG/conv2d_transpose_1/bias*,
_class"
 loc:@G/conv2d_transpose_1/bias*
dtype0*
_output_shapes
:@
n
G/conv2d_transpose_1/ShapeShape$G/batch_normalization/FusedBatchNorm*
T0*
_output_shapes
:
r
(G/conv2d_transpose_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*G/conv2d_transpose_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

"G/conv2d_transpose_1/strided_sliceStridedSliceG/conv2d_transpose_1/Shape(G/conv2d_transpose_1/strided_slice/stack*G/conv2d_transpose_1/strided_slice/stack_1*G/conv2d_transpose_1/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
*G/conv2d_transpose_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$G/conv2d_transpose_1/strided_slice_1StridedSliceG/conv2d_transpose_1/Shape*G/conv2d_transpose_1/strided_slice_1/stack,G/conv2d_transpose_1/strided_slice_1/stack_1,G/conv2d_transpose_1/strided_slice_1/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
t
*G/conv2d_transpose_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$G/conv2d_transpose_1/strided_slice_2StridedSliceG/conv2d_transpose_1/Shape*G/conv2d_transpose_1/strided_slice_2/stack,G/conv2d_transpose_1/strided_slice_2/stack_1,G/conv2d_transpose_1/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
\
G/conv2d_transpose_1/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv2d_transpose_1/mulMul$G/conv2d_transpose_1/strided_slice_1G/conv2d_transpose_1/mul/y*
T0*
_output_shapes
: 
^
G/conv2d_transpose_1/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv2d_transpose_1/mul_1Mul$G/conv2d_transpose_1/strided_slice_2G/conv2d_transpose_1/mul_1/y*
T0*
_output_shapes
: 
^
G/conv2d_transpose_1/stack/3Const*
value	B :@*
dtype0*
_output_shapes
: 
Č
G/conv2d_transpose_1/stackPack"G/conv2d_transpose_1/strided_sliceG/conv2d_transpose_1/mulG/conv2d_transpose_1/mul_1G/conv2d_transpose_1/stack/3*
T0*
N*
_output_shapes
:

4G/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpG/conv2d_transpose_1/kernel*
dtype0*'
_output_shapes
:@

%G/conv2d_transpose_1/conv2d_transposeConv2DBackpropInputG/conv2d_transpose_1/stack4G/conv2d_transpose_1/conv2d_transpose/ReadVariableOp$G/batch_normalization/FusedBatchNorm*
T0*
strides
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+G/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpG/conv2d_transpose_1/bias*
dtype0*
_output_shapes
:@
ľ
G/conv2d_transpose_1/BiasAddBiasAdd%G/conv2d_transpose_1/conv2d_transpose+G/conv2d_transpose_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
y
G/conv2d_transpose_1/ReluReluG/conv2d_transpose_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
­
.G/batch_normalization_1/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_1/gammaVarHandleOp*
dtype0*
_output_shapes
: *.
shared_nameG/batch_normalization_1/gamma*0
_class&
$"loc:@G/batch_normalization_1/gamma*
shape:@

>G/batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_1/gamma*
_output_shapes
: 
Ć
$G/batch_normalization_1/gamma/AssignAssignVariableOpG/batch_normalization_1/gamma.G/batch_normalization_1/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0
˝
1G/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_1/gamma*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
Ź
.G/batch_normalization_1/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
Á
G/batch_normalization_1/betaVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *-
shared_nameG/batch_normalization_1/beta*/
_class%
#!loc:@G/batch_normalization_1/beta

=G/batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_1/beta*
_output_shapes
: 
Ă
#G/batch_normalization_1/beta/AssignAssignVariableOpG/batch_normalization_1/beta.G/batch_normalization_1/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0
ş
0G/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_1/beta*/
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
ş
5G/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_1/moving_meanVarHandleOp*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
shape:@*
dtype0*
_output_shapes
: *4
shared_name%#G/batch_normalization_1/moving_mean

DG/batch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_1/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_1/moving_mean/AssignAssignVariableOp#G/batch_normalization_1/moving_mean5G/batch_normalization_1/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0
Ď
7G/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_1/moving_mean*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Á
8G/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@
â
'G/batch_normalization_1/moving_varianceVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *8
shared_name)'G/batch_normalization_1/moving_variance*:
_class0
.,loc:@G/batch_normalization_1/moving_variance

HG/batch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_1/moving_variance*
_output_shapes
: 
î
.G/batch_normalization_1/moving_variance/AssignAssignVariableOp'G/batch_normalization_1/moving_variance8G/batch_normalization_1/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0
Ű
;G/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_1/moving_variance*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@

&G/batch_normalization_1/ReadVariableOpReadVariableOpG/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@

(G/batch_normalization_1/ReadVariableOp_1ReadVariableOpG/batch_normalization_1/beta*
dtype0*
_output_shapes
:@

5G/batch_normalization_1/FusedBatchNorm/ReadVariableOpReadVariableOp#G/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@

7G/batch_normalization_1/FusedBatchNorm/ReadVariableOp_1ReadVariableOp'G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@

&G/batch_normalization_1/FusedBatchNormFusedBatchNormG/conv2d_transpose_1/Relu&G/batch_normalization_1/ReadVariableOp(G/batch_normalization_1/ReadVariableOp_15G/batch_normalization_1/FusedBatchNorm/ReadVariableOp7G/batch_normalization_1/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@
b
G/batch_normalization_1/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
Ä
;G/conv2d_transpose_2/kernel/Initializer/random_normal/shapeConst*%
valueB"         @   *.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0*
_output_shapes
:
Ż
:G/conv2d_transpose_2/kernel/Initializer/random_normal/meanConst*
valueB
 *    *.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0*
_output_shapes
: 
ą
<G/conv2d_transpose_2/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0*
_output_shapes
: 

JG/conv2d_transpose_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal;G/conv2d_transpose_2/kernel/Initializer/random_normal/shape*
T0*.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0*&
_output_shapes
:@
Ť
9G/conv2d_transpose_2/kernel/Initializer/random_normal/mulMulJG/conv2d_transpose_2/kernel/Initializer/random_normal/RandomStandardNormal<G/conv2d_transpose_2/kernel/Initializer/random_normal/stddev*
T0*.
_class$
" loc:@G/conv2d_transpose_2/kernel*&
_output_shapes
:@

5G/conv2d_transpose_2/kernel/Initializer/random_normalAdd9G/conv2d_transpose_2/kernel/Initializer/random_normal/mul:G/conv2d_transpose_2/kernel/Initializer/random_normal/mean*
T0*.
_class$
" loc:@G/conv2d_transpose_2/kernel*&
_output_shapes
:@
Ę
G/conv2d_transpose_2/kernelVarHandleOp*.
_class$
" loc:@G/conv2d_transpose_2/kernel*
shape:@*
dtype0*
_output_shapes
: *,
shared_nameG/conv2d_transpose_2/kernel

<G/conv2d_transpose_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose_2/kernel*
_output_shapes
: 
Ç
"G/conv2d_transpose_2/kernel/AssignAssignVariableOpG/conv2d_transpose_2/kernel5G/conv2d_transpose_2/kernel/Initializer/random_normal*.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0
Ă
/G/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpG/conv2d_transpose_2/kernel*.
_class$
" loc:@G/conv2d_transpose_2/kernel*
dtype0*&
_output_shapes
:@
Ś
+G/conv2d_transpose_2/bias/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@G/conv2d_transpose_2/bias*
dtype0*
_output_shapes
:
¸
G/conv2d_transpose_2/biasVarHandleOp*
dtype0*
_output_shapes
: **
shared_nameG/conv2d_transpose_2/bias*,
_class"
 loc:@G/conv2d_transpose_2/bias*
shape:

:G/conv2d_transpose_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv2d_transpose_2/bias*
_output_shapes
: 
ˇ
 G/conv2d_transpose_2/bias/AssignAssignVariableOpG/conv2d_transpose_2/bias+G/conv2d_transpose_2/bias/Initializer/zeros*,
_class"
 loc:@G/conv2d_transpose_2/bias*
dtype0
ą
-G/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpG/conv2d_transpose_2/bias*,
_class"
 loc:@G/conv2d_transpose_2/bias*
dtype0*
_output_shapes
:
p
G/conv2d_transpose_2/ShapeShape&G/batch_normalization_1/FusedBatchNorm*
T0*
_output_shapes
:
r
(G/conv2d_transpose_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*G/conv2d_transpose_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*G/conv2d_transpose_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

"G/conv2d_transpose_2/strided_sliceStridedSliceG/conv2d_transpose_2/Shape(G/conv2d_transpose_2/strided_slice/stack*G/conv2d_transpose_2/strided_slice/stack_1*G/conv2d_transpose_2/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
t
*G/conv2d_transpose_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$G/conv2d_transpose_2/strided_slice_1StridedSliceG/conv2d_transpose_2/Shape*G/conv2d_transpose_2/strided_slice_1/stack,G/conv2d_transpose_2/strided_slice_1/stack_1,G/conv2d_transpose_2/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
t
*G/conv2d_transpose_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_2/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,G/conv2d_transpose_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$G/conv2d_transpose_2/strided_slice_2StridedSliceG/conv2d_transpose_2/Shape*G/conv2d_transpose_2/strided_slice_2/stack,G/conv2d_transpose_2/strided_slice_2/stack_1,G/conv2d_transpose_2/strided_slice_2/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
\
G/conv2d_transpose_2/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv2d_transpose_2/mulMul$G/conv2d_transpose_2/strided_slice_1G/conv2d_transpose_2/mul/y*
T0*
_output_shapes
: 
^
G/conv2d_transpose_2/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv2d_transpose_2/mul_1Mul$G/conv2d_transpose_2/strided_slice_2G/conv2d_transpose_2/mul_1/y*
T0*
_output_shapes
: 
^
G/conv2d_transpose_2/stack/3Const*
value	B :*
dtype0*
_output_shapes
: 
Č
G/conv2d_transpose_2/stackPack"G/conv2d_transpose_2/strided_sliceG/conv2d_transpose_2/mulG/conv2d_transpose_2/mul_1G/conv2d_transpose_2/stack/3*
T0*
N*
_output_shapes
:

4G/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpG/conv2d_transpose_2/kernel*
dtype0*&
_output_shapes
:@

%G/conv2d_transpose_2/conv2d_transposeConv2DBackpropInputG/conv2d_transpose_2/stack4G/conv2d_transpose_2/conv2d_transpose/ReadVariableOp&G/batch_normalization_1/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
T0*
strides
*
paddingSAME

+G/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpG/conv2d_transpose_2/bias*
dtype0*
_output_shapes
:
ľ
G/conv2d_transpose_2/BiasAddBiasAdd%G/conv2d_transpose_2/conv2d_transpose+G/conv2d_transpose_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  

G/conv2d_transpose_2/SigmoidSigmoidG/conv2d_transpose_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  

Placeholder_1Placeholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
shape:˙˙˙˙˙˙˙˙˙  
Ź
/D/conv2d/kernel/Initializer/random_normal/shapeConst*%
valueB"             *"
_class
loc:@D/conv2d/kernel*
dtype0*
_output_shapes
:

.D/conv2d/kernel/Initializer/random_normal/meanConst*
valueB
 *    *"
_class
loc:@D/conv2d/kernel*
dtype0*
_output_shapes
: 

0D/conv2d/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*"
_class
loc:@D/conv2d/kernel*
dtype0*
_output_shapes
: 
é
>D/conv2d/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/D/conv2d/kernel/Initializer/random_normal/shape*
dtype0*&
_output_shapes
: *
T0*"
_class
loc:@D/conv2d/kernel
ű
-D/conv2d/kernel/Initializer/random_normal/mulMul>D/conv2d/kernel/Initializer/random_normal/RandomStandardNormal0D/conv2d/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@D/conv2d/kernel*&
_output_shapes
: 
ä
)D/conv2d/kernel/Initializer/random_normalAdd-D/conv2d/kernel/Initializer/random_normal/mul.D/conv2d/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@D/conv2d/kernel*&
_output_shapes
: 
Ś
D/conv2d/kernelVarHandleOp*
shape: *
dtype0*
_output_shapes
: * 
shared_nameD/conv2d/kernel*"
_class
loc:@D/conv2d/kernel
o
0D/conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d/kernel*
_output_shapes
: 

D/conv2d/kernel/AssignAssignVariableOpD/conv2d/kernel)D/conv2d/kernel/Initializer/random_normal*"
_class
loc:@D/conv2d/kernel*
dtype0

#D/conv2d/kernel/Read/ReadVariableOpReadVariableOpD/conv2d/kernel*"
_class
loc:@D/conv2d/kernel*
dtype0*&
_output_shapes
: 

D/conv2d/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@D/conv2d/bias*
dtype0*
_output_shapes
: 

D/conv2d/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameD/conv2d/bias* 
_class
loc:@D/conv2d/bias*
shape: 
k
.D/conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d/bias*
_output_shapes
: 

D/conv2d/bias/AssignAssignVariableOpD/conv2d/biasD/conv2d/bias/Initializer/zeros* 
_class
loc:@D/conv2d/bias*
dtype0

!D/conv2d/bias/Read/ReadVariableOpReadVariableOpD/conv2d/bias* 
_class
loc:@D/conv2d/bias*
dtype0*
_output_shapes
: 
g
D/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
D/conv2d/Conv2D/ReadVariableOpReadVariableOpD/conv2d/kernel*
dtype0*&
_output_shapes
: 
Ş
D/conv2d/Conv2DConv2DPlaceholder_1D/conv2d/Conv2D/ReadVariableOp*
T0*
strides
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
D/conv2d/BiasAdd/ReadVariableOpReadVariableOpD/conv2d/bias*
dtype0*
_output_shapes
: 

D/conv2d/BiasAddBiasAddD/conv2d/Conv2DD/conv2d/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
]
D/conv2d/LeakyRelu/alphaConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 

D/conv2d/LeakyRelu/mulMulD/conv2d/LeakyRelu/alphaD/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

D/conv2d/LeakyReluMaximumD/conv2d/LeakyRelu/mulD/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Š
,D/batch_normalization/gamma/Initializer/onesConst*
valueB *  ?*.
_class$
" loc:@D/batch_normalization/gamma*
dtype0*
_output_shapes
: 
ž
D/batch_normalization/gammaVarHandleOp*,
shared_nameD/batch_normalization/gamma*.
_class$
" loc:@D/batch_normalization/gamma*
shape: *
dtype0*
_output_shapes
: 

<D/batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization/gamma*
_output_shapes
: 
ž
"D/batch_normalization/gamma/AssignAssignVariableOpD/batch_normalization/gamma,D/batch_normalization/gamma/Initializer/ones*.
_class$
" loc:@D/batch_normalization/gamma*
dtype0
ˇ
/D/batch_normalization/gamma/Read/ReadVariableOpReadVariableOpD/batch_normalization/gamma*.
_class$
" loc:@D/batch_normalization/gamma*
dtype0*
_output_shapes
: 
¨
,D/batch_normalization/beta/Initializer/zerosConst*
valueB *    *-
_class#
!loc:@D/batch_normalization/beta*
dtype0*
_output_shapes
: 
ť
D/batch_normalization/betaVarHandleOp*-
_class#
!loc:@D/batch_normalization/beta*
shape: *
dtype0*
_output_shapes
: *+
shared_nameD/batch_normalization/beta

;D/batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization/beta*
_output_shapes
: 
ť
!D/batch_normalization/beta/AssignAssignVariableOpD/batch_normalization/beta,D/batch_normalization/beta/Initializer/zeros*-
_class#
!loc:@D/batch_normalization/beta*
dtype0
´
.D/batch_normalization/beta/Read/ReadVariableOpReadVariableOpD/batch_normalization/beta*-
_class#
!loc:@D/batch_normalization/beta*
dtype0*
_output_shapes
: 
ś
3D/batch_normalization/moving_mean/Initializer/zerosConst*
valueB *    *4
_class*
(&loc:@D/batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
Đ
!D/batch_normalization/moving_meanVarHandleOp*4
_class*
(&loc:@D/batch_normalization/moving_mean*
shape: *
dtype0*
_output_shapes
: *2
shared_name#!D/batch_normalization/moving_mean

BD/batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!D/batch_normalization/moving_mean*
_output_shapes
: 
×
(D/batch_normalization/moving_mean/AssignAssignVariableOp!D/batch_normalization/moving_mean3D/batch_normalization/moving_mean/Initializer/zeros*4
_class*
(&loc:@D/batch_normalization/moving_mean*
dtype0
É
5D/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp!D/batch_normalization/moving_mean*4
_class*
(&loc:@D/batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
˝
6D/batch_normalization/moving_variance/Initializer/onesConst*
valueB *  ?*8
_class.
,*loc:@D/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
Ü
%D/batch_normalization/moving_varianceVarHandleOp*
shape: *
dtype0*
_output_shapes
: *6
shared_name'%D/batch_normalization/moving_variance*8
_class.
,*loc:@D/batch_normalization/moving_variance

FD/batch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%D/batch_normalization/moving_variance*
_output_shapes
: 
ć
,D/batch_normalization/moving_variance/AssignAssignVariableOp%D/batch_normalization/moving_variance6D/batch_normalization/moving_variance/Initializer/ones*8
_class.
,*loc:@D/batch_normalization/moving_variance*
dtype0
Ő
9D/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp%D/batch_normalization/moving_variance*8
_class.
,*loc:@D/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
|
$D/batch_normalization/ReadVariableOpReadVariableOpD/batch_normalization/gamma*
dtype0*
_output_shapes
: 
}
&D/batch_normalization/ReadVariableOp_1ReadVariableOpD/batch_normalization/beta*
dtype0*
_output_shapes
: 

3D/batch_normalization/FusedBatchNorm/ReadVariableOpReadVariableOp!D/batch_normalization/moving_mean*
dtype0*
_output_shapes
: 

5D/batch_normalization/FusedBatchNorm/ReadVariableOp_1ReadVariableOp%D/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
ű
$D/batch_normalization/FusedBatchNormFusedBatchNormD/conv2d/LeakyRelu$D/batch_normalization/ReadVariableOp&D/batch_normalization/ReadVariableOp_13D/batch_normalization/FusedBatchNorm/ReadVariableOp5D/batch_normalization/FusedBatchNorm/ReadVariableOp_1*
T0*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ : : : : *
epsilon%o:
`
D/batch_normalization/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
°
1D/conv2d_1/kernel/Initializer/random_normal/shapeConst*%
valueB"          @   *$
_class
loc:@D/conv2d_1/kernel*
dtype0*
_output_shapes
:

0D/conv2d_1/kernel/Initializer/random_normal/meanConst*
valueB
 *    *$
_class
loc:@D/conv2d_1/kernel*
dtype0*
_output_shapes
: 

2D/conv2d_1/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*$
_class
loc:@D/conv2d_1/kernel*
dtype0*
_output_shapes
: 
ď
@D/conv2d_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal1D/conv2d_1/kernel/Initializer/random_normal/shape*
dtype0*&
_output_shapes
: @*
T0*$
_class
loc:@D/conv2d_1/kernel

/D/conv2d_1/kernel/Initializer/random_normal/mulMul@D/conv2d_1/kernel/Initializer/random_normal/RandomStandardNormal2D/conv2d_1/kernel/Initializer/random_normal/stddev*
T0*$
_class
loc:@D/conv2d_1/kernel*&
_output_shapes
: @
ě
+D/conv2d_1/kernel/Initializer/random_normalAdd/D/conv2d_1/kernel/Initializer/random_normal/mul0D/conv2d_1/kernel/Initializer/random_normal/mean*
T0*$
_class
loc:@D/conv2d_1/kernel*&
_output_shapes
: @
Ź
D/conv2d_1/kernelVarHandleOp*
shape: @*
dtype0*
_output_shapes
: *"
shared_nameD/conv2d_1/kernel*$
_class
loc:@D/conv2d_1/kernel
s
2D/conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d_1/kernel*
_output_shapes
: 

D/conv2d_1/kernel/AssignAssignVariableOpD/conv2d_1/kernel+D/conv2d_1/kernel/Initializer/random_normal*$
_class
loc:@D/conv2d_1/kernel*
dtype0
Ľ
%D/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpD/conv2d_1/kernel*$
_class
loc:@D/conv2d_1/kernel*
dtype0*&
_output_shapes
: @

!D/conv2d_1/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@D/conv2d_1/bias*
dtype0*
_output_shapes
:@

D/conv2d_1/biasVarHandleOp*
shape:@*
dtype0*
_output_shapes
: * 
shared_nameD/conv2d_1/bias*"
_class
loc:@D/conv2d_1/bias
o
0D/conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d_1/bias*
_output_shapes
: 

D/conv2d_1/bias/AssignAssignVariableOpD/conv2d_1/bias!D/conv2d_1/bias/Initializer/zeros*"
_class
loc:@D/conv2d_1/bias*
dtype0

#D/conv2d_1/bias/Read/ReadVariableOpReadVariableOpD/conv2d_1/bias*"
_class
loc:@D/conv2d_1/bias*
dtype0*
_output_shapes
:@
i
D/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
 D/conv2d_1/Conv2D/ReadVariableOpReadVariableOpD/conv2d_1/kernel*
dtype0*&
_output_shapes
: @
Ĺ
D/conv2d_1/Conv2DConv2D$D/batch_normalization/FusedBatchNorm D/conv2d_1/Conv2D/ReadVariableOp*
T0*
strides
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
m
!D/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpD/conv2d_1/bias*
dtype0*
_output_shapes
:@

D/conv2d_1/BiasAddBiasAddD/conv2d_1/Conv2D!D/conv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
_
D/conv2d_1/LeakyRelu/alphaConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 

D/conv2d_1/LeakyRelu/mulMulD/conv2d_1/LeakyRelu/alphaD/conv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

D/conv2d_1/LeakyReluMaximumD/conv2d_1/LeakyRelu/mulD/conv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
­
.D/batch_normalization_1/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@D/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
Ä
D/batch_normalization_1/gammaVarHandleOp*.
shared_nameD/batch_normalization_1/gamma*0
_class&
$"loc:@D/batch_normalization_1/gamma*
shape:@*
dtype0*
_output_shapes
: 

>D/batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization_1/gamma*
_output_shapes
: 
Ć
$D/batch_normalization_1/gamma/AssignAssignVariableOpD/batch_normalization_1/gamma.D/batch_normalization_1/gamma/Initializer/ones*0
_class&
$"loc:@D/batch_normalization_1/gamma*
dtype0
˝
1D/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpD/batch_normalization_1/gamma*0
_class&
$"loc:@D/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
Ź
.D/batch_normalization_1/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@D/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
Á
D/batch_normalization_1/betaVarHandleOp*/
_class%
#!loc:@D/batch_normalization_1/beta*
shape:@*
dtype0*
_output_shapes
: *-
shared_nameD/batch_normalization_1/beta

=D/batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization_1/beta*
_output_shapes
: 
Ă
#D/batch_normalization_1/beta/AssignAssignVariableOpD/batch_normalization_1/beta.D/batch_normalization_1/beta/Initializer/zeros*/
_class%
#!loc:@D/batch_normalization_1/beta*
dtype0
ş
0D/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpD/batch_normalization_1/beta*/
_class%
#!loc:@D/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
ş
5D/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@D/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Ö
#D/batch_normalization_1/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *4
shared_name%#D/batch_normalization_1/moving_mean*6
_class,
*(loc:@D/batch_normalization_1/moving_mean*
shape:@

DD/batch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#D/batch_normalization_1/moving_mean*
_output_shapes
: 
ß
*D/batch_normalization_1/moving_mean/AssignAssignVariableOp#D/batch_normalization_1/moving_mean5D/batch_normalization_1/moving_mean/Initializer/zeros*6
_class,
*(loc:@D/batch_normalization_1/moving_mean*
dtype0
Ď
7D/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp#D/batch_normalization_1/moving_mean*6
_class,
*(loc:@D/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Á
8D/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@D/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@
â
'D/batch_normalization_1/moving_varianceVarHandleOp*8
shared_name)'D/batch_normalization_1/moving_variance*:
_class0
.,loc:@D/batch_normalization_1/moving_variance*
shape:@*
dtype0*
_output_shapes
: 

HD/batch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'D/batch_normalization_1/moving_variance*
_output_shapes
: 
î
.D/batch_normalization_1/moving_variance/AssignAssignVariableOp'D/batch_normalization_1/moving_variance8D/batch_normalization_1/moving_variance/Initializer/ones*:
_class0
.,loc:@D/batch_normalization_1/moving_variance*
dtype0
Ű
;D/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp'D/batch_normalization_1/moving_variance*:
_class0
.,loc:@D/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@

&D/batch_normalization_1/ReadVariableOpReadVariableOpD/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@

(D/batch_normalization_1/ReadVariableOp_1ReadVariableOpD/batch_normalization_1/beta*
dtype0*
_output_shapes
:@

5D/batch_normalization_1/FusedBatchNorm/ReadVariableOpReadVariableOp#D/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@

7D/batch_normalization_1/FusedBatchNorm/ReadVariableOp_1ReadVariableOp'D/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@

&D/batch_normalization_1/FusedBatchNormFusedBatchNormD/conv2d_1/LeakyRelu&D/batch_normalization_1/ReadVariableOp(D/batch_normalization_1/ReadVariableOp_15D/batch_normalization_1/FusedBatchNorm/ReadVariableOp7D/batch_normalization_1/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@
b
D/batch_normalization_1/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
°
1D/conv2d_2/kernel/Initializer/random_normal/shapeConst*%
valueB"      @      *$
_class
loc:@D/conv2d_2/kernel*
dtype0*
_output_shapes
:

0D/conv2d_2/kernel/Initializer/random_normal/meanConst*
valueB
 *    *$
_class
loc:@D/conv2d_2/kernel*
dtype0*
_output_shapes
: 

2D/conv2d_2/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*$
_class
loc:@D/conv2d_2/kernel*
dtype0*
_output_shapes
: 
đ
@D/conv2d_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal1D/conv2d_2/kernel/Initializer/random_normal/shape*
T0*$
_class
loc:@D/conv2d_2/kernel*
dtype0*'
_output_shapes
:@

/D/conv2d_2/kernel/Initializer/random_normal/mulMul@D/conv2d_2/kernel/Initializer/random_normal/RandomStandardNormal2D/conv2d_2/kernel/Initializer/random_normal/stddev*
T0*$
_class
loc:@D/conv2d_2/kernel*'
_output_shapes
:@
í
+D/conv2d_2/kernel/Initializer/random_normalAdd/D/conv2d_2/kernel/Initializer/random_normal/mul0D/conv2d_2/kernel/Initializer/random_normal/mean*
T0*$
_class
loc:@D/conv2d_2/kernel*'
_output_shapes
:@
­
D/conv2d_2/kernelVarHandleOp*"
shared_nameD/conv2d_2/kernel*$
_class
loc:@D/conv2d_2/kernel*
shape:@*
dtype0*
_output_shapes
: 
s
2D/conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d_2/kernel*
_output_shapes
: 

D/conv2d_2/kernel/AssignAssignVariableOpD/conv2d_2/kernel+D/conv2d_2/kernel/Initializer/random_normal*$
_class
loc:@D/conv2d_2/kernel*
dtype0
Ś
%D/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpD/conv2d_2/kernel*$
_class
loc:@D/conv2d_2/kernel*
dtype0*'
_output_shapes
:@

!D/conv2d_2/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@D/conv2d_2/bias*
dtype0*
_output_shapes	
:

D/conv2d_2/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_nameD/conv2d_2/bias*"
_class
loc:@D/conv2d_2/bias
o
0D/conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/conv2d_2/bias*
_output_shapes
: 

D/conv2d_2/bias/AssignAssignVariableOpD/conv2d_2/bias!D/conv2d_2/bias/Initializer/zeros*"
_class
loc:@D/conv2d_2/bias*
dtype0

#D/conv2d_2/bias/Read/ReadVariableOpReadVariableOpD/conv2d_2/bias*"
_class
loc:@D/conv2d_2/bias*
dtype0*
_output_shapes	
:
i
D/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
{
 D/conv2d_2/Conv2D/ReadVariableOpReadVariableOpD/conv2d_2/kernel*
dtype0*'
_output_shapes
:@
Č
D/conv2d_2/Conv2DConv2D&D/batch_normalization_1/FusedBatchNorm D/conv2d_2/Conv2D/ReadVariableOp*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
strides
*
paddingSAME
n
!D/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpD/conv2d_2/bias*
dtype0*
_output_shapes	
:

D/conv2d_2/BiasAddBiasAddD/conv2d_2/Conv2D!D/conv2d_2/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
D/conv2d_2/LeakyRelu/alphaConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 

D/conv2d_2/LeakyRelu/mulMulD/conv2d_2/LeakyRelu/alphaD/conv2d_2/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

D/conv2d_2/LeakyReluMaximumD/conv2d_2/LeakyRelu/mulD/conv2d_2/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
.D/batch_normalization_2/gamma/Initializer/onesConst*
valueB*  ?*0
_class&
$"loc:@D/batch_normalization_2/gamma*
dtype0*
_output_shapes	
:
Ĺ
D/batch_normalization_2/gammaVarHandleOp*0
_class&
$"loc:@D/batch_normalization_2/gamma*
shape:*
dtype0*
_output_shapes
: *.
shared_nameD/batch_normalization_2/gamma

>D/batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization_2/gamma*
_output_shapes
: 
Ć
$D/batch_normalization_2/gamma/AssignAssignVariableOpD/batch_normalization_2/gamma.D/batch_normalization_2/gamma/Initializer/ones*0
_class&
$"loc:@D/batch_normalization_2/gamma*
dtype0
ž
1D/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpD/batch_normalization_2/gamma*0
_class&
$"loc:@D/batch_normalization_2/gamma*
dtype0*
_output_shapes	
:
Ž
.D/batch_normalization_2/beta/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@D/batch_normalization_2/beta*
dtype0*
_output_shapes	
:
Â
D/batch_normalization_2/betaVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameD/batch_normalization_2/beta*/
_class%
#!loc:@D/batch_normalization_2/beta*
shape:

=D/batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/batch_normalization_2/beta*
_output_shapes
: 
Ă
#D/batch_normalization_2/beta/AssignAssignVariableOpD/batch_normalization_2/beta.D/batch_normalization_2/beta/Initializer/zeros*/
_class%
#!loc:@D/batch_normalization_2/beta*
dtype0
ť
0D/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpD/batch_normalization_2/beta*/
_class%
#!loc:@D/batch_normalization_2/beta*
dtype0*
_output_shapes	
:
ź
5D/batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB*    *6
_class,
*(loc:@D/batch_normalization_2/moving_mean*
dtype0*
_output_shapes	
:
×
#D/batch_normalization_2/moving_meanVarHandleOp*6
_class,
*(loc:@D/batch_normalization_2/moving_mean*
shape:*
dtype0*
_output_shapes
: *4
shared_name%#D/batch_normalization_2/moving_mean

DD/batch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#D/batch_normalization_2/moving_mean*
_output_shapes
: 
ß
*D/batch_normalization_2/moving_mean/AssignAssignVariableOp#D/batch_normalization_2/moving_mean5D/batch_normalization_2/moving_mean/Initializer/zeros*6
_class,
*(loc:@D/batch_normalization_2/moving_mean*
dtype0
Đ
7D/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp#D/batch_normalization_2/moving_mean*6
_class,
*(loc:@D/batch_normalization_2/moving_mean*
dtype0*
_output_shapes	
:
Ă
8D/batch_normalization_2/moving_variance/Initializer/onesConst*
valueB*  ?*:
_class0
.,loc:@D/batch_normalization_2/moving_variance*
dtype0*
_output_shapes	
:
ă
'D/batch_normalization_2/moving_varianceVarHandleOp*
shape:*
dtype0*
_output_shapes
: *8
shared_name)'D/batch_normalization_2/moving_variance*:
_class0
.,loc:@D/batch_normalization_2/moving_variance

HD/batch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'D/batch_normalization_2/moving_variance*
_output_shapes
: 
î
.D/batch_normalization_2/moving_variance/AssignAssignVariableOp'D/batch_normalization_2/moving_variance8D/batch_normalization_2/moving_variance/Initializer/ones*:
_class0
.,loc:@D/batch_normalization_2/moving_variance*
dtype0
Ü
;D/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp'D/batch_normalization_2/moving_variance*:
_class0
.,loc:@D/batch_normalization_2/moving_variance*
dtype0*
_output_shapes	
:

&D/batch_normalization_2/ReadVariableOpReadVariableOpD/batch_normalization_2/gamma*
dtype0*
_output_shapes	
:

(D/batch_normalization_2/ReadVariableOp_1ReadVariableOpD/batch_normalization_2/beta*
dtype0*
_output_shapes	
:

5D/batch_normalization_2/FusedBatchNorm/ReadVariableOpReadVariableOp#D/batch_normalization_2/moving_mean*
dtype0*
_output_shapes	
:

7D/batch_normalization_2/FusedBatchNorm/ReadVariableOp_1ReadVariableOp'D/batch_normalization_2/moving_variance*
dtype0*
_output_shapes	
:

&D/batch_normalization_2/FusedBatchNormFusedBatchNormD/conv2d_2/LeakyRelu&D/batch_normalization_2/ReadVariableOp(D/batch_normalization_2/ReadVariableOp_15D/batch_normalization_2/FusedBatchNorm/ReadVariableOp7D/batch_normalization_2/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::
b
D/batch_normalization_2/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
e
D/flatten/ShapeShape&D/batch_normalization_2/FusedBatchNorm*
T0*
_output_shapes
:
g
D/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
D/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
D/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
D/flatten/strided_sliceStridedSliceD/flatten/ShapeD/flatten/strided_slice/stackD/flatten/strided_slice/stack_1D/flatten/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
d
D/flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

D/flatten/Reshape/shapePackD/flatten/strided_sliceD/flatten/Reshape/shape/1*
T0*
N*
_output_shapes
:

D/flatten/ReshapeReshape&D/batch_normalization_2/FusedBatchNormD/flatten/Reshape/shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.D/dense/kernel/Initializer/random_normal/shapeConst*
valueB"      *!
_class
loc:@D/dense/kernel*
dtype0*
_output_shapes
:

-D/dense/kernel/Initializer/random_normal/meanConst*
valueB
 *    *!
_class
loc:@D/dense/kernel*
dtype0*
_output_shapes
: 

/D/dense/kernel/Initializer/random_normal/stddevConst*
valueB
 *o;*!
_class
loc:@D/dense/kernel*
dtype0*
_output_shapes
: 
ß
=D/dense/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.D/dense/kernel/Initializer/random_normal/shape*
T0*!
_class
loc:@D/dense/kernel*
dtype0*
_output_shapes
:	
đ
,D/dense/kernel/Initializer/random_normal/mulMul=D/dense/kernel/Initializer/random_normal/RandomStandardNormal/D/dense/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@D/dense/kernel*
_output_shapes
:	
Ů
(D/dense/kernel/Initializer/random_normalAdd,D/dense/kernel/Initializer/random_normal/mul-D/dense/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@D/dense/kernel*
_output_shapes
:	

D/dense/kernelVarHandleOp*!
_class
loc:@D/dense/kernel*
shape:	*
dtype0*
_output_shapes
: *
shared_nameD/dense/kernel
m
/D/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/dense/kernel*
_output_shapes
: 

D/dense/kernel/AssignAssignVariableOpD/dense/kernel(D/dense/kernel/Initializer/random_normal*!
_class
loc:@D/dense/kernel*
dtype0

"D/dense/kernel/Read/ReadVariableOpReadVariableOpD/dense/kernel*!
_class
loc:@D/dense/kernel*
dtype0*
_output_shapes
:	

D/dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@D/dense/bias*
dtype0*
_output_shapes
:

D/dense/biasVarHandleOp*
_class
loc:@D/dense/bias*
shape:*
dtype0*
_output_shapes
: *
shared_nameD/dense/bias
i
-D/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpD/dense/bias*
_output_shapes
: 

D/dense/bias/AssignAssignVariableOpD/dense/biasD/dense/bias/Initializer/zeros*
_class
loc:@D/dense/bias*
dtype0

 D/dense/bias/Read/ReadVariableOpReadVariableOpD/dense/bias*
_class
loc:@D/dense/bias*
dtype0*
_output_shapes
:
m
D/dense/MatMul/ReadVariableOpReadVariableOpD/dense/kernel*
dtype0*
_output_shapes
:	
|
D/dense/MatMulMatMulD/flatten/ReshapeD/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
D/dense/BiasAdd/ReadVariableOpReadVariableOpD/dense/bias*
dtype0*
_output_shapes
:
|
D/dense/BiasAddBiasAddD/dense/MatMulD/dense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙""÷
trainable_variablesßÜ

G/dense/kernel:0G/dense/kernel/Assign$G/dense/kernel/Read/ReadVariableOp:0(2*G/dense/kernel/Initializer/random_normal:08
o
G/dense/bias:0G/dense/bias/Assign"G/dense/bias/Read/ReadVariableOp:0(2 G/dense/bias/Initializer/zeros:08
Ť
G/conv2d_transpose/kernel:0 G/conv2d_transpose/kernel/Assign/G/conv2d_transpose/kernel/Read/ReadVariableOp:0(25G/conv2d_transpose/kernel/Initializer/random_normal:08

G/conv2d_transpose/bias:0G/conv2d_transpose/bias/Assign-G/conv2d_transpose/bias/Read/ReadVariableOp:0(2+G/conv2d_transpose/bias/Initializer/zeros:08
Ş
G/batch_normalization/gamma:0"G/batch_normalization/gamma/Assign1G/batch_normalization/gamma/Read/ReadVariableOp:0(2.G/batch_normalization/gamma/Initializer/ones:08
§
G/batch_normalization/beta:0!G/batch_normalization/beta/Assign0G/batch_normalization/beta/Read/ReadVariableOp:0(2.G/batch_normalization/beta/Initializer/zeros:08
ł
G/conv2d_transpose_1/kernel:0"G/conv2d_transpose_1/kernel/Assign1G/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(27G/conv2d_transpose_1/kernel/Initializer/random_normal:08
Ł
G/conv2d_transpose_1/bias:0 G/conv2d_transpose_1/bias/Assign/G/conv2d_transpose_1/bias/Read/ReadVariableOp:0(2-G/conv2d_transpose_1/bias/Initializer/zeros:08
˛
G/batch_normalization_1/gamma:0$G/batch_normalization_1/gamma/Assign3G/batch_normalization_1/gamma/Read/ReadVariableOp:0(20G/batch_normalization_1/gamma/Initializer/ones:08
Ż
G/batch_normalization_1/beta:0#G/batch_normalization_1/beta/Assign2G/batch_normalization_1/beta/Read/ReadVariableOp:0(20G/batch_normalization_1/beta/Initializer/zeros:08
ł
G/conv2d_transpose_2/kernel:0"G/conv2d_transpose_2/kernel/Assign1G/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(27G/conv2d_transpose_2/kernel/Initializer/random_normal:08
Ł
G/conv2d_transpose_2/bias:0 G/conv2d_transpose_2/bias/Assign/G/conv2d_transpose_2/bias/Read/ReadVariableOp:0(2-G/conv2d_transpose_2/bias/Initializer/zeros:08

D/conv2d/kernel:0D/conv2d/kernel/Assign%D/conv2d/kernel/Read/ReadVariableOp:0(2+D/conv2d/kernel/Initializer/random_normal:08
s
D/conv2d/bias:0D/conv2d/bias/Assign#D/conv2d/bias/Read/ReadVariableOp:0(2!D/conv2d/bias/Initializer/zeros:08
Ş
D/batch_normalization/gamma:0"D/batch_normalization/gamma/Assign1D/batch_normalization/gamma/Read/ReadVariableOp:0(2.D/batch_normalization/gamma/Initializer/ones:08
§
D/batch_normalization/beta:0!D/batch_normalization/beta/Assign0D/batch_normalization/beta/Read/ReadVariableOp:0(2.D/batch_normalization/beta/Initializer/zeros:08

D/conv2d_1/kernel:0D/conv2d_1/kernel/Assign'D/conv2d_1/kernel/Read/ReadVariableOp:0(2-D/conv2d_1/kernel/Initializer/random_normal:08
{
D/conv2d_1/bias:0D/conv2d_1/bias/Assign%D/conv2d_1/bias/Read/ReadVariableOp:0(2#D/conv2d_1/bias/Initializer/zeros:08
˛
D/batch_normalization_1/gamma:0$D/batch_normalization_1/gamma/Assign3D/batch_normalization_1/gamma/Read/ReadVariableOp:0(20D/batch_normalization_1/gamma/Initializer/ones:08
Ż
D/batch_normalization_1/beta:0#D/batch_normalization_1/beta/Assign2D/batch_normalization_1/beta/Read/ReadVariableOp:0(20D/batch_normalization_1/beta/Initializer/zeros:08

D/conv2d_2/kernel:0D/conv2d_2/kernel/Assign'D/conv2d_2/kernel/Read/ReadVariableOp:0(2-D/conv2d_2/kernel/Initializer/random_normal:08
{
D/conv2d_2/bias:0D/conv2d_2/bias/Assign%D/conv2d_2/bias/Read/ReadVariableOp:0(2#D/conv2d_2/bias/Initializer/zeros:08
˛
D/batch_normalization_2/gamma:0$D/batch_normalization_2/gamma/Assign3D/batch_normalization_2/gamma/Read/ReadVariableOp:0(20D/batch_normalization_2/gamma/Initializer/ones:08
Ż
D/batch_normalization_2/beta:0#D/batch_normalization_2/beta/Assign2D/batch_normalization_2/beta/Read/ReadVariableOp:0(20D/batch_normalization_2/beta/Initializer/zeros:08

D/dense/kernel:0D/dense/kernel/Assign$D/dense/kernel/Read/ReadVariableOp:0(2*D/dense/kernel/Initializer/random_normal:08
o
D/dense/bias:0D/dense/bias/Assign"D/dense/bias/Read/ReadVariableOp:0(2 D/dense/bias/Initializer/zeros:08"0
	variables0˙/

G/dense/kernel:0G/dense/kernel/Assign$G/dense/kernel/Read/ReadVariableOp:0(2*G/dense/kernel/Initializer/random_normal:08
o
G/dense/bias:0G/dense/bias/Assign"G/dense/bias/Read/ReadVariableOp:0(2 G/dense/bias/Initializer/zeros:08
Ť
G/conv2d_transpose/kernel:0 G/conv2d_transpose/kernel/Assign/G/conv2d_transpose/kernel/Read/ReadVariableOp:0(25G/conv2d_transpose/kernel/Initializer/random_normal:08

G/conv2d_transpose/bias:0G/conv2d_transpose/bias/Assign-G/conv2d_transpose/bias/Read/ReadVariableOp:0(2+G/conv2d_transpose/bias/Initializer/zeros:08
Ş
G/batch_normalization/gamma:0"G/batch_normalization/gamma/Assign1G/batch_normalization/gamma/Read/ReadVariableOp:0(2.G/batch_normalization/gamma/Initializer/ones:08
§
G/batch_normalization/beta:0!G/batch_normalization/beta/Assign0G/batch_normalization/beta/Read/ReadVariableOp:0(2.G/batch_normalization/beta/Initializer/zeros:08
Á
#G/batch_normalization/moving_mean:0(G/batch_normalization/moving_mean/Assign7G/batch_normalization/moving_mean/Read/ReadVariableOp:0(25G/batch_normalization/moving_mean/Initializer/zeros:0
Đ
'G/batch_normalization/moving_variance:0,G/batch_normalization/moving_variance/Assign;G/batch_normalization/moving_variance/Read/ReadVariableOp:0(28G/batch_normalization/moving_variance/Initializer/ones:0
ł
G/conv2d_transpose_1/kernel:0"G/conv2d_transpose_1/kernel/Assign1G/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(27G/conv2d_transpose_1/kernel/Initializer/random_normal:08
Ł
G/conv2d_transpose_1/bias:0 G/conv2d_transpose_1/bias/Assign/G/conv2d_transpose_1/bias/Read/ReadVariableOp:0(2-G/conv2d_transpose_1/bias/Initializer/zeros:08
˛
G/batch_normalization_1/gamma:0$G/batch_normalization_1/gamma/Assign3G/batch_normalization_1/gamma/Read/ReadVariableOp:0(20G/batch_normalization_1/gamma/Initializer/ones:08
Ż
G/batch_normalization_1/beta:0#G/batch_normalization_1/beta/Assign2G/batch_normalization_1/beta/Read/ReadVariableOp:0(20G/batch_normalization_1/beta/Initializer/zeros:08
É
%G/batch_normalization_1/moving_mean:0*G/batch_normalization_1/moving_mean/Assign9G/batch_normalization_1/moving_mean/Read/ReadVariableOp:0(27G/batch_normalization_1/moving_mean/Initializer/zeros:0
Ř
)G/batch_normalization_1/moving_variance:0.G/batch_normalization_1/moving_variance/Assign=G/batch_normalization_1/moving_variance/Read/ReadVariableOp:0(2:G/batch_normalization_1/moving_variance/Initializer/ones:0
ł
G/conv2d_transpose_2/kernel:0"G/conv2d_transpose_2/kernel/Assign1G/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(27G/conv2d_transpose_2/kernel/Initializer/random_normal:08
Ł
G/conv2d_transpose_2/bias:0 G/conv2d_transpose_2/bias/Assign/G/conv2d_transpose_2/bias/Read/ReadVariableOp:0(2-G/conv2d_transpose_2/bias/Initializer/zeros:08

D/conv2d/kernel:0D/conv2d/kernel/Assign%D/conv2d/kernel/Read/ReadVariableOp:0(2+D/conv2d/kernel/Initializer/random_normal:08
s
D/conv2d/bias:0D/conv2d/bias/Assign#D/conv2d/bias/Read/ReadVariableOp:0(2!D/conv2d/bias/Initializer/zeros:08
Ş
D/batch_normalization/gamma:0"D/batch_normalization/gamma/Assign1D/batch_normalization/gamma/Read/ReadVariableOp:0(2.D/batch_normalization/gamma/Initializer/ones:08
§
D/batch_normalization/beta:0!D/batch_normalization/beta/Assign0D/batch_normalization/beta/Read/ReadVariableOp:0(2.D/batch_normalization/beta/Initializer/zeros:08
Á
#D/batch_normalization/moving_mean:0(D/batch_normalization/moving_mean/Assign7D/batch_normalization/moving_mean/Read/ReadVariableOp:0(25D/batch_normalization/moving_mean/Initializer/zeros:0
Đ
'D/batch_normalization/moving_variance:0,D/batch_normalization/moving_variance/Assign;D/batch_normalization/moving_variance/Read/ReadVariableOp:0(28D/batch_normalization/moving_variance/Initializer/ones:0

D/conv2d_1/kernel:0D/conv2d_1/kernel/Assign'D/conv2d_1/kernel/Read/ReadVariableOp:0(2-D/conv2d_1/kernel/Initializer/random_normal:08
{
D/conv2d_1/bias:0D/conv2d_1/bias/Assign%D/conv2d_1/bias/Read/ReadVariableOp:0(2#D/conv2d_1/bias/Initializer/zeros:08
˛
D/batch_normalization_1/gamma:0$D/batch_normalization_1/gamma/Assign3D/batch_normalization_1/gamma/Read/ReadVariableOp:0(20D/batch_normalization_1/gamma/Initializer/ones:08
Ż
D/batch_normalization_1/beta:0#D/batch_normalization_1/beta/Assign2D/batch_normalization_1/beta/Read/ReadVariableOp:0(20D/batch_normalization_1/beta/Initializer/zeros:08
É
%D/batch_normalization_1/moving_mean:0*D/batch_normalization_1/moving_mean/Assign9D/batch_normalization_1/moving_mean/Read/ReadVariableOp:0(27D/batch_normalization_1/moving_mean/Initializer/zeros:0
Ř
)D/batch_normalization_1/moving_variance:0.D/batch_normalization_1/moving_variance/Assign=D/batch_normalization_1/moving_variance/Read/ReadVariableOp:0(2:D/batch_normalization_1/moving_variance/Initializer/ones:0

D/conv2d_2/kernel:0D/conv2d_2/kernel/Assign'D/conv2d_2/kernel/Read/ReadVariableOp:0(2-D/conv2d_2/kernel/Initializer/random_normal:08
{
D/conv2d_2/bias:0D/conv2d_2/bias/Assign%D/conv2d_2/bias/Read/ReadVariableOp:0(2#D/conv2d_2/bias/Initializer/zeros:08
˛
D/batch_normalization_2/gamma:0$D/batch_normalization_2/gamma/Assign3D/batch_normalization_2/gamma/Read/ReadVariableOp:0(20D/batch_normalization_2/gamma/Initializer/ones:08
Ż
D/batch_normalization_2/beta:0#D/batch_normalization_2/beta/Assign2D/batch_normalization_2/beta/Read/ReadVariableOp:0(20D/batch_normalization_2/beta/Initializer/zeros:08
É
%D/batch_normalization_2/moving_mean:0*D/batch_normalization_2/moving_mean/Assign9D/batch_normalization_2/moving_mean/Read/ReadVariableOp:0(27D/batch_normalization_2/moving_mean/Initializer/zeros:0
Ř
)D/batch_normalization_2/moving_variance:0.D/batch_normalization_2/moving_variance/Assign=D/batch_normalization_2/moving_variance/Read/ReadVariableOp:0(2:D/batch_normalization_2/moving_variance/Initializer/ones:0

D/dense/kernel:0D/dense/kernel/Assign$D/dense/kernel/Read/ReadVariableOp:0(2*D/dense/kernel/Initializer/random_normal:08
o
D/dense/bias:0D/dense/bias/Assign"D/dense/bias/Read/ReadVariableOp:0(2 D/dense/bias/Initializer/zeros:08*o
Dj
3
x.
Placeholder_1:0˙˙˙˙˙˙˙˙˙  3
default(
D/dense/BiasAdd:0˙˙˙˙˙˙˙˙˙*{
Gv
*
z%
Placeholder:0˙˙˙˙˙˙˙˙˙H
default=
G/conv2d_transpose_2/Sigmoid:0˙˙˙˙˙˙˙˙˙  