b= round(rand(1,10));
fc0=0.3;
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
bw=bw(100:end)
SinHt=sin(2*pi*t)
%%%%%
modulated =bw.*SinHt
subplot(3,1,1)
plot(t,bw);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('message');
subplot(3,1,2)
plot(t,SinHt);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('carrier signal0');
subplot(3,1,3)
plot(t,modulated);
axis([0 t(end) -2.1 2.1])
ylabel('amp');
xlabel('t');
title('m signal');