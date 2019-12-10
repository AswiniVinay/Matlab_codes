b= round(rand(1,10));
fc=0.8;
n=length(b);
t=0:.01:n; %time axis
x=1:1:(n+1)*100;
for i = 1:n
    for j = i:.1:i+1
        bw(x(i*100:(i+1)*100))=b(i);% for x 1 to 100 assign value of 1st bit
    end
end
bw=bw(100:end);
carrier=cos(2*pi*fc*t);
modulated = bw.*carrier;
subplot(3,1,1)
plot(t,bw);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('message');
subplot(3,1,2)
plot(t,carrier);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('carrier signal');
subplot(3,1,3)
plot(t,modulated);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('m signal');