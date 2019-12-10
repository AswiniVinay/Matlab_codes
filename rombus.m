% animation_point.m
clear; close all;
r=1;
% Create data
t = 0:0.001:1;   % Time data
th = 0:pi/50:2*pi;
%x = sin(2*pi*t); % Position data
x =1:-0.01:0;
y =0:0.01:1;
% Draw initial figure
figure(1);
set(gcf,'Renderer','OpenGL'); 
h = plot(x(1),0,'o','MarkerSize',10,'MarkerFaceColor','r');
set(h,'EraseMode','normal');
xlim([-1.5,1.5]);
ylim([-1.5,1.5]);
%x=x;
%y1=y;
j=1;
while j<=4
% Animation Loop
i = 1;
while i<=length(x)
    set(h,'XData',x(i),'YData',y(i));
    drawnow;
    i = i+1;
    pause(0.01);
end
if j==1
x =0:-0.01:-1;
y =1:-0.01:0;
elseif j==2
x =-1:0.01:0;
y =0:-0.01:-1;
elseif j==3
x =0:0.01:1;
y =-1:0.01:0;
else
p=1
end
j=j+1;
end

