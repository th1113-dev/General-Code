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

for r = (1:5)
    center = [0, 0];
    [x,y] = getCircle(center,r);
    plot(x,y,'LineWidth', 3)
end
colormap('jet');
axis equal;
