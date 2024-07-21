% Introduction to telecommunications 
% 07. Mod_Analogue_Digital_I.pdf -> page 40

T0 = 100;
T1 = 10;
f0 = 1/T0;
t = linspace(0, T0, 1001);
sig = sin(2*pi*f0.*t);

saw1 = 4*(triangularPulse(0, T1/2, T1, mod(t, T1)) - 1/2);
pwm1 = (sig - saw1) > 0;

saw2 = 4*(triangularPulse(0, T1, T1, mod(t, T1)) - 1/2);
pwm2 = (sig - saw2) > 0;

% change the colors please
figure
grid on
plot(t, sig, 'b')
hold on
plot(t, saw1, 'r')
hold on
plot(t, pwm1 - 3.5, 'b')
hold on
plot(t, 6*pwm1-6+sig, 'b--') % whatever. i was trying to draw vertical lines
ylim([-3.5 2])

figure
grid on
plot(t, sig, 'b')
hold on
plot(t, saw2, 'r')
hold on
plot(t, pwm2 - 3.5, 'b')
hold on
plot(t, 6*pwm2-6+sig, 'b--') 
ylim([-3.5 2])