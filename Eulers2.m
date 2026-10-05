%General Euler method template (Problem 2)
function[x,y] = Eulers2(f,xI,yI,xF,N)
x= zeros(N+1,1); 
y= zeros(N+1,1);
x(1)=xI;
y(1)=yI;
h=(xF-xI)/N;
for j=1:N
    x(j+1) = x(j)+h;
    y(j+1) = y(j)+ h*f(x(j),y(j));
end
fprintf('Euler-explicit results:\n')
fprintf(' x\t y\n')
for j=1:length(x)
    fprintf('%5.5f\t %5.5f\n',x(j),y(j))
end