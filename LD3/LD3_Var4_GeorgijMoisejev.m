% 2026-09-23 Var.4 Georgij Moisejev
clc;
clear;
close all;

x = -pi:0.1:pi;
y = tan(sin(x)) + sin(tan(x));
figure(1)
plot(x, y, 'y')
title('Pirmosios funkcijos grafikas')
xlabel('x')
ylabel('f(x)')
grid on


y1 = exp(-0.5*x);
y2 = sin(x);
figure(2)
yyaxis left
semilogy(x, y1)
ylabel('e^{-0.5x}')
yyaxis right
plot(x, y2)
ylabel('sin(x)')
title('Dviejų funkcijų grafikai')
xlabel('x')
legend('e^{-0.5x}', 'sin(x)')
grid on



N = 6;
M = 4;
A = rand(N, M);
figure(3)
area(A)
title('Ploto diagrama')
xlabel('Eilutės')
ylabel('Reikšmės')
grid on


figure(4)
mesh(A)
title('Paviršiaus diagrama')
xlabel('Stulpeliai')
ylabel('Eilutės')
zlabel('Reikšmės')
grid on



A = 7;
f = 4;
sigma = 2;
U1 = 4.5;
U2 = 2.5;
t = 0:0.005:1;
s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;
virsU1 = x(abs(x) > U1);
xf = x;
xf(abs(xf) < U2) = 0;

figure(5)

subplot(2,1,1)
plot(t,x,'k-.',t,xf,'y-')
hold on
yline([U1 -U1],'g','LineWidth',1.5)
yline([U2 -U2],'r--')
title('Pradinis ir filtruotas signalai')
xlabel('Laikas, s','Color','b','FontSize',12)
ylabel('Itampa, V','Color','b','FontSize',12)
legend('Pradinis','Filtruotas','U1','-U1','U2','-U2')
grid on
ylim([-15 15])

subplot(2,1,2)
i = abs(x) > U1;
stem(t(i),x(i),'k')
hold on
[mi,a] = min(x);
[ma,b] = max(x);
plot(t(a),mi,'mv',t(b),ma,'r^','MarkerSize',9)
yline([U1 -U1],'g','LineWidth',1.5)
title('Signalas virs U1 ribos')
xlabel('Laikas, s','Color','b','FontSize',12)
ylabel('Itampa, V','Color','b','FontSize',12)
legend('Signalas','Minimumas','Maksimumas','U1','-U1')
grid on
ylim([-15 15])
