fm=2;
AM=7;
A=1;
t=[0:0.001:1];
y=A*cos(2*pi*fm*t).*cos(2*pi*(AM+2)*fm*t);
plot(t,y)
xlabel('t(msec)')
ylabel('y(V)')

fs1=20*fm;
ts1=1/fs1;
fs2=100*fm;
ts2=1/fs2;

t1=[0:ts1:1];
y1=A*cos(2*pi*fm*t1).*cos(2*pi*(AM+2)*fm*t1);
figure
stem(t1,y1)
xlabel('t(msec)')
ylabel('y(V)')

t2=[0:ts2:1];
y2=A*cos(2*pi*fm*t2).*cos(2*pi*(AM+2)*fm*t2);
figure
stem(t2,y2)
xlabel('t(msec)')
ylabel('y(V)')

figure
subplot(2,1,1)
stem(t1,y1)
xlabel('t(msec)')
ylabel('y(V)')
subplot(2,1,2)
stem(t2,y2)
xlabel('t(msec)')
ylabel('y(V)')


fs3=5*fm;
ts3=1/fs3;

t3=[0:ts3:1];
y3=A*cos(2*pi*fm*t3).*cos(2*pi*(AM+2)*fm*t3);
figure
stem(t3,y3);
xlabel('t(msec)')
ylabel('y(V)')


% --------------------------------------------------------------------
y1=cos(2*pi*fm*t);
y2=cos(2*pi*(AM+2)*fm*t);
plot(t,y1);hold on
plot(t,y2)

y3=0.5*(cos(2*pi*((AM+2)*fm+fm)*t)+cos(2*pi*((AM+2)*fm-fm)*t));
subplot(3,1,1)
plot(t,y3)
y4=cos(2*pi*((AM+2)*fm+fm)*t);
subplot(3,1,2)
plot(t,y4)
y5=cos(2*pi*((AM+2)*fm-fm)*t);
subplot(3,1,3)
plot(t,y5)