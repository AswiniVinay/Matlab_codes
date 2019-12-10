% animation_point.m
clear; close all;
r=1;
% Create data
t = 0:0.001:1;   % Time data
th = 0:pi/50:2*pi;
%x = sin(2*pi*t); % Position data
x = r * cos(th) + 0;
y = r * sin(th) + 0;
% Draw initial figure
figure(1);
set(gcf,'Renderer','OpenGL'); 
h = plot(x(1),0,'o','MarkerSize',10,'MarkerFaceColor','r');
set(h,'EraseMode','normal');
xlim([-1.5,1.5]);
ylim([-1.5,1.5]);

% Animation Loop
i = 1;
while i<=length(x)
    set(h,'XData',x(i),'YData',y(i));
    drawnow;
    i = i+1;
    pause(0.01);
end