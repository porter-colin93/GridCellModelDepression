x = pos_x';
y = pos_y';
t = linspace(0,20,length(x)); % This is colour, varied with t.
plot3(x,y,t);

xlabel('X Position (cm)')
ylabel('Y Position (cm)')
zlabel('Time (minutes)')