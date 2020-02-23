clc;
clear;
%%
%induction motor detail
f=50;%supply frequency
p=2;%number of poles
R1=6.76;%stator resistance
R2=2.41;%rotor resistance @stator side
L1=2.7719/(2*pi*f);%stator winding leakage inductance
L2=2.7719/(2*pi*f);%rotor windingleakage inductance @ stator side
Lm=280/(2*pi*f);%magnetizing inductance
J=0.004;%rotor inertia
B=0.001;%friction coefficient
%%
%preliminary calculation
wb=2*pi*f;%omega_b
ws=wb*2/p;%omega_s
Xm=1.5*wb*Lm;
Xss=wb*(L1+1.5*Lm);
Xrr=wb*(L2+1.5*Lm);
D=Xss*Xrr-Xm^2;
