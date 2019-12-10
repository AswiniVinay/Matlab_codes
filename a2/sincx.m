% sincx
x = linspace(-5,5);
y = sinc(x);
plot(x,y)

figure;
%sincxwtb/4 for polar
%grid on;
%pw2
tb=1;
val = (2*pi*(tb))/4;
x1 = linspace(-val,val);
z = sinc(x1).^2;
pw=((tb/2)*z).^2;
plot(x1,z);
title(['sinc2']);
figure;
plot(x1,pw);
title(['pw2']);


