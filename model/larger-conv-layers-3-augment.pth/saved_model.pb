Żá
ĹŠ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22unknown8Ź÷
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*!
_output_shapes
:*
dtype0

Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/v
z
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/v

*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*!
_output_shapes
:*
dtype0

Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/m
z
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/m

*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
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
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:
*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	
*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:*
dtype0
{
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/kernel
t
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*!
_output_shapes
:*
dtype0
s
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:*
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_8/kernel
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
Žm
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*él
valueßlBÜl BŐl
Đ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ˇ
layer-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Č
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias
 %_jit_compiled_convolution_op*

&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
Č
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op*

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
Č
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op*

D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 

J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
Ś
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias*
Ś
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias*
J
#0
$1
22
33
A4
B5
V6
W7
^8
_9*
J
#0
$1
22
33
A4
B5
V6
W7
^8
_9*
* 
°
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
etrace_0
ftrace_1
gtrace_2
htrace_3* 
6
itrace_0
jtrace_1
ktrace_2
ltrace_3* 
* 

miter

nbeta_1

obeta_2
	pdecay
qlearning_rate#m$m2m3mAmBmVmWm^m_m#v$v2v3vAvBvVvWv^v_v*

rserving_default* 

s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses* 
§
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
_random_generator*
Ž
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 

#0
$1*

#0
$1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

 trace_0* 

Ątrace_0* 

20
31*

20
31*
* 

˘non_trainable_variables
Łlayers
¤metrics
 Ľlayer_regularization_losses
Ślayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

§trace_0* 

¨trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Šnon_trainable_variables
Şlayers
Ťmetrics
 Źlayer_regularization_losses
­layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

Žtrace_0* 

Żtrace_0* 

A0
B1*

A0
B1*
* 

°non_trainable_variables
ąlayers
˛metrics
 łlayer_regularization_losses
´layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

ľtrace_0* 

śtrace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ˇnon_trainable_variables
¸layers
šmetrics
 şlayer_regularization_losses
ťlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

źtrace_0* 

˝trace_0* 
* 
* 
* 

žnon_trainable_variables
żlayers
Ŕmetrics
 Álayer_regularization_losses
Âlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

Ătrace_0* 

Ätrace_0* 

V0
W1*

V0
W1*
* 

Ĺnon_trainable_variables
Ćlayers
Çmetrics
 Člayer_regularization_losses
Élayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

Ętrace_0* 

Ëtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 

Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

Ńtrace_0* 

Ňtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
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
9*

Ó0
Ô1
Ő2*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Önon_trainable_variables
×layers
Řmetrics
 Ůlayer_regularization_losses
Úlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 

Űtrace_0* 

Ütrace_0* 
* 
* 
* 

Ýnon_trainable_variables
Ţlayers
ßmetrics
 ŕlayer_regularization_losses
álayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 

âtrace_0
ătrace_1* 

ätrace_0
ĺtrace_1* 

ć
_generator*
* 
* 
* 

çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ětrace_0
ítrace_1* 

îtrace_0
ďtrace_1* 

đ
_generator*
* 

0
1
2*
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
<
ń	variables
ň	keras_api

ótotal

ôcount*
M
ő	variables
ö	keras_api

÷total

řcount
ů
_fn_kwargs*
M
ú	variables
ű	keras_api

ütotal

ýcount
ţ
_fn_kwargs*
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

˙
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*

ó0
ô1*

ń	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

÷0
ř1*

ő	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ü0
ý1*

ú	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_1Rlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_sequential_4_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙
ď
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_4_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_28263
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_29600
°
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcount
StateVar_1StateVarAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_29739Ú

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29037

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ţ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29057

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
 
_user_specified_nameinputs
ř
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_29130

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â
Ď
,__inference_sequential_5_layer_call_fn_28158
sequential_4_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:
	unknown_8:	
	unknown_9:	


unknown_10:

identity˘StatefulPartitionedCallě
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_28102o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input
Ť

map_while_body_27613$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	˘2map/while/stateful_uniform_full_int/RngReadAndSkip˘4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ˇ
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: š
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskŁ
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ă
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskđ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::˘
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ł
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ł
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_27673*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_27672Ł
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ż
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ż
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ť
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Í
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ł
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskű
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ô
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ô
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_27722*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_27721
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:î
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éčŇQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: ź
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29320

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ż
č
6map_while_stateless_random_flip_left_right_false_29222u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityá
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
É	
ô
B__inference_dense_5_layer_call_and_return_conditional_losses_29117

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë

,__inference_sequential_4_layer_call_fn_28693

inputs
unknown:	
	unknown_0:	
identity˘StatefulPartitionedCallĺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27784y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ę
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_29078

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É	
ô
B__inference_dense_5_layer_call_and_return_conditional_losses_27951

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ˇ
Í
map_while_cond_27612$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_27612___redundant_placeholder0;
7map_while_map_while_cond_27612___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
š
K
/__inference_max_pooling2d_7_layer_call_fn_29032

inputs
identityŰ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â

G__inference_sequential_4_layer_call_and_return_conditional_losses_27818
rescaling_2_input!
random_flip_2_27811:	%
random_rotation_2_27814:	
identity˘%random_flip_2/StatefulPartitionedCall˘)random_rotation_2/StatefulPartitionedCallŐ
rescaling_2/PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0random_flip_2_27811*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27755¨
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_27814*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27584
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall:d `
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_namerescaling_2_input
Î


,__inference_sequential_5_layer_call_fn_28288

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
	unknown_6:	
	unknown_7:	

	unknown_8:

identity˘StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_27958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
G
+__inference_rescaling_2_layer_call_fn_29122

inputs
identityž
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ż
č
6map_while_stateless_random_flip_left_right_false_27673u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityá
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
 
_user_specified_nameinputs
ö	
˘
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_28780
random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity
Grandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:á
Brandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:É
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
E
ô	
 __inference__wrapped_model_27425
sequential_4_inputN
4sequential_5_conv2d_6_conv2d_readvariableop_resource: C
5sequential_5_conv2d_6_biasadd_readvariableop_resource: N
4sequential_5_conv2d_7_conv2d_readvariableop_resource: @C
5sequential_5_conv2d_7_biasadd_readvariableop_resource:@O
4sequential_5_conv2d_8_conv2d_readvariableop_resource:@D
5sequential_5_conv2d_8_biasadd_readvariableop_resource:	H
3sequential_5_dense_4_matmul_readvariableop_resource:C
4sequential_5_dense_4_biasadd_readvariableop_resource:	F
3sequential_5_dense_5_matmul_readvariableop_resource:	
B
4sequential_5_dense_5_biasadd_readvariableop_resource:

identity˘,sequential_5/conv2d_6/BiasAdd/ReadVariableOp˘+sequential_5/conv2d_6/Conv2D/ReadVariableOp˘,sequential_5/conv2d_7/BiasAdd/ReadVariableOp˘+sequential_5/conv2d_7/Conv2D/ReadVariableOp˘,sequential_5/conv2d_8/BiasAdd/ReadVariableOp˘+sequential_5/conv2d_8/Conv2D/ReadVariableOp˘+sequential_5/dense_4/BiasAdd/ReadVariableOp˘*sequential_5/dense_4/MatMul/ReadVariableOp˘+sequential_5/dense_5/BiasAdd/ReadVariableOp˘*sequential_5/dense_5/MatMul/ReadVariableOpq
,sequential_5/sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;s
.sequential_5/sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ˇ
)sequential_5/sequential_4/rescaling_2/mulMulsequential_4_input5sequential_5/sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ö
)sequential_5/sequential_4/rescaling_2/addAddV2-sequential_5/sequential_4/rescaling_2/mul:z:07sequential_5/sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
+sequential_5/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0î
sequential_5/conv2d_6/Conv2DConv2D-sequential_5/sequential_4/rescaling_2/add:z:03sequential_5/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingSAME*
strides

,sequential_5/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Á
sequential_5/conv2d_6/BiasAddBiasAdd%sequential_5/conv2d_6/Conv2D:output:04sequential_5/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
sequential_5/conv2d_6/ReluRelu&sequential_5/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Ć
$sequential_5/max_pooling2d_6/MaxPoolMaxPool(sequential_5/conv2d_6/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
ksize
*
paddingVALID*
strides
¨
+sequential_5/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ě
sequential_5/conv2d_7/Conv2DConv2D-sequential_5/max_pooling2d_6/MaxPool:output:03sequential_5/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
paddingSAME*
strides

,sequential_5/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ż
sequential_5/conv2d_7/BiasAddBiasAdd%sequential_5/conv2d_7/Conv2D:output:04sequential_5/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
sequential_5/conv2d_7/ReluRelu&sequential_5/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@Ć
$sequential_5/max_pooling2d_7/MaxPoolMaxPool(sequential_5/conv2d_7/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
ksize
*
paddingVALID*
strides
Š
+sequential_5/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0í
sequential_5/conv2d_8/Conv2DConv2D-sequential_5/max_pooling2d_7/MaxPool:output:03sequential_5/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides

,sequential_5/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŕ
sequential_5/conv2d_8/BiasAddBiasAdd%sequential_5/conv2d_8/Conv2D:output:04sequential_5/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
sequential_5/conv2d_8/ReluRelu&sequential_5/conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  Ç
$sequential_5/max_pooling2d_8/MaxPoolMaxPool(sequential_5/conv2d_8/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
m
sequential_5/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ł
sequential_5/flatten_2/ReshapeReshape-sequential_5/max_pooling2d_8/MaxPool:output:0%sequential_5/flatten_2/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0ľ
sequential_5/dense_4/MatMulMatMul'sequential_5/flatten_2/Reshape:output:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ś
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0´
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ľ
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp-^sequential_5/conv2d_6/BiasAdd/ReadVariableOp,^sequential_5/conv2d_6/Conv2D/ReadVariableOp-^sequential_5/conv2d_7/BiasAdd/ReadVariableOp,^sequential_5/conv2d_7/Conv2D/ReadVariableOp-^sequential_5/conv2d_8/BiasAdd/ReadVariableOp,^sequential_5/conv2d_8/Conv2D/ReadVariableOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2\
,sequential_5/conv2d_6/BiasAdd/ReadVariableOp,sequential_5/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_5/conv2d_6/Conv2D/ReadVariableOp+sequential_5/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_5/conv2d_7/BiasAdd/ReadVariableOp,sequential_5/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_5/conv2d_7/Conv2D/ReadVariableOp+sequential_5/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_5/conv2d_8/BiasAdd/ReadVariableOp,sequential_5/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_5/conv2d_8/Conv2D/ReadVariableOp+sequential_5/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input

Ü
2map_while_stateless_random_flip_up_down_true_29270p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29067

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť

map_while_body_29162$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	˘2map/while/stateful_uniform_full_int/RngReadAndSkip˘4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ˇ
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: š
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskŁ
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ă
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskđ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::˘
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ł
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ł
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_29222*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_29221Ł
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ż
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ż
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ť
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Í
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ł
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskű
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ô
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ô
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_29271*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_29270
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:î
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éčŇQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: ź
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ľ

H__inference_random_flip_2_layer_call_and_return_conditional_losses_27755

inputs
map_while_input_6:	
identity˘	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ĺ
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ž
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Â
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_27613* 
condR
map_while_cond_27612*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 2
	map/while	map/while:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
Ü
3map_while_stateless_random_flip_up_down_false_29271o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityŘ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

n
G__inference_sequential_4_layer_call_and_return_conditional_losses_27807
rescaling_2_input
identityŐ
rescaling_2/PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440ě
random_flip_2/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27446ö
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27452|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:d `
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_namerescaling_2_input
š
K
/__inference_max_pooling2d_8_layer_call_fn_29062

