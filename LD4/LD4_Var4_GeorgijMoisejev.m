% 2026-09-30 Var.4 Georgij Moisejev
figure
[x,y] = meshgrid(-2:0.1:2);
z = sin(abs(x+y)/20).*exp(-abs(x+y));

surf(x,y,z)
shading interp
rotate(gca,[1 1 0],30)
xlabel('x'); ylabel('y'); zlabel('f(x,y)')
title('a)')
grid on



figure
[t,r] = meshgrid(0:0.1:2*pi,0:0.05:1);
x = r.*cos(t);
y = r.*sin(t);
z = 1-2*x.^2-3*y.^2;

surf(x,y,z)
shading interp
rotate(gca,[1 1 0],78)
xlabel('x'); ylabel('y'); zlabel('f(x,y)')
title('b)')
grid on



figure
[x,y] = meshgrid(-2:0.1:2);
z = 1-(x.^2+y.^2);

surf(x,y,z,'FaceColor','red')
camlight left
xlabel('x'); ylabel('y'); zlabel('z')
title('Papildoma')
grid on