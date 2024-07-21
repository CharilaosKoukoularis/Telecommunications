%Introduction To Telecomunications 2021 - 2022
%---------------------------------------------
%Exercise 1

A = 4;
fm = 2000;
T = 1 / fm;

n = [0: 1: 20];
k = 2 .* n + 1;
omega = [2 .* k * pi / T];

t = linspace(0, 4 * T, 4 * 100);

y = 0;
for i = 1:21
    y = y - 8 * A * cos(omega(i) .* t) / (k(i) * pi) ^ 2;
end
figure
plot(t, y)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%a' (i)
fs1 = 30 * fm;
Ts1 = 1 / fs1;
t1 = [0: Ts1: 4 * T];

ys1 = 0;
for i = 1:21
    ys1 = ys1 - 8 * A * cos(omega(i) .* t1) / (k(i) * pi) ^ 2;
end
figure
stem(t1, ys1)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%a' (ii)
fs2 = 50 * fm;
Ts2 = 1 / fs2;
t2 = [0: Ts2: 4 * T];

ys2 = 0;
for i = 1:21
    ys2 = ys2 - 8 * A * cos(omega(i) .* t2) / (k(i) * pi) ^ 2;
end
figure
stem(t2, ys2)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%a' (iii)
figure

subplot(2, 1, 1)
stem(t1, ys1)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')

subplot(2, 1, 2)
stem(t2, ys2)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')

%b' 
fs = 4 * fm;
Ts = 1 / fs;
ts = [0: Ts: 4 * T];
ys = 0;
for i = 1:21
    ys = ys - 8 * A * cos(omega(i) .* ts) / (k(i) * pi) ^ 2;
end
figure
stem(ts, ys)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (i)
A = 1;
z = A * sin(2 * pi * fm .* t);
figure
plot(t, z)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (i) a' (i)
z1 = A * sin(2 * pi * fm .* t1);
figure
stem(t1, z1)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (i) a' (ii)
z2 = A * sin(2 * pi * fm .* t2);
figure
stem(t2, z2)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (i) a' (iii)
figure

subplot(2, 1, 1)
stem(t1, z1)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')

subplot(2, 1, 2)
stem(t2, z2)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (i) b'
zs = A * sin(2 * pi * fm .* ts);

figure
stem(ts, zs)
hold on
grid on
ylabel('amplitude (V)')
xlabel('time (s)')


%c' (ii)
A = 1;
fm = 2000;
lamda = 1000;
Tz = 1 / fm;
Tq = 1 / (fm + lamda);

%sin(a + b) = sina x cosb + sinb x cosa 
%sina + sin(a + b) = sina x (1 + cosb) + cosa x sinb
%1 + cosb = 2 x cos^2(b/2)
%sinb = 2 x sin(b/2) x cos(b/2)
%sina x (1 + cosb) + cosa x sinb = 2 x cos(b/2) x (sina x cos(b/2) + cosa x sin(b/2))
%2 x cos(b/2) x (sina x cos(b/2) + cosa x sin(b/2)) = 2 x cos(b/2) x sin(a + b/2)

Tf = 1 / (2 * fm + lamda);
Td = 1 / lamda;
t = linspace(0, 2 * Td, 100);
z = A * sin(2 * pi * fm .* t);
q = z + A * sin(2 * pi * (fm + lamda) .* t); 

%sinc + sind = 2 x sin(c/2) x cos(c/2) + 2 x sin(d/2) x cos(d/2)
%sina + sinb = cos((a+b)/2)sin((a-b)/2)

figure
plot(t, q);
hold on
grid on
xlabel('time (s)')
ylabel('amplitude (V)')