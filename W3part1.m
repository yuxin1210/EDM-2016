epsr = 1;
eps0 = 8.854e-15;
a = 1;

theta = (0:.25:1)*pi;
phi = (0:.25:2)*pi;
r = [0:.2:.8 1:.5:3];
[tt,pp,rr] = meshgrid(theta,phi,r);
xx = rr.*sin(tt).*cos(pp);
yy = rr.*sin(tt).*sin(pp);
zz = rr.*cos(tt);

Exx = zeros(size(xx));
Eyy = Exx;Ezz = Exx;

region1 = (rr <= 1);
region2 = (rr > 1);
Exx(region1) = rr(region1).^2.*sin(tt(region1)).*cos(pp(region1))/(4*epsr*eps0);%eps0????
Eyy(region1) = rr(region1).^2.*sin(tt(region1)).*sin(pp(region1))/(4*epsr*eps0);
Ezz(region1) = rr(region1).^2.*cos(tt(region1))/(4*epsr*eps0);

Exx(region2) = a^4/(4*eps0.*rr(region2).^2)*sin(tt(region2))*cos(pp(region2));
Eyy(region2) = a^4/(4*eps0.*rr(region2).^2)*sin(tt(region2))*sin(pp(region2));
Ezz(region2) = a^4/(4*eps0.*rr(region2).^2)*cos(tt(region2));

figure(1);
quiver3(xx,yy,zz,Exx,Eyy,Ezz,0.5);
grid on;
xlabel('x');
ylabel('y');
zlabel('z');