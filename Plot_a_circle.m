%Author: Theodis S. Hill
%Script: plot a circle
%Dependencies: N/A

function [x,y] =getCircle(center,r)
    a = linspace(0,2*pi);
    x = center(1) + r*cos(a);
    y = center(2) + r*sin(a);
end


%Script: olympic
%Dependencies: N/A

figure;
hold on

r=1
center = [(1:5)]
getCircle(center,r)