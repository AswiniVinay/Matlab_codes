bits = round(rand(1,10));
%bits = [1 0 1 0 0 1 1 1 0]
bitrate = 1; % bits per second
%  1,1 = 2
% -1,-1 = -2
% 0 otherwise
T = length(bits)/bitrate; % full time of bit sequence
n = 200;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t)); % output signal
for i = 0:length(bits)-2
  if bits(i+1) == 1 && bits(i+2) == 1
    x(i*n+1:(i+1)*n) = 2;
    %x((i+0.5)*n+1:(i+1)*n) = -1;
  elseif bits(i+1) == 0 && bits(i+2) == 0
    x(i*n+1:(i+1)*n) = -2;
    %x((i+0.5)*n+1:(i+1)*n) = 1;
  else
      x(i*n+1:(i+1)*n) = 0;
  end
end
%%%%%
tb=1;
rb=1/tb;
t=1;
val = pi*rb*t;
pt= sin(val)/(val*(1-rb*t));
x1=linspace(-val,val);

%
%plot(t,x,'LineWidth',3);
%axis([0 t(end) -3.1 3.1])
%grid on;
%title(['duobinary: [' num2str(bits) ']']);

plot(x1,pt);
title(['duobinary']);