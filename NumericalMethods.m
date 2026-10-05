%General Euler method template
function [t,y]= NumericalMethods

function[t,y]= Eulers1(f,tI,yI,tF,N)
t= zeros(N+1,1); 
y= zeros(N+1,1);
t(1)=tI;
y(1)=yI;
h=(tF-tI)/N;
for j=1:N
    t(j+1) = t(j)+h;
    y(j+1) = y(j)+ h*f(t(j),y(j));
end
fprintf('Euler-explicit results:\n')
fprintf(' t\t\t y\n')
for j=1:length(t)
    fprintf('%5.5f\t %5.5f\t\n',t(j),y(j))
end

%General Euler method template (Problem 2)
function[x,y] = Eulerstwo(f,xI,yI,xF,N)
x= zeros(N+1,1); 
y= zeros(N+1,1);
x(1)=tI;
y(1)=yI;
h=(xF-xI)/N;
for j=1:N
    x(j+1) = x(j)+h;
    y(j+1) = y(j)+ h*f(x(j),y(j));
end
fprintf('Euler-explicit results:\n')
fprintf(' t\t\t y\n')
for j=1:length(t)
    fprintf('%5.5f\t %5.5f\t\n',t(j),y(j))
end