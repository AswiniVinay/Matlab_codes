function [t,x] = biprz(bits, bitrate)
% Bi-polar RZ code.
%   [T, X] = PRZ(BITS, BITRATE) encodes BITS array using polar RZ
%   code with given BITRATE. Outputs are time T and encoded signal
%   values X.

T = length(bits)/bitrate; % full time of bit sequence
n = 200;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
flag = 0;
x = zeros(1,length(t)); % output signal
for i = 0:length(bits)-1
  if bits(i+1) == 1 && flag ==0
    x(i*n+1:(i+0.5)*n) = 1;
    flag=flag+1;
  elseif bits(i+1) == 1 && flag ==1
   x(i*n+1:(i+0.5)*n) = -1;
    flag=flag-1; 
  else
    x(i*n+1:(i+0.5)*n) = 0;
  end
end