inputs
identityŰ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ĺ
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29438

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity˘stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ý˙˙˙˙˙˙˙˙j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů żY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ś
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ź
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˘
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ř
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ł
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ď
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ą
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ď
S
,__inference_sequential_4_layer_call_fn_27458
rescaling_2_input
identityĘ
PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27455j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:d `
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_namerescaling_2_input
Ś

Arandom_flip_2_map_while_stateless_random_flip_up_down_false_28830
random_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityrandom_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ź
č
5map_while_stateless_random_flip_left_right_true_29221v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Â
­
G__inference_sequential_4_layer_call_and_return_conditional_losses_28977

inputs-
random_flip_2_map_while_input_6:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	
identity˘random_flip_2/map/while˘1random_rotation_2/stateful_uniform/RngReadAndSkipW
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_2/mulMulinputsrescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
random_flip_2/map/ShapeShaperescaling_2/add:z:0*
T0*
_output_shapes
:o
%random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ť
random_flip_2/map/strided_sliceStridedSlice random_flip_2/map/Shape:output:0.random_flip_2/map/strided_slice/stack:output:00random_flip_2/map/strided_slice/stack_1:output:00random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙č
random_flip_2/map/TensorArrayV2TensorListReserve6random_flip_2/map/TensorArrayV2/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
Grandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
9random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrescaling_2/add:z:0Prandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇY
random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ě
!random_flip_2/map/TensorArrayV2_1TensorListReserve8random_flip_2/map/TensorArrayV2_1/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇf
$random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
random_flip_2/map/whileWhile-random_flip_2/map/while/loop_counter:output:0(random_flip_2/map/strided_slice:output:0 random_flip_2/map/Const:output:0*random_flip_2/map/TensorArrayV2_1:handle:0(random_flip_2/map/strided_slice:output:0Irandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *.
body&R$
"random_flip_2_map_while_body_28721*.
cond&R$
"random_flip_2_map_while_cond_28720*!
output_shapes
: : : : : : : 
Brandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ţ
4random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_2/map/while:output:3Krandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
random_rotation_2/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ť
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ý˙˙˙˙˙˙˙˙|
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙s
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ł
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙|
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙s
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ł
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů żk
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů ?r
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ś
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ţ
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskĄ
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ü
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ľ
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ĺ
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙°
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: Í
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
"random_rotation_2/stateful_uniformAddV2*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ą
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ˛
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ´
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙´
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙´
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙p
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ĺ
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ą
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ś
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ś
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙´
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙r
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @É
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙}
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ű
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ž
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ž
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ž
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ž
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ˛
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ů
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ň
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!random_rotation_2/transform/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *     
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR¤
IdentityIdentityKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^random_flip_2/map/while2^random_rotation_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
random_flip_2/map/whilerandom_flip_2/map/while2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29027

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
 
_user_specified_nameinputs

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27452

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˘8

G__inference_sequential_5_layer_call_and_return_conditional_losses_28364

inputsA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@7
(conv2d_8_biasadd_readvariableop_resource:	;
&dense_4_matmul_readvariableop_resource:6
'dense_4_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	
5
'dense_5_biasadd_readvariableop_resource:

identity˘conv2d_6/BiasAdd/ReadVariableOp˘conv2d_6/Conv2D/ReadVariableOp˘conv2d_7/BiasAdd/ReadVariableOp˘conv2d_7/Conv2D/ReadVariableOp˘conv2d_8/BiasAdd/ReadVariableOp˘conv2d_8/Conv2D/ReadVariableOp˘dense_4/BiasAdd/ReadVariableOp˘dense_4/MatMul/ReadVariableOp˘dense_5/BiasAdd/ReadVariableOp˘dense_5/MatMul/ReadVariableOpd
sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential_4/rescaling_2/mulMulinputs(sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ż
sequential_4/rescaling_2/addAddV2 sequential_4/rescaling_2/mul:z:0*sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ç
conv2d_6/Conv2DConv2D sequential_4/rescaling_2/add:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Ź
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ĺ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@Ź
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ć
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  k
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  ­
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_2/ReshapeReshape max_pooling2d_8/MaxPool:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ă
,__inference_sequential_5_layer_call_fn_28317

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:
	unknown_8:	
	unknown_9:	


unknown_10:

identity˘StatefulPartitionedCallŕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_28102o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É
ű

/sequential_4_random_flip_2_map_while_body_28384Z
Vsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_loop_counterU
Qsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice4
0sequential_4_random_flip_2_map_while_placeholder6
2sequential_4_random_flip_2_map_while_placeholder_1Y
Usequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice_1_0
sequential_4_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_4_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0f
Xsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	1
-sequential_4_random_flip_2_map_while_identity3
/sequential_4_random_flip_2_map_while_identity_13
/sequential_4_random_flip_2_map_while_identity_23
/sequential_4_random_flip_2_map_while_identity_3W
Ssequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice_1
sequential_4_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_4_random_flip_2_map_tensorarrayunstack_tensorlistfromtensord
Vsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	˘Msequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip˘Osequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipŤ
Vsequential_4/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ż
Hsequential_4/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_4_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_4_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_00sequential_4_random_flip_2_map_while_placeholder_sequential_4/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
Dsequential_4/random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Dsequential_4/random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_4/random_flip_2/map/while/stateful_uniform_full_int/ProdProdMsequential_4/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Msequential_4/random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Esequential_4/random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ë
Esequential_4/random_flip_2/map/while/stateful_uniform_full_int/Cast_1CastLsequential_4/random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: đ
Msequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipXsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Nsequential_4/random_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0Isequential_4/random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Rsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Tsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Tsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Lsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceUsequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0[sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0]sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0]sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskŮ
Fsequential_4/random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastUsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Tsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceUsequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0_sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0_sequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ý
Hsequential_4/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastWsequential_4/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Bsequential_4/random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ę
>sequential_4/random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Msequential_4/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Qsequential_4/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Osequential_4/random_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0Ksequential_4/random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	y
/sequential_4/random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ç
*sequential_4/random_flip_2/map/while/stackPackGsequential_4/random_flip_2/map/while/stateful_uniform_full_int:output:08sequential_4/random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
8sequential_4/random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:sequential_4/random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
:sequential_4/random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
2sequential_4/random_flip_2/map/while/strided_sliceStridedSlice3sequential_4/random_flip_2/map/while/stack:output:0Asequential_4/random_flip_2/map/while/strided_slice/stack:output:0Csequential_4/random_flip_2/map/while/strided_slice/stack_1:output:0Csequential_4/random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÁ
Xsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityOsequential_4/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*[
_classQ
OMloc:@sequential_4/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:§
dsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB §
bsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    §
bsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ú
{sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter;sequential_4/random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::˝
{sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :­
wsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2msequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ä
bsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubksequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ksequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ő
bsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0fsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ý
^sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2fsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ksequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Lsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ž
Jsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/LessLessbsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Usequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
Esequential_4/random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfNsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Less:z:0asequential_4/random_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *d
else_branchURS
Qsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_false_28444*#
output_shapes
:*c
then_branchTRR
Psequential_4_random_flip_2_map_while_stateless_random_flip_left_right_true_28443Ů
Nsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityNsequential_4/random_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
Fsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdOsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Osequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
Gsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ď
Gsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastNsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ć
Osequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipXsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0Ksequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0N^sequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Tsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:  
Vsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceWsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0]sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0_sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0_sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÝ
Hsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastWsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0 
Vsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:˘
Xsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:˘
Xsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Psequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceWsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0asequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0asequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:á
Jsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastYsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Dsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ô
@sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Osequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Ssequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Qsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0Msequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_4/random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R í
,sequential_4/random_flip_2/map/while/stack_1PackIsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1:output:0:sequential_4/random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
:sequential_4/random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
<sequential_4/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
<sequential_4/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ş
4sequential_4/random_flip_2/map/while/strided_slice_1StridedSlice5sequential_4/random_flip_2/map/while/stack_1:output:0Csequential_4/random_flip_2/map/while/strided_slice_1/stack:output:0Esequential_4/random_flip_2/map/while/strided_slice_1/stack_1:output:0Esequential_4/random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskĚ
Usequential_4/random_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityWsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*a
_classW
USloc:@sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:¤
asequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ¤
_sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
_sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ů
xsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_4/random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::ş
xsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
tsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2jsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0~sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: Ű
_sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubhsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0hsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ë
_sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMul}sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0csequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ô
[sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2csequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0hsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Isequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ľ
Gsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/LessLess_sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Rsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ű
Bsequential_4/random_flip_2/map/while/stateless_random_flip_up_downStatelessIfKsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0^sequential_4/random_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *a
else_branchRRP
Nsequential_4_random_flip_2_map_while_stateless_random_flip_up_down_false_28493*#
output_shapes
:*`
then_branchQRO
Msequential_4_random_flip_2_map_while_stateless_random_flip_up_down_true_28492Ó
Ksequential_4/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityKsequential_4/random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:Ú
Isequential_4/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_4_random_flip_2_map_while_placeholder_10sequential_4_random_flip_2_map_while_placeholderTsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éčŇl
*sequential_4/random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :š
(sequential_4/random_flip_2/map/while/addAddV20sequential_4_random_flip_2_map_while_placeholder3sequential_4/random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_4/random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ă
*sequential_4/random_flip_2/map/while/add_1AddV2Vsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_loop_counter5sequential_4/random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: ś
-sequential_4/random_flip_2/map/while/IdentityIdentity.sequential_4/random_flip_2/map/while/add_1:z:0*^sequential_4/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: Ű
/sequential_4/random_flip_2/map/while/Identity_1IdentityQsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice*^sequential_4/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ś
/sequential_4/random_flip_2/map/while/Identity_2Identity,sequential_4/random_flip_2/map/while/add:z:0*^sequential_4/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ă
/sequential_4/random_flip_2/map/while/Identity_3IdentityYsequential_4/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^sequential_4/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: 
)sequential_4/random_flip_2/map/while/NoOpNoOpN^sequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipP^sequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "g
-sequential_4_random_flip_2_map_while_identity6sequential_4/random_flip_2/map/while/Identity:output:0"k
/sequential_4_random_flip_2_map_while_identity_18sequential_4/random_flip_2/map/while/Identity_1:output:0"k
/sequential_4_random_flip_2_map_while_identity_28sequential_4/random_flip_2/map/while/Identity_2:output:0"k
/sequential_4_random_flip_2_map_while_identity_38sequential_4/random_flip_2/map/while/Identity_3:output:0"Ź
Ssequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice_1Usequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice_1_0"˛
Vsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceXsequential_4_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Ś
sequential_4_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_4_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorsequential_4_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_4_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
Msequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipMsequential_4/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2˘
Osequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipOsequential_4/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_28997

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
÷,
ĺ
G__inference_sequential_5_layer_call_and_return_conditional_losses_28230
sequential_4_input 
sequential_4_28195:	 
sequential_4_28197:	(
conv2d_6_28200: 
conv2d_6_28202: (
conv2d_7_28206: @
conv2d_7_28208:@)
conv2d_8_28212:@
conv2d_8_28214:	"
dense_4_28219:
dense_4_28221:	 
dense_5_28224:	

dense_5_28226:

identity˘ conv2d_6/StatefulPartitionedCall˘ conv2d_7/StatefulPartitionedCall˘ conv2d_8/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘$sequential_4/StatefulPartitionedCall
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputsequential_4_28195sequential_4_28197*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27784Ą
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_6_28200conv2d_6_28202*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873ó
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_28206conv2d_7_28208*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891ó
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_28212conv2d_8_28214*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909ô
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851ŕ
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_28219dense_4_28221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_27935
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_28224dense_5_28226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_27951w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input
Á

G__inference_sequential_4_layer_call_and_return_conditional_losses_27784

inputs!
random_flip_2_27777:	%
random_rotation_2_27780:	
identity˘%random_flip_2/StatefulPartitionedCall˘)random_rotation_2/StatefulPartitionedCallĘ
rescaling_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0random_flip_2_27777*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27755¨
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_27780*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27584
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ď

