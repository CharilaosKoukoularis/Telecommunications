fm=2;
AM=7;
A=1;
t=[0:0.001:1];
y=A*cos(2*pi*fm*t).*cos(2*pi*(AM+2)*fm*t);

fs1=20*fm;
ts1=1/fs1;