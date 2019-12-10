b= round(rand(1,10));
fc0=0.8;
% for high fc0 for low fc1
n=length(b);
t=0:.01:n; %time axis
x=1:1:(n+1)*100;
for i = 1:n
    if(b(i)==0)
        b_p(i)=-1;
    else
         b_p(i)=1;
    end
    for j = i:.1:i+1
        bw(x(i*100:(i+1)*100))=b_p(i);% for x 1 to 100 assign value of 1st bit
    end
end
bw=bw(100:end);
w0=3*(2*pi*fc*t);
w1=2*(2*pi*fc*t);
SinHt=sin(w0+w1);
SinLt=sin(w0-w1);
%%%%%
modulated = sin(w0+(bw).*w1)
subplot(4,1,1)
plot(t,bw);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('message');
subplot(4,1,2)
plot(t,SinHt);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('carrier signal0');
subplot(4,1,3)
plot(t,SinLt);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('carrier signal1');
subplot(4,1,4)
plot(t,modulated);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('m signal');