(__inference_conv2d_8_layer_call_fn_29046

inputs"
unknown:@
	unknown_0:	
identity˘StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29007

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ó,
Ů
G__inference_sequential_5_layer_call_and_return_conditional_losses_28102

inputs 
sequential_4_28067:	 
sequential_4_28069:	(
conv2d_6_28072: 
conv2d_6_28074: (
conv2d_7_28078: @
conv2d_7_28080:@)
conv2d_8_28084:@
conv2d_8_28086:	"
dense_4_28091:
dense_4_28093:	 
dense_5_28096:	

dense_5_28098:

identity˘ conv2d_6/StatefulPartitionedCall˘ conv2d_7/StatefulPartitionedCall˘ conv2d_8/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘$sequential_4/StatefulPartitionedCall
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_28067sequential_4_28069*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27784Ą
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_6_28072conv2d_6_28074*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873ó
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_28078conv2d_7_28080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891ó
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_28084conv2d_8_28086*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909ô
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851ŕ
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_28091dense_4_28093*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_27935
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_28096dense_5_28098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_27951w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ď	

@random_flip_2_map_while_stateless_random_flip_up_down_true_28829
random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity
Drandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ő
?random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyMrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ă
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityHrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ľ

H__inference_random_flip_2_layer_call_and_return_conditional_losses_29304

inputs
map_while_input_6:	
identity˘	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ĺ
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ž
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Â
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_29162* 
condR
map_while_cond_29161*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 2
	map/while	map/while:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
­*
î
G__inference_sequential_5_layer_call_and_return_conditional_losses_27958

inputs(
conv2d_6_27874: 
conv2d_6_27876: (
conv2d_7_27892: @
conv2d_7_27894:@)
conv2d_8_27910:@
conv2d_8_27912:	"
dense_4_27936:
dense_4_27938:	 
dense_5_27952:	

dense_5_27954:

identity˘ conv2d_6/StatefulPartitionedCall˘ conv2d_7/StatefulPartitionedCall˘ conv2d_8/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCallĚ
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27455
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_6_27874conv2d_6_27876*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873ó
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_27892conv2d_7_27894*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891ó
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_27910conv2d_8_27912*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909ô
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851ŕ
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_27936dense_4_27938*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_27935
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_27952dense_5_27954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_27951w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ó

(__inference_conv2d_6_layer_call_fn_28986

inputs!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallĺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë

(__inference_conv2d_7_layer_call_fn_29016

inputs!
unknown: @
	unknown_0:@
identity˘StatefulPartitionedCallă
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
 
_user_specified_nameinputs

Ü
2map_while_stateless_random_flip_up_down_true_27721p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

 
,__inference_sequential_4_layer_call_fn_27800
rescaling_2_input
unknown:	
	unknown_0:	
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallrescaling_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27784y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_namerescaling_2_input
Š

÷
B__inference_dense_4_layer_call_and_return_conditional_losses_29098

inputs3
matmul_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Đ
I
-__inference_random_flip_2_layer_call_fn_29135

inputs
identityŔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27446j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27446

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Î

1__inference_random_rotation_2_layer_call_fn_29316

inputs
unknown:	
identity˘StatefulPartitionedCallŢ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27584y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
çŞ
ň
!__inference__traced_restore_29739
file_prefix:
 assignvariableop_conv2d_6_kernel: .
 assignvariableop_1_conv2d_6_bias: <
"assignvariableop_2_conv2d_7_kernel: @.
 assignvariableop_3_conv2d_7_bias:@=
"assignvariableop_4_conv2d_8_kernel:@/
 assignvariableop_5_conv2d_8_bias:	6
!assignvariableop_6_dense_4_kernel:.
assignvariableop_7_dense_4_bias:	4
!assignvariableop_8_dense_5_kernel:	
-
assignvariableop_9_dense_5_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_2: %
assignvariableop_16_count_2: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: #
assignvariableop_19_total: #
assignvariableop_20_count: ,
assignvariableop_21_statevar_1:	*
assignvariableop_22_statevar:	D
*assignvariableop_23_adam_conv2d_6_kernel_m: 6
(assignvariableop_24_adam_conv2d_6_bias_m: D
*assignvariableop_25_adam_conv2d_7_kernel_m: @6
(assignvariableop_26_adam_conv2d_7_bias_m:@E
*assignvariableop_27_adam_conv2d_8_kernel_m:@7
(assignvariableop_28_adam_conv2d_8_bias_m:	>
)assignvariableop_29_adam_dense_4_kernel_m:6
'assignvariableop_30_adam_dense_4_bias_m:	<
)assignvariableop_31_adam_dense_5_kernel_m:	
5
'assignvariableop_32_adam_dense_5_bias_m:
D
*assignvariableop_33_adam_conv2d_6_kernel_v: 6
(assignvariableop_34_adam_conv2d_6_bias_v: D
*assignvariableop_35_adam_conv2d_7_kernel_v: @6
(assignvariableop_36_adam_conv2d_7_bias_v:@E
*assignvariableop_37_adam_conv2d_8_kernel_v:@7
(assignvariableop_38_adam_conv2d_8_bias_v:	>
)assignvariableop_39_adam_dense_4_kernel_v:6
'assignvariableop_40_adam_dense_4_bias_v:	<
)assignvariableop_41_adam_dense_5_kernel_v:	
5
'assignvariableop_42_adam_dense_5_bias_v:

identity_44˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Ś
valueB,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHČ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ý
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ć
_output_shapesł
°::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_statevar_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_statevarIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_7_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_8_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_8_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_5_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_5_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_6_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_6_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_7_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_7_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_8_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_8_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_4_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_4_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_5_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_5_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: î
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ŮŻ
Ě
"random_flip_2_map_while_body_28721@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1?
;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0{
wrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_2_map_while_identity&
"random_flip_2_map_while_identity_1&
"random_flip_2_map_while_identity_2&
"random_flip_2_map_while_identity_3=
9random_flip_2_map_while_random_flip_2_map_strided_slice_1y
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	˘@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip˘Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip
Irandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ý
;random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_2_map_while_placeholderRrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
7random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ă
6random_flip_2/map/while/stateful_uniform_full_int/ProdProd@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0@random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ą
8random_flip_2/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ź
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Erandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
?random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskż
9random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
Arandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ă
;random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
1random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ŕ
random_flip_2/map/while/stackPack:random_flip_2/map/while/stateful_uniform_full_int:output:0+random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ď
%random_flip_2/map/while/strided_sliceStridedSlice&random_flip_2/map/while/stack:output:04random_flip_2/map/while/strided_slice/stack:output:06random_flip_2/map/while/strided_slice/stack_1:output:06random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Krandom_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ŕ
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::°
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :é
jrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ˝
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Í
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ś
Qrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
?random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
=random_flip_2/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: É
8random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_2/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *W
else_branchHRF
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_28781*#
output_shapes
:*V
then_branchGRE
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_28780ż
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
9random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: é
8random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdBrandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Brandom_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: |
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ľ
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastArandom_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Crandom_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0>random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0A^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Grandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
Arandom_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskĂ
;random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastJrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
Crandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ç
=random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastLrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
3random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Brandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Frandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Drandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0@random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	n
$random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ć
random_flip_2/map/while/stack_1Pack<random_flip_2/map/while/stateful_uniform_full_int_1:output:0-random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:~
-random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ů
'random_flip_2/map/while/strided_slice_1StridedSlice(random_flip_2/map/while/stack_1:output:06random_flip_2/map/while/strided_slice_1/stack:output:08random_flip_2/map/while/strided_slice_1/stack_1:output:08random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskĽ
Hrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*T
_classJ
HFloc:@random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ß
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::­
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ú
grandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2]random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0qrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0urandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ´
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ä
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulprandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ­
Nrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
<random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ţ
:random_flip_2/map/while/stateless_random_flip_up_down/LessLessRrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Erandom_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ş
5random_flip_2/map/while/stateless_random_flip_up_downStatelessIf>random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0Qrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *T
else_branchERC
Arandom_flip_2_map_while_stateless_random_flip_up_down_false_28830*#
output_shapes
:*S
then_branchDRB
@random_flip_2_map_while_stateless_random_flip_up_down_true_28829š
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity>random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:Ś
<random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_2_map_while_placeholder_1#random_flip_2_map_while_placeholderGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éčŇ_
random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip_2/map/while/addAddV2#random_flip_2_map_while_placeholder&random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ż
random_flip_2/map/while/add_1AddV2<random_flip_2_map_while_random_flip_2_map_while_loop_counter(random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
 random_flip_2/map/while/IdentityIdentity!random_flip_2/map/while/add_1:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: §
"random_flip_2/map/while/Identity_1Identity7random_flip_2_map_while_random_flip_2_map_strided_slice^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: 
"random_flip_2/map/while/Identity_2Identityrandom_flip_2/map/while/add:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ź
"random_flip_2/map/while/Identity_3IdentityLrandom_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ć
random_flip_2/map/while/NoOpNoOpA^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipC^random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0"Q
"random_flip_2_map_while_identity_1+random_flip_2/map/while/Identity_1:output:0"Q
"random_flip_2_map_while_identity_2+random_flip_2/map/while/Identity_2:output:0"Q
"random_flip_2_map_while_identity_3+random_flip_2/map/while/Identity_3:output:0"x
9random_flip_2_map_while_random_flip_2_map_strided_slice_1;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0"
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"đ
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipBrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29146

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ř
M
1__inference_random_rotation_2_layer_call_fn_29309

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27452j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ţ

"random_flip_2_map_while_cond_28720@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1@
<random_flip_2_map_while_less_random_flip_2_map_strided_sliceW
Srandom_flip_2_map_while_random_flip_2_map_while_cond_28720___redundant_placeholder0W
Srandom_flip_2_map_while_random_flip_2_map_while_cond_28720___redundant_placeholder1$
 random_flip_2_map_while_identity
¨
random_flip_2/map/while/LessLess#random_flip_2_map_while_placeholder<random_flip_2_map_while_less_random_flip_2_map_strided_slice*
T0*
_output_shapes
: ž
random_flip_2/map/while/Less_1Less<random_flip_2_map_while_random_flip_2_map_while_loop_counter7random_flip_2_map_while_random_flip_2_map_strided_slice*
T0*
_output_shapes
: 
"random_flip_2/map/while/LogicalAnd
LogicalAnd"random_flip_2/map/while/Less_1:z:0 random_flip_2/map/while/Less:z:0*
_output_shapes
: u
 random_flip_2/map/while/IdentityIdentity&random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Š

÷
B__inference_dense_4_layer_call_and_return_conditional_losses_27935

inputs3
matmul_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ę
Nsequential_4_random_flip_2_map_while_stateless_random_flip_up_down_false_28493Ś
Ąsequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identityŞ
Ksequential_4/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityĄsequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"Ł
Ksequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
š
K
/__inference_max_pooling2d_6_layer_call_fn_29002

inputs
identityŰ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ś
E
)__inference_flatten_2_layer_call_fn_29072

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
Ü
3map_while_stateless_random_flip_up_down_false_27722o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityŘ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:



G__inference_sequential_5_layer_call_and_return_conditional_losses_28679

inputs:
,sequential_4_random_flip_2_map_while_input_6:	U
Gsequential_4_random_rotation_2_stateful_uniform_rngreadandskip_resource:	A
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@7
(conv2d_8_biasadd_readvariableop_resource:	;
&dense_4_matmul_readvariableop_resource:6
'dense_4_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	
5
'dense_5_biasadd_readvariableop_resource:

identity˘conv2d_6/BiasAdd/ReadVariableOp˘conv2d_6/Conv2D/ReadVariableOp˘conv2d_7/BiasAdd/ReadVariableOp˘conv2d_7/Conv2D/ReadVariableOp˘conv2d_8/BiasAdd/ReadVariableOp˘conv2d_8/Conv2D/ReadVariableOp˘dense_4/BiasAdd/ReadVariableOp˘dense_4/MatMul/ReadVariableOp˘dense_5/BiasAdd/ReadVariableOp˘dense_5/MatMul/ReadVariableOp˘$sequential_4/random_flip_2/map/while˘>sequential_4/random_rotation_2/stateful_uniform/RngReadAndSkipd
sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential_4/rescaling_2/mulMulinputs(sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ż
sequential_4/rescaling_2/addAddV2 sequential_4/rescaling_2/mul:z:0*sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙t
$sequential_4/random_flip_2/map/ShapeShape sequential_4/rescaling_2/add:z:0*
T0*
_output_shapes
:|
2sequential_4/random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_4/random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_4/random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ě
,sequential_4/random_flip_2/map/strided_sliceStridedSlice-sequential_4/random_flip_2/map/Shape:output:0;sequential_4/random_flip_2/map/strided_slice/stack:output:0=sequential_4/random_flip_2/map/strided_slice/stack_1:output:0=sequential_4/random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
:sequential_4/random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
,sequential_4/random_flip_2/map/TensorArrayV2TensorListReserveCsequential_4/random_flip_2/map/TensorArrayV2/element_shape:output:05sequential_4/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇŠ
Tsequential_4/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ą
Fsequential_4/random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_4/rescaling_2/add:z:0]sequential_4/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇf
$sequential_4/random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
<sequential_4/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
.sequential_4/random_flip_2/map/TensorArrayV2_1TensorListReserveEsequential_4/random_flip_2/map/TensorArrayV2_1/element_shape:output:05sequential_4/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇs
1sequential_4/random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
$sequential_4/random_flip_2/map/whileWhile:sequential_4/random_flip_2/map/while/loop_counter:output:05sequential_4/random_flip_2/map/strided_slice:output:0-sequential_4/random_flip_2/map/Const:output:07sequential_4/random_flip_2/map/TensorArrayV2_1:handle:05sequential_4/random_flip_2/map/strided_slice:output:0Vsequential_4/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0,sequential_4_random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *;
body3R1
/sequential_4_random_flip_2_map_while_body_28384*;
cond3R1
/sequential_4_random_flip_2_map_while_cond_28383*!
output_shapes
: : : : : : : ¤
Osequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ľ
Asequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_4/random_flip_2/map/while:output:3Xsequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
$sequential_4/random_rotation_2/ShapeShapeJsequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:|
2sequential_4/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_4/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_4/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ě
,sequential_4/random_rotation_2/strided_sliceStridedSlice-sequential_4/random_rotation_2/Shape:output:0;sequential_4/random_rotation_2/strided_slice/stack:output:0=sequential_4/random_rotation_2/strided_slice/stack_1:output:0=sequential_4/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4sequential_4/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ý˙˙˙˙˙˙˙˙
6sequential_4/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙
6sequential_4/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
.sequential_4/random_rotation_2/strided_slice_1StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_1/stack:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
#sequential_4/random_rotation_2/CastCast7sequential_4/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
4sequential_4/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙
6sequential_4/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
6sequential_4/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
.sequential_4/random_rotation_2/strided_slice_2StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_2/stack:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%sequential_4/random_rotation_2/Cast_1Cast7sequential_4/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ˘
5sequential_4/random_rotation_2/stateful_uniform/shapePack5sequential_4/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_4/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů żx
3sequential_4/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů ?
5sequential_4/random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ý
4sequential_4/random_rotation_2/stateful_uniform/ProdProd>sequential_4/random_rotation_2/stateful_uniform/shape:output:0>sequential_4/random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_4/random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :­
6sequential_4/random_rotation_2/stateful_uniform/Cast_1Cast=sequential_4/random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ˛
>sequential_4/random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_4_random_rotation_2_stateful_uniform_rngreadandskip_resource?sequential_4/random_rotation_2/stateful_uniform/Cast/x:output:0:sequential_4/random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Csequential_4/random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_4/random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Esequential_4/random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
=sequential_4/random_rotation_2/stateful_uniform/strided_sliceStridedSliceFsequential_4/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Lsequential_4/random_rotation_2/stateful_uniform/strided_slice/stack:output:0Nsequential_4/random_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Nsequential_4/random_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskť
7sequential_4/random_rotation_2/stateful_uniform/BitcastBitcastFsequential_4/random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Esequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gsequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˝
?sequential_4/random_rotation_2/stateful_uniform/strided_slice_1StridedSliceFsequential_4/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Nsequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Psequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_4/random_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ż
9sequential_4/random_rotation_2/stateful_uniform/Bitcast_1BitcastHsequential_4/random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Lsequential_4/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ś
Hsequential_4/random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_4/random_rotation_2/stateful_uniform/shape:output:0Bsequential_4/random_rotation_2/stateful_uniform/Bitcast_1:output:0@sequential_4/random_rotation_2/stateful_uniform/Bitcast:output:0Usequential_4/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙×
3sequential_4/random_rotation_2/stateful_uniform/subSub<sequential_4/random_rotation_2/stateful_uniform/max:output:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ô
3sequential_4/random_rotation_2/stateful_uniform/mulMulQsequential_4/random_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:07sequential_4/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
/sequential_4/random_rotation_2/stateful_uniformAddV27sequential_4/random_rotation_2/stateful_uniform/mul:z:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙y
4sequential_4/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
2sequential_4/random_rotation_2/rotation_matrix/subSub)sequential_4/random_rotation_2/Cast_1:y:0=sequential_4/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
2sequential_4/random_rotation_2/rotation_matrix/CosCos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential_4/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Č
4sequential_4/random_rotation_2/rotation_matrix/sub_1Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: Ů
2sequential_4/random_rotation_2/rotation_matrix/mulMul6sequential_4/random_rotation_2/rotation_matrix/Cos:y:08sequential_4/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
2sequential_4/random_rotation_2/rotation_matrix/SinSin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential_4/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ć
4sequential_4/random_rotation_2/rotation_matrix/sub_2Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Ű
4sequential_4/random_rotation_2/rotation_matrix/mul_1Mul6sequential_4/random_rotation_2/rotation_matrix/Sin:y:08sequential_4/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
4sequential_4/random_rotation_2/rotation_matrix/sub_3Sub6sequential_4/random_rotation_2/rotation_matrix/mul:z:08sequential_4/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
4sequential_4/random_rotation_2/rotation_matrix/sub_4Sub6sequential_4/random_rotation_2/rotation_matrix/sub:z:08sequential_4/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙}
8sequential_4/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ě
6sequential_4/random_rotation_2/rotation_matrix/truedivRealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_4:z:0Asequential_4/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential_4/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ć
4sequential_4/random_rotation_2/rotation_matrix/sub_5Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
4sequential_4/random_rotation_2/rotation_matrix/Sin_1Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential_4/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Č
4sequential_4/random_rotation_2/rotation_matrix/sub_6Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Ý
4sequential_4/random_rotation_2/rotation_matrix/mul_2Mul8sequential_4/random_rotation_2/rotation_matrix/Sin_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
4sequential_4/random_rotation_2/rotation_matrix/Cos_1Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential_4/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ć
4sequential_4/random_rotation_2/rotation_matrix/sub_7Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Ý
4sequential_4/random_rotation_2/rotation_matrix/mul_3Mul8sequential_4/random_rotation_2/rotation_matrix/Cos_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
2sequential_4/random_rotation_2/rotation_matrix/addAddV28sequential_4/random_rotation_2/rotation_matrix/mul_2:z:08sequential_4/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
4sequential_4/random_rotation_2/rotation_matrix/sub_8Sub8sequential_4/random_rotation_2/rotation_matrix/sub_5:z:06sequential_4/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
:sequential_4/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @đ
8sequential_4/random_rotation_2/rotation_matrix/truediv_1RealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_8:z:0Csequential_4/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
4sequential_4/random_rotation_2/rotation_matrix/ShapeShape3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
Bsequential_4/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ź
<sequential_4/random_rotation_2/rotation_matrix/strided_sliceStridedSlice=sequential_4/random_rotation_2/rotation_matrix/Shape:output:0Ksequential_4/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4sequential_4/random_rotation_2/rotation_matrix/Cos_2Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ď
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
4sequential_4/random_rotation_2/rotation_matrix/Sin_2Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ď
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask´
2sequential_4/random_rotation_2/rotation_matrix/NegNegGsequential_4/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ń
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice:sequential_4/random_rotation_2/rotation_matrix/truediv:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
4sequential_4/random_rotation_2/rotation_matrix/Sin_3Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ď
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
4sequential_4/random_rotation_2/rotation_matrix/Cos_3Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ď
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ó
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice<sequential_4/random_rotation_2/rotation_matrix/truediv_1:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask
=sequential_4/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
;sequential_4/random_rotation_2/rotation_matrix/zeros/packedPackEsequential_4/random_rotation_2/rotation_matrix/strided_slice:output:0Fsequential_4/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_4/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ů
4sequential_4/random_rotation_2/rotation_matrix/zerosFillDsequential_4/random_rotation_2/rotation_matrix/zeros/packed:output:0Csequential_4/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_4/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ľ
5sequential_4/random_rotation_2/rotation_matrix/concatConcatV2Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_1:output:06sequential_4/random_rotation_2/rotation_matrix/Neg:y:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_3:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_4:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_5:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_6:output:0=sequential_4/random_rotation_2/rotation_matrix/zeros:output:0Csequential_4/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
.sequential_4/random_rotation_2/transform/ShapeShapeJsequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
<sequential_4/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
>sequential_4/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>sequential_4/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6sequential_4/random_rotation_2/transform/strided_sliceStridedSlice7sequential_4/random_rotation_2/transform/Shape:output:0Esequential_4/random_rotation_2/transform/strided_slice/stack:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_1:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_4/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    á
Csequential_4/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Jsequential_4/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0>sequential_4/random_rotation_2/rotation_matrix/concat:output:0?sequential_4/random_rotation_2/transform/strided_slice:output:0<sequential_4/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0˙
conv2d_6/Conv2DConv2DXsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Ź
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ĺ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@Ź
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ć
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  k
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  ­
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_2/ReshapeReshape max_pooling2d_8/MaxPool:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp%^sequential_4/random_flip_2/map/while?^sequential_4/random_rotation_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2L
$sequential_4/random_flip_2/map/while$sequential_4/random_flip_2/map/while2
>sequential_4/random_rotation_2/stateful_uniform/RngReadAndSkip>sequential_4/random_rotation_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â


#__inference_signature_wrapper_28263
sequential_4_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
	unknown_6:	
	unknown_7:	

	unknown_8:

identity˘StatefulPartitionedCallŹ
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_27425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input
ĺ
Ç
/sequential_4_random_flip_2_map_while_cond_28383Z
Vsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_loop_counterU
Qsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice4
0sequential_4_random_flip_2_map_while_placeholder6
2sequential_4_random_flip_2_map_while_placeholder_1Z
Vsequential_4_random_flip_2_map_while_less_sequential_4_random_flip_2_map_strided_sliceq
msequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_cond_28383___redundant_placeholder0q
msequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_cond_28383___redundant_placeholder11
-sequential_4_random_flip_2_map_while_identity
Ü
)sequential_4/random_flip_2/map/while/LessLess0sequential_4_random_flip_2_map_while_placeholderVsequential_4_random_flip_2_map_while_less_sequential_4_random_flip_2_map_strided_slice*
T0*
_output_shapes
: ˙
+sequential_4/random_flip_2/map/while/Less_1LessVsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_while_loop_counterQsequential_4_random_flip_2_map_while_sequential_4_random_flip_2_map_strided_slice*
T0*
_output_shapes
: ľ
/sequential_4/random_flip_2/map/while/LogicalAnd
LogicalAnd/sequential_4/random_flip_2/map/while/Less_1:z:0-sequential_4/random_flip_2/map/while/Less:z:0*
_output_shapes
: 
-sequential_4/random_flip_2/map/while/IdentityIdentity3sequential_4/random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_4_random_flip_2_map_while_identity6sequential_4/random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ĺ
}
-__inference_random_flip_2_layer_call_fn_29142

inputs
unknown:	
identity˘StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27755y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ń*
ú
G__inference_sequential_5_layer_call_and_return_conditional_losses_28192
sequential_4_input(
conv2d_6_28162: 
conv2d_6_28164: (
conv2d_7_28168: @
conv2d_7_28170:@)
conv2d_8_28174:@
conv2d_8_28176:	"
dense_4_28181:
dense_4_28183:	 
dense_5_28186:	

dense_5_28188:

identity˘ conv2d_6/StatefulPartitionedCall˘ conv2d_7/StatefulPartitionedCall˘ conv2d_8/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCallŘ
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27455
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_6_28162conv2d_6_28164*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27873ó
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_28168conv2d_7_28170*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27891ó
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_28174conv2d_8_28176*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909ô
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851ŕ
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_28181dense_4_28183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_27935
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_28186dense_5_28188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_27951w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input
ř

Ę
Msequential_4_random_flip_2_map_while_stateless_random_flip_up_down_true_28492§
˘sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identity
Qsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
Lsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2˘sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_4_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyZsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ý
Ksequential_4/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityUsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"Ł
Ksequential_4_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_4/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Î
H
,__inference_sequential_4_layer_call_fn_28684

inputs
identityż
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_27455j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ź
č
5map_while_stateless_random_flip_left_right_true_27672v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ä

'__inference_dense_5_layer_call_fn_29107

inputs
unknown:	

	unknown_0:

identity˘StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_27951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ˇ
Í
map_while_cond_29161$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_29161___redundant_placeholder0;
7map_while_map_while_cond_29161___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27827

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ĺ
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27584

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity˘stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ý˙˙˙˙˙˙˙˙j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů żY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ů ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ś
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ź
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˘
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ř
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ł
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ď
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ą
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_28701

inputs
identityW
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_2/mulMulinputsrescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙e
IdentityIdentityrescaling_2/add:z:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27851

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ţ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27909

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
 
_user_specified_nameinputs
Ę
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_27922

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
î
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_27455

inputs
identityĘ
rescaling_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_27440ě
random_flip_2/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_27446ö
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_27452|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Á
˘
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_28781
random_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityrandom_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27839

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë

'__inference_dense_4_layer_call_fn_29087

inputs
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallŰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_27935p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ö
Psequential_4_random_flip_2_map_while_stateless_random_flip_left_right_true_28443­
¨sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identity
Tsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
Osequential_4/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2¨sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency]sequential_4/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ă
Nsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityXsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"Š
Nsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ś
Ö
Qsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_false_28444Ź
§sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identitył
Nsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentity§sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_4_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"Š
Nsequential_4_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_4/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
łW

__inference__traced_save_29600
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Ś
valueB,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĹ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ń
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,			
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapesö
ó: : : : @:@:@::::	
:
: : : : : : : : : : : ::: : : @:@:@::::	
:
: : : @:@:@::::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::'#
!
_output_shapes
::!

_output_shapes	
::%	!

_output_shapes
:	
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::'#
!
_output_shapes
::!

_output_shapes	
::% !

_output_shapes
:	
: !

_output_shapes
:
:,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:-&)
'
_output_shapes
:@:!'

_output_shapes	
::'(#
!
_output_shapes
::!)

_output_shapes	
::%*!

_output_shapes
:	
: +

_output_shapes
:
:,

_output_shapes
: 
ň


,__inference_sequential_5_layer_call_fn_27981
sequential_4_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
	unknown_6:	
	unknown_7:	

	unknown_8:

identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_27958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_namesequential_4_input"żL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ę
serving_defaultś
[
sequential_4_inputE
$serving_default_sequential_4_input:0˙˙˙˙˙˙˙˙˙;
dense_50
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict:ˇÓ
ę
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ń
layer-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ý
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
Ľ
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias"
_tf_keras_layer
ť
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias"
_tf_keras_layer
f
#0
$1
22
33
A4
B5
V6
W7
^8
_9"
trackable_list_wrapper
f
#0
$1
22
33
A4
B5
V6
W7
^8
_9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ć
etrace_0
ftrace_1
gtrace_2
htrace_32ű
,__inference_sequential_5_layer_call_fn_27981
,__inference_sequential_5_layer_call_fn_28288
,__inference_sequential_5_layer_call_fn_28317
,__inference_sequential_5_layer_call_fn_28158Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zetrace_0zftrace_1zgtrace_2zhtrace_3
Ň
itrace_0
jtrace_1
ktrace_2
ltrace_32ç
G__inference_sequential_5_layer_call_and_return_conditional_losses_28364
G__inference_sequential_5_layer_call_and_return_conditional_losses_28679
G__inference_sequential_5_layer_call_and_return_conditional_losses_28192
G__inference_sequential_5_layer_call_and_return_conditional_losses_28230Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zitrace_0zjtrace_1zktrace_2zltrace_3
ÖBÓ
 __inference__wrapped_model_27425sequential_4_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 

miter

nbeta_1

obeta_2
	pdecay
qlearning_rate#m$m2m3mAmBmVmWm^m_m#v$v2v3vAvBvVvWv^v_v"
	optimizer
,
rserving_default"
signature_map
Ľ
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
ź
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ă
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
trace_0
trace_1
trace_2
trace_32ű
,__inference_sequential_4_layer_call_fn_27458
,__inference_sequential_4_layer_call_fn_28684
,__inference_sequential_4_layer_call_fn_28693
,__inference_sequential_4_layer_call_fn_27800Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ú
trace_0
trace_1
trace_2
trace_32ç
G__inference_sequential_4_layer_call_and_return_conditional_losses_28701
G__inference_sequential_4_layer_call_and_return_conditional_losses_28977
G__inference_sequential_4_layer_call_and_return_conditional_losses_27807
G__inference_sequential_4_layer_call_and_return_conditional_losses_27818Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
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
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ď
(__inference_conv2d_6_layer_call_fn_28986˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ę
C__inference_conv2d_6_layer_call_and_return_conditional_losses_28997˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
):' 2conv2d_6/kernel
: 2conv2d_6/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ő
 trace_02Ö
/__inference_max_pooling2d_6_layer_call_fn_29002˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z trace_0

Ątrace_02ń
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29007˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĄtrace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
˘non_trainable_variables
Łlayers
¤metrics
 Ľlayer_regularization_losses
Ślayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
î
§trace_02Ď
(__inference_conv2d_7_layer_call_fn_29016˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z§trace_0

¨trace_02ę
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29027˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¨trace_0
):' @2conv2d_7/kernel
:@2conv2d_7/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Šnon_trainable_variables
Şlayers
Ťmetrics
 Źlayer_regularization_losses
­layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ő
Žtrace_02Ö
/__inference_max_pooling2d_7_layer_call_fn_29032˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŽtrace_0

Żtrace_02ń
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29037˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŻtrace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
°non_trainable_variables
ąlayers
˛metrics
 łlayer_regularization_losses
´layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
î
ľtrace_02Ď
(__inference_conv2d_8_layer_call_fn_29046˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zľtrace_0

śtrace_02ę
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29057˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zśtrace_0
*:(@2conv2d_8/kernel
:2conv2d_8/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ˇnon_trainable_variables
¸layers
šmetrics
 şlayer_regularization_losses
ťlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ő
źtrace_02Ö
/__inference_max_pooling2d_8_layer_call_fn_29062˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zźtrace_0

˝trace_02ń
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29067˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˝trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
žnon_trainable_variables
żlayers
Ŕmetrics
 Álayer_regularization_losses
Âlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ď
Ătrace_02Đ
)__inference_flatten_2_layer_call_fn_29072˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĂtrace_0

Ätrace_02ë
D__inference_flatten_2_layer_call_and_return_conditional_losses_29078˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÄtrace_0
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ĺnon_trainable_variables
Ćlayers
Çmetrics
 Člayer_regularization_losses
Élayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
í
Ętrace_02Î
'__inference_dense_4_layer_call_fn_29087˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĘtrace_0

Ëtrace_02é
B__inference_dense_4_layer_call_and_return_conditional_losses_29098˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zËtrace_0
#:!2dense_4/kernel
:2dense_4/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
í
Ńtrace_02Î
'__inference_dense_5_layer_call_fn_29107˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŃtrace_0

Ňtrace_02é
B__inference_dense_5_layer_call_and_return_conditional_losses_29117˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŇtrace_0
!:	
2dense_5/kernel
:
2dense_5/bias
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
8
Ó0
Ô1
Ő2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_5_layer_call_fn_27981sequential_4_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ţBű
,__inference_sequential_5_layer_call_fn_28288inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ţBű
,__inference_sequential_5_layer_call_fn_28317inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
,__inference_sequential_5_layer_call_fn_28158sequential_4_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_28364inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_28679inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ĽB˘
G__inference_sequential_5_layer_call_and_return_conditional_losses_28192sequential_4_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ĽB˘
G__inference_sequential_5_layer_call_and_return_conditional_losses_28230sequential_4_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ŐBŇ
#__inference_signature_wrapper_28263sequential_4_input"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Önon_trainable_variables
×layers
Řmetrics
 Ůlayer_regularization_losses
Úlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
ń
Űtrace_02Ň
+__inference_rescaling_2_layer_call_fn_29122˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŰtrace_0

Ütrace_02í
F__inference_rescaling_2_layer_call_and_return_conditional_losses_29130˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÜtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ýnon_trainable_variables
Ţlayers
ßmetrics
 ŕlayer_regularization_losses
álayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
Đ
âtrace_0
ătrace_12
-__inference_random_flip_2_layer_call_fn_29135
-__inference_random_flip_2_layer_call_fn_29142´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zâtrace_0zătrace_1

ätrace_0
ĺtrace_12Ë
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29146
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29304´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zätrace_0zĺtrace_1
/
ć
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ř
ětrace_0
ítrace_12
1__inference_random_rotation_2_layer_call_fn_29309
1__inference_random_rotation_2_layer_call_fn_29316´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zětrace_0zítrace_1

îtrace_0
ďtrace_12Ó
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29320
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29438´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zîtrace_0zďtrace_1
/
đ
_generator"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_4_layer_call_fn_27458rescaling_2_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ţBű
,__inference_sequential_4_layer_call_fn_28684inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ţBű
,__inference_sequential_4_layer_call_fn_28693inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
,__inference_sequential_4_layer_call_fn_27800rescaling_2_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_28701inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_28977inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
¤BĄ
G__inference_sequential_4_layer_call_and_return_conditional_losses_27807rescaling_2_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
¤BĄ
G__inference_sequential_4_layer_call_and_return_conditional_losses_27818rescaling_2_input"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
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
ÜBŮ
(__inference_conv2d_6_layer_call_fn_28986inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
C__inference_conv2d_6_layer_call_and_return_conditional_losses_28997inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ăBŕ
/__inference_max_pooling2d_6_layer_call_fn_29002inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29007inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÜBŮ
(__inference_conv2d_7_layer_call_fn_29016inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29027inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ăBŕ
/__inference_max_pooling2d_7_layer_call_fn_29032inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29037inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÜBŮ
(__inference_conv2d_8_layer_call_fn_29046inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29057inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ăBŕ
/__inference_max_pooling2d_8_layer_call_fn_29062inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29067inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÝBÚ
)__inference_flatten_2_layer_call_fn_29072inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
D__inference_flatten_2_layer_call_and_return_conditional_losses_29078inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ŰBŘ
'__inference_dense_4_layer_call_fn_29087inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
B__inference_dense_4_layer_call_and_return_conditional_losses_29098inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ŰBŘ
'__inference_dense_5_layer_call_fn_29107inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
B__inference_dense_5_layer_call_and_return_conditional_losses_29117inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
R
ń	variables
ň	keras_api

ótotal

ôcount"
_tf_keras_metric
c
ő	variables
ö	keras_api

÷total

řcount
ů
_fn_kwargs"
_tf_keras_metric
c
ú	variables
ű	keras_api

ütotal

ýcount
ţ
_fn_kwargs"
_tf_keras_metric
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
ßBÜ
+__inference_rescaling_2_layer_call_fn_29122inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
F__inference_rescaling_2_layer_call_and_return_conditional_losses_29130inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
óBđ
-__inference_random_flip_2_layer_call_fn_29135inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
óBđ
-__inference_random_flip_2_layer_call_fn_29142inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29146inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29304inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
/
˙
_state_var"
_generic_user_object
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
÷Bô
1__inference_random_rotation_2_layer_call_fn_29309inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
÷Bô
1__inference_random_rotation_2_layer_call_fn_29316inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29320inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29438inputs"´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
/

_state_var"
_generic_user_object
0
ó0
ô1"
trackable_list_wrapper
.
ń	variables"
_generic_user_object
:  (2total
:  (2count
0
÷0
ř1"
trackable_list_wrapper
.
ő	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ü0
ý1"
trackable_list_wrapper
.
ú	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
.:, 2Adam/conv2d_6/kernel/m
 : 2Adam/conv2d_6/bias/m
.:, @2Adam/conv2d_7/kernel/m
 :@2Adam/conv2d_7/bias/m
/:-@2Adam/conv2d_8/kernel/m
!:2Adam/conv2d_8/bias/m
(:&2Adam/dense_4/kernel/m
 :2Adam/dense_4/bias/m
&:$	
2Adam/dense_5/kernel/m
:
2Adam/dense_5/bias/m
.:, 2Adam/conv2d_6/kernel/v
 : 2Adam/conv2d_6/bias/v
.:, @2Adam/conv2d_7/kernel/v
 :@2Adam/conv2d_7/bias/v
/:-@2Adam/conv2d_8/kernel/v
!:2Adam/conv2d_8/bias/v
(:&2Adam/dense_4/kernel/v
 :2Adam/dense_4/bias/v
&:$	
2Adam/dense_5/kernel/v
:
2Adam/dense_5/bias/vŤ
 __inference__wrapped_model_27425
#$23ABVW^_E˘B
;˘8
63
sequential_4_input˙˙˙˙˙˙˙˙˙
Ş "1Ş.
,
dense_5!
dense_5˙˙˙˙˙˙˙˙˙
ˇ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_28997p#$9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙ 
 
(__inference_conv2d_6_layer_call_fn_28986c#$9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙ ł
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29027l237˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@ 
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@@@
 
(__inference_conv2d_7_layer_call_fn_29016_237˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@ 
Ş " ˙˙˙˙˙˙˙˙˙@@@´
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29057mAB7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙  @
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙  
 
(__inference_conv2d_8_layer_call_fn_29046`AB7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙  @
Ş "!˙˙˙˙˙˙˙˙˙  Ľ
B__inference_dense_4_layer_call_and_return_conditional_losses_29098_VW1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 }
'__inference_dense_4_layer_call_fn_29087RVW1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ł
B__inference_dense_5_layer_call_and_return_conditional_losses_29117]^_0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 {
'__inference_dense_5_layer_call_fn_29107P^_0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙
Ť
D__inference_flatten_2_layer_call_and_return_conditional_losses_29078c8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "'˘$

0˙˙˙˙˙˙˙˙˙
 
)__inference_flatten_2_layer_call_fn_29072V8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29007R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ĺ
/__inference_max_pooling2d_6_layer_call_fn_29002R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29037R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ĺ
/__inference_max_pooling2d_7_layer_call_fn_29032R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29067R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ĺ
/__inference_max_pooling2d_8_layer_call_fn_29062R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ź
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29146p=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ŕ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29304t˙=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
-__inference_random_flip_2_layer_call_fn_29135c=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p 
Ş ""˙˙˙˙˙˙˙˙˙
-__inference_random_flip_2_layer_call_fn_29142g˙=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p
Ş ""˙˙˙˙˙˙˙˙˙Ŕ
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29320p=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ä
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_29438t=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
1__inference_random_rotation_2_layer_call_fn_29309c=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p 
Ş ""˙˙˙˙˙˙˙˙˙
1__inference_random_rotation_2_layer_call_fn_29316g=˘:
3˘0
*'
inputs˙˙˙˙˙˙˙˙˙
p
Ş ""˙˙˙˙˙˙˙˙˙ś
F__inference_rescaling_2_layer_call_and_return_conditional_losses_29130l9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
+__inference_rescaling_2_layer_call_fn_29122_9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙Ę
G__inference_sequential_4_layer_call_and_return_conditional_losses_27807L˘I
B˘?
52
rescaling_2_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ń
G__inference_sequential_4_layer_call_and_return_conditional_losses_27818˙L˘I
B˘?
52
rescaling_2_input˙˙˙˙˙˙˙˙˙
p

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 ż
G__inference_sequential_4_layer_call_and_return_conditional_losses_28701tA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ĺ
G__inference_sequential_4_layer_call_and_return_conditional_losses_28977z˙A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 ˘
,__inference_sequential_4_layer_call_fn_27458rL˘I
B˘?
52
rescaling_2_input˙˙˙˙˙˙˙˙˙
p 

 
Ş ""˙˙˙˙˙˙˙˙˙¨
,__inference_sequential_4_layer_call_fn_27800x˙L˘I
B˘?
52
rescaling_2_input˙˙˙˙˙˙˙˙˙
p

 
Ş ""˙˙˙˙˙˙˙˙˙
,__inference_sequential_4_layer_call_fn_28684gA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş ""˙˙˙˙˙˙˙˙˙
,__inference_sequential_4_layer_call_fn_28693m˙A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş ""˙˙˙˙˙˙˙˙˙Î
G__inference_sequential_5_layer_call_and_return_conditional_losses_28192
#$23ABVW^_M˘J
C˘@
63
sequential_4_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ň
G__inference_sequential_5_layer_call_and_return_conditional_losses_28230˙#$23ABVW^_M˘J
C˘@
63
sequential_4_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Á
G__inference_sequential_5_layer_call_and_return_conditional_losses_28364v
#$23ABVW^_A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ĺ
G__inference_sequential_5_layer_call_and_return_conditional_losses_28679z˙#$23ABVW^_A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ľ
,__inference_sequential_5_layer_call_fn_27981u
#$23ABVW^_M˘J
C˘@
63
sequential_4_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
Š
,__inference_sequential_5_layer_call_fn_28158y˙#$23ABVW^_M˘J
C˘@
63
sequential_4_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙

,__inference_sequential_5_layer_call_fn_28288i
#$23ABVW^_A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙

,__inference_sequential_5_layer_call_fn_28317m˙#$23ABVW^_A˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
Ä
#__inference_signature_wrapper_28263
#$23ABVW^_[˘X
˘ 
QŞN
L
sequential_4_input63
sequential_4_input˙˙˙˙˙˙˙˙˙"1Ş.
,
dense_5!
dense_5˙˙˙˙˙˙˙˙˙
