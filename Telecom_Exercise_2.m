% Exercise 2

% number of periods shown in the graphs
n = 4;
A = 4;
fm = 2000;
Tm = 1/fm; 
fs = 30*fm;
Ts = 1/fs;
ts = (0:Ts:n*Tm);
ys = A*2*(triangularPulse(0, Tm, Tm*mod(fm*ts, 1)) - 1/2);

figure
stem(ts, ys)
grid on
title('y sampled with fs = 30*fm')
xlabel('Time [s]')
ylabel('Amplitude [V]')

% number of bits per quantization zone
R = 4;

% number of zones
L = 16;

% 
D = 2*A/L;

% alternative method 1

figure
yq = floor(mod(2*abs(ys), 16) - (abs(ys) == 4))/2;% - 4; + sign(ys)*D/2;
%stem(ts, yq)
%hold on
stem(ts, (sign(ys) + (sign(ys) == 0)).*(yq + D/2));%- 4
%hold on
%stem(ts, ys)
grid on

y = (sign(ys) + (sign(ys) == 0)).*(yq + D/2);

dec2bin((4-y)*2, 4)


t = (0:0.001*Tm:n*Tm);
figure
plot(t, rectangularPulse(0, Ts, Ts*mod(fs*t, 1)).*y(floor(fs*t) + 1));
grid on
%yticklabelmode('manual')
TickLength(-3.75:0.5:3.75)
ytick(-3.75:0.5:3.75)
yticklabel(-4:0.5:4)


% alternative method 2

y2 = A*2*(triangularPulse(0, Tm, Tm*mod(fm*t, 1)) - 1/2);
figure
yq2 = floor(mod(2*abs(y2), 16) - (abs(y2) == 4))/2;
plot(t, (sign(y2) + (sign(y2) == 0)).*(yq2 + D/2));
grid on

% alternative method 3

y3 = y(floor(fs*t) + 1);
figure
plot(t, y3)
grid on