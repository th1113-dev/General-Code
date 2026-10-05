%Author: Theodis S. Hill
%Script: findNear
%Dependencies: N/A

function ind = findNearest(x, desiredVal) %Slight weirdness to findNearest
    abs(x(:)-desiredVal);
    ind = find(abs(x(:)-desiredVal) == min(abs(x(:)-desiredVal)));
end

x= [2 4 6 8 10 12 14 16 18 20];
desiredVal = 9;

findNearest(x,desiredVal)
