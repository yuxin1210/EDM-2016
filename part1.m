x = -2:.5:2;
y = x;
z = x;
[xx,yy,zz] = meshgrid(x,y,z);
%vector field 1.4(b)
Fxx = xx;
Fyy = 0*yy;
Fzz = zz;
figure(1);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
xlabel('x');
ylabel('y');
zlabel('z');

%vector field 1.4(c)
Fxxnew = zz;
Fyynew = 0*yy;
Fzznew = -xx;
figure(2);
quiver3(xx,yy,zz,Fxxnew,Fyynew,Fzznew);
xlabel('x');
ylabel('y');
zlabel('z');
