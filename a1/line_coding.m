% Demo of using different line codings
bits = round(rand(1,10));
%bits = [1 0 1 0 0 1 1 1 0]
bitrate = 1; % bits per second
figure;
%polar RZ
[t,s] = prz(bits,bitrate);
plot(t,s,'LineWidth',3);
axis([0 t(end) -1.1 1.1])
grid on;
title(['Polar RZ: [' num2str(bits) ']']);
figure;
%Bipolar RZ
[t,s] = biprz(bits,bitrate);
plot(t,s,'LineWidth',3);
axis([0 t(end) -1.1 1.1])
grid on;
title(['BiPolar RZ: [' num2str(bits) ']']);
figure;
%manchester
[t,s] = manchester(bits,bitrate);
plot(t,s,'LineWidth',3);
axis([0 t(end) -1.1 1.1])
grid on;
title(['Manchester: [' num2str(bits) ']']);
% ON/OFF
figure;
[t,s] = onoff(bits,bitrate);
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.0 1.1])
grid on;
title(['ON/OFF: [' num2str(bits) ']']);
