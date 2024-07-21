x = 0.3;
f1 = log(1 + x);
g1 = 0;
n = 2000;
for k = 1 : 1 : n
    g1 = g1 - (-x) ^ k / k;
end
f1
g1

y = linspace(-0.99, 1, 200);
f2 = log(1 + y);
g2 = 0;
for k = 1 : 1 : n
    g2 = g2 - (-y) .^ k / k;
end
subplot(2, 1, 1)
plot(y, f2)
subplot(2, 1, 2)
plot(y, g2)

y = linspace(-1, 3, 400);
f3 = exp(y);
g3 = 0;
factk = 1;
for k = 1 : 1 : n
    factk = factk * k;
    g3 = g3 + y .^ k / factk;
end
subplot(2, 1, 1)
plot(y, f3, y, g3)
title('e^x')
subplot(2, 1, 2)
plot(y, g3)
title('Taylor Series')

y = linspace(-3, 3, 600);
f4 = sin(y);
g4 = 0;
factk = 1;
for k = 1 : 1 : n
    factk = factk * k;
    if mod(k, 2) ~= 0 
        g4 = g4 + y .^ k / factk *(-1) ^ floor(k / 2);
    end
end
subplot(2, 1, 1)
plot(y, f4, y, g4)
title('sinx')
subplot(2, 1, 2)
plot(y, g4)
title('sinx')
