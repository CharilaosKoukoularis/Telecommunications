%Introduction To Telecomunications 2021 - 2022
%---------------------------------------------
%Exercise 2

A = 4;
fm = 2000;
T = 1 / fm;
t = linspace(0, 4 * T, 4 * 100);
y = 0;
for i = 1:21
    y = y - 8 * A * cos(omega(i) .* t) / (k(i) * pi) ^ 2;
end

fs1 = 30 * fm;
Ts1 = 1 / fs1;
ts1 = [0: Ts1: 4 * T];
ys1 = 0;
for i = 1:21
    ys1 = ys1 - 8 * A * cos(omega(i) .* ts1) / (k(i) * pi) ^ 2;
end
stem(ts1, ys1)

b = 4;
L = 2 ^ b; %16 levels?
ysb1 = sign(ys1) .* (mod(floor(abs(ys1)), b) + 0.5);


%a'
figure

subplot(2, 1, 1)
stem(ts1, ysb1)
hold on
grid on
ylabel('?????')
xlabel('time (s)')

subplot(2, 1, 2)
stem(ts1, ys1)
hold on
grid on
ylabel('?????')
xlabel('time (s)')


%b' (i)
yb1 = sign(y) .* (mod(floor(abs(y)), b) + 0.5);

figure
subplot(2, 1, 1)
plot(t, yb1, t, y)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')

ydif = y - yb1;
subplot(2, 1, 2)
plot(t, ydif)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')