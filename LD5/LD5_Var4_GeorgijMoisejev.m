% 2026-10-07 Var.4 Georgij Moisejev
%% 1)Strukturos

x = 0:0.01:2;
f = cos(sin(2*pi*x));

S.f = f;
S.x = x;
S.pavadinimas = 'f(x) = cos(sin(2*pi*x))';

plot(S.x, S.f)
title(S.pavadinimas)
grid on


%% 2)Srauto valdymo konstruktoriai

while true
    m = input('Iveskite m: ');
    n = input('Iveskite n: ');

    if m == n
        break
    end

    while m > 0 && n > 0
        if m > n
            disp([num2str(m) ' - ' num2str(n) ' = ' num2str(m-n)])
            m = m - n;
        else
            disp([num2str(n) ' - ' num2str(m) ' = ' num2str(n-m)])
            n = n - m;
        end
    end

    if m > 0
        disp(['Atsakymas: ' num2str(m)])
    else
        disp(['Atsakymas: ' num2str(n)])
    end
end

%% Papildoma uzduotis
a = [];
b = [];

figure(2)
while true
    x = round(rand*3);
    y = round(rand*5);

    a(end+1) = x;
    b(end+1) = y;

    plot(a, '-o')
    hold on
    plot(b, '-o')
    hold off
    grid on
    legend('round(rand*3)', 'round(rand*5)')
    drawnow
    pause(0.5)

    if x == y
        break
    end
end
