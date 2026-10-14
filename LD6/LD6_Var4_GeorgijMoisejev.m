% 2026-10-14 Var.4 Georgij Moisejev

%% 1) Elementarių funkcijų kūrimas

help kauliukaiX
disp('--- 1 uzduotis ---');
kauliukaiX(15)

%% 2) Globalių Matlab kintamųjų naudojimas


global x y

x = 0:0.1:20;
func_square;
func_half;
figure(1)
plot(x, y, 'b-.o');
grid on;
xlabel('x'); ylabel('y');
title('y = (x^2)/2');

disp('--- 2 uzduotis ---');
disp('Globalūs kintamieji:');
whos global

%% Papildoma užduotis


x = 0:0.1:2*pi;
figure(2)
grafsincos(x);
y = grafsincos(x);
disp('--- 3 uzduotis ---');
disp(y);