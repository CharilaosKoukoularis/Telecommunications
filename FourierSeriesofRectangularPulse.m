b1=4/pi;
b3=4/(pi*3);
b5=4/(pi*5);
t=[0:0.001:10];
f=1;
F=b1*sin(2*pi*f*t)+b3*sin(2*pi*3*f*t)+b5*sin(2*pi*5*f*t);
plot(t,F);hold on
xlabel('t(*1/f)')
ylabel('V(*Vab)')

b7=4/(pi*7);
b9=4/(pi*9);
b11=4/(pi*11);
F2=b7*sin(2*pi*7*f*t)+b9*sin(2*pi*9*f*t)+b11*sin(2*pi*11*f*t);
plot(t,F+F2)