%author: Theodis S. Hill
%Script: concentric
%Dependencies: N/A
function [x,y] =getCircle(center,r)
    a = linspace(0,2*pi);
    x = center(1) + r*cos(a);
    y = center(2) + r*sin(a);
end

figure;
hold on;

for center = 1:5
    if center==1
       r= 1;
       [x,y] =getCircle(center,r);
       plot(x,y,'LineWidth',3)
    elseif center==2
        r = 1;
        [x,y] =getCircle(center,r);
        plot(x,y,'LineWidth', 3)
         elseif center==3
        r = 1;
        [x,y] =getCircle(center,r);
        plot(x,y,'LineWidth', 3)
         elseif center==4
        r = 1;
        [x,y] =getCircle(center,r);
        plot(x,y,'LineWidth', 3)
         elseif center==5
        r = 1;
        [x,y] =getCircle(center,r);
        plot(x,y,'LineWidth', 3)
    end
end

center;
[x,y] =getCircle(center,r);