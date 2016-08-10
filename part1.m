x = -2:.5:2;
y = x; z = x;
[xx,yy,zz] = meshgrid(x,y,z);
Fxx = xx.^2;
Fyy = 0*yy;
Fzz = zz;
figure(1);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
xlabel('x');
ylabel('y');
zlabel('z');


figure(2);
Fxxnew = zz;
Fyynew = 0*yy;
Fzznew = -xx;
quiver3(xx,yy,zz,Fxxnew,Fyynew,Fzznew);
xlabel('x');
ylabel('y');
zlabel('z');