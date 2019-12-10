%differentialcoding
bits = round(rand(1,10));
%bits = [1 0 1 0 0 1 1 1 0]
bitrate = 1; % bits per second
%  1 no transission in state
%  0 no transission in state
% 0 otherwise
T = length(bits)/bitrate; % full time of bit sequence
n = 200;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t)); % output signal
flag = 1;
  for i = 0:length(bits)-1
  if bits(i+1) == 0 && flag ==0
    x(i*n+1:(i+0.5)*n) = 1;
    flag=flag+1;
  elseif bits(i+1) == 0 && flag ==1
   x(i*n+1:(i+0.5)*n) = -1;
    flag=flag-1; 
  elseif bits(i+1) == 0 && flag ==1
   x(i*n+1:(i+0.5)*n) = -1;
    flag=flag-1; 
    elseif bits(i+1) == 0 && flag ==1
   x(i*n+1:(i+0.5)*n) = -1;
    flag=flag-1; 
  end
end
%%%%%
plot(t,x,'LineWidth',3);
axis([0 t(end) -3.1 3.1])
grid on;
title(['differentialcoding: [' num2str(bits) ']']);