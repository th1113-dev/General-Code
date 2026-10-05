%part 1, associated direction field
[Y,X]=meshgrid(-2:0.2:2, -2:0.2:2);
Dx = -2*X + (.5)*Y;
Dy = -Y;
L=sqrt(Dx.^2 + Dy.^2);
quiver(X,Y,Dx./L,Dy./L,0.5)
axis tight
xlabel('x')
ylabel('y')
title('associated direction field')

%part 3: Using dsolve to solve in terms of m and n
[x,y]=dsolve('Dx=-2*x + .5*y,Dy=-y, x(0)=m, y(0)=n','t');

%part 4: find all staight line solutions
A=[-2,0.5;0,-1];
[Evr,Evl]=eig(sym(A))

%Part 5: Plot Straight line solns and (m,n)
[Y,X]=meshgrid(-2:0.2:2, -2:0.2:2);
Dx = -2*X + (.5)*Y;
Dy = -Y;
L=sqrt(Dx.^2 + Dy.^2);
quiver(X,Y,Dx./L,Dy./L,0.5)
axis tight
hold on
t=-1:0.1:1;
x1= exp(-2*t);
y1= zeros(size(t));
plot(x1,y1)
plot(-x1,-y1)
x2= (.5)*exp(-t);
y2=exp(-t);
plot(x2,y2)
plot(-x2,-y2)
[x,y]=dsolve('Dx=-2*x + .5*y,Dy=-y, x(0)=m, y(0)=n','t');
xf=@(t,m,n) eval(vectorize(x));
yf=@(t,m,n) eval(vectorize(y));
ae= -3:0.5:3;
be= 0:0.5:6;
a= [2,1,-2,-2,ae,ae,-ae,-ae];
b= [1,-2,2,0,be,-be,be,-be];
t=-2:0.2:2;
for k=1:length(a)
    m=a(k);
    n=b(k);
    plot(xf(t,m,n),yf(t,m,n))
hold on
end
hold off
axis ([-2,2,-2,2])
title('Straight line solutions and (m,n) values')
