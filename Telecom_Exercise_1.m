% Exercise 1

% number of periods shown in the graphs
n1 = 4;
n2 = 1;

% create the signal
A = 4;
fm = 2000;
Tm = 1/fm; 
t = linspace(0, n1*Tm, n1*1000 + 1);
y = A*2*(triangularPulse(0, Tm, Tm*mod(fm*t, 1)) - 1/2);
% t e [0, 2*Tm] => fm*t e [0, 2] => mod(fm*t, 1) e [0, 1) => Tm*mod(fm*t, 1) e [0, Tm)
% triangularPulse(x) == 0 for x not e [0, Tm)

% plot the signal
figure
plot(t, y)
grid on
title('signal y')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% a)

fs1 = 30*fm;
Ts1 = 1/fs1;
fs2 = 50*fm;
Ts2 = 1/fs2;
% step: Ts -> [0 20] -> 20/Ts = 600*fm

% a) -> i)

ts1 = (0:Ts1:n1*Tm);
ys1 = A*2*(triangularPulse(0, Tm, Tm*mod(fm*ts1, 1)) - 1/2);
figure
stem(ts1, ys1)
grid on
title('y sampled with fs = 30*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% a) -> ii)

ts2 = (0:Ts2:n1*Tm);
ys2 = A*2*(triangularPulse(0, Tm, Tm*mod(fm*ts2, 1)) - 1/2);
figure
stem(ts2, ys2)
grid on
title('y sampled with fs = 50*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% a) -> iii)

figure
stem(ts1, ys1)
hold on
stem(ts2, ys2)
grid on
title('y sampled with two different frequencies')
xlabel('Time [s]')
ylabel('Amplitude [V]')
legend('fs1 = 30*fm', 'fs2 = 50*fm')

% b)

fs = 4*fm;
Ts = 1/fs;

ts = (0:Ts:n1*Tm);
ys = A*2*(triangularPulse(0, Tm, Tm*mod(fm*ts, 1)) - 1/2);
figure
stem(ts, ys)
grid on
title('y sampled with fs = 4*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c)

% create the signal
Az = 1;
z = Az*sin(2*pi*fm*t);

% plot the signal
figure
plot(t, z)
grid on
title('signal z')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> i) -> a) -> i)

zs1 = Az*sin(2*pi*fm*ts1);
figure
stem(ts1, zs1)
grid on
title('z sampled with fs = 30*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> i) -> a) -> ii)

zs2 = Az*sin(2*pi*fm*ts2);
figure
stem(ts2, zs2)
grid on
title('z sampled with fs = 50*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> i) -> a) -> iii)

figure
stem(ts1, zs1)
hold on
stem(ts2, zs2)
grid on
title('z sampled with two different frequencies')
xlabel('Time [s]')
ylabel('Amplitude [V]')
legend('fs1 = 30*fm', 'fs2 = 50*fm')

% c) -> i) -> b)

zs = Az*sin(2*pi*fm*ts);
figure
stem(ts, zs)
grid on
title('z sampled with fs = 4*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> ii)

% create the signal
lamda = 1000;
Tq = 2*Tm;
fq = 1/Tq;
t2 = linspace(0, n2*Tq, n2*1000 + 1); 
q = Az*sin(2*pi*fm*t2) + Az*sin(2*pi*(fm+lamda)*t2); % Theoretical value


% plot the signal
figure
plot(t2, q)
grid on
title('signal q')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> ii) -> a) -> i)

ts21 = (0:Ts1:n2*Tq);
qs1 = Az*sin(2*pi*fm*ts21) + Az*sin(2*pi*(fm+lamda)*ts21);
figure
stem(ts21, qs1)
grid on
title('q sampled with fs = 30*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> ii) -> a) -> ii)

ts22 = (0:Ts2:n2*Tq);
qs2 = Az*sin(2*pi*fm*ts22) + Az*sin(2*pi*(fm+lamda)*ts22);
figure
stem(ts22, qs2)
grid on
title('q sampled with fs = 50*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% c) -> ii) -> a) -> iii)

figure
stem(ts21, qs1)
hold on
stem(ts22, qs2)
grid on
title('q sampled with two different frequencies')
xlabel('Time [s]')
ylabel('Amplitude [V]')
legend('fs1 = 30*fm', 'fs2 = 50*fm')

% c) -> ii) -> b)

fs2 = 4*fq;
Ts2 = 1/fs2;
tsq = (0:Ts2:n2*Tq);
qs = Az*sin(2*pi*fm*tsq) + Az*sin(2*pi*(fm+lamda)*tsq);
figure
stem(tsq, qs)
grid on
title('y sampled with fs = 4*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')