% 2026-09-16 Var.4 Georgij Moisejev
clc;
clear;
close all;



a = (-pi:0.7:2*pi)';
b = cos(a);
c = a .^ b;
eilute = [a b c];
disp('1a)')
disp(a)
disp('1b)')
disp(b)
disp('1c)')
disp(c)
disp('1d)')
disp(eilute)



X = [exp(5), exp(-1i/exp(1)), log(1);
     log(pi), -2, -sin(pi)];
disp('2a)')
disp(X)

X1n = [X(2,1)^2, X(1,3), X(2,3)^2];
X = [X;
     X1n];
disp('2b)')
disp(X)

D = det(X);
disp('2c)')
disp(D)



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
disp('3a)')
disp(virsU1)

xf = x;
xf(abs(xf) < U2) = 0;

dydisX = size(x);
disp('3c)')
disp(dydisX)

dydisU1 = size(virsU1);
disp('3d)')
disp(dydisU1)

didziausia = max(xf);
maziausia = min(xf);
disp('3e)Didziausia reiksme:')
disp(didziausia)
disp('3e)Maziausia reiksme:')
disp(maziausia)



A = input('Iveskite vektoriu A: ');
B = repelem(A, 4);
disp('Vektorius B:')
disp(B)