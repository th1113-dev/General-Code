%General Euler method (problem 1) 
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
