% 2026-10-14 Var.4 Georgij Moisejev

%% 1) Elementarių funkcijų kūrimas

help kauliukaiX
kauliukaiX(15)

%% 2) Globalių Matlab kintamųjų naudojimas


global x y

x = 0:0.1:20;
func_square;
func_half;

plot(x, y, 'b-.o');
grid on;
xlabel('x'); ylabel('y');
title('y = (x^2)/2');

disp('Globalūs kintamieji:');
whos global

%% Papildoma užduotis

x = 0:0.1:2*pi;
grafsincos(x);
y = grafsincos(x);
disp('--- 1 argumentas ---');
disp(y);
[s, c] = grafsincos(x);
disp('--- 2 argumentai ---');
disp('sin:');
disp(s);
disp('cos:');
disp(c);