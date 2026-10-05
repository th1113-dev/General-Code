%Part a: plotting Dy= t/y
f= @(t,y) t/y; 
hold on
[t, yap]=ode45(f,[0,2],1);
plot(t,yap)
[T,Y]=meshgrid(0:0.2:2, 0.2:0.2:2.2);
S= T./Y;
L=sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.4)
xlabel('t')
ylabel('y')
title('numerical soln for Dy = t/y')
axis tight
hold off

%Part b: Using dsolve to solve for exact soln.
dsolve('Dy=t/y', 'y(0)=1', 't')

%Part c: plotting Dy= t/y and exact soln.
f= @(t,y) t/y; 
hold on
[t, yap]=ode45(f,[0,2],1);
plot(t,yap)
tex= linspace(0,2,100);
yex= sqrt(tex.^2 + 1);
plot(tex, yex)
[T,Y]=meshgrid(0:0.2:2, 0.2:0.2:2.2);
S= T./Y;
L=sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.4)
xlabel('t')
ylabel('y')
title('numerical and exact soln for Dy = t/y')
axis tight
hold off

%Part d: plotting with initial values
f= @(t,y) t/y; 
hold on
for c=[1.2 1.4 1.6 1.8]
    [t, yap]=ode45(f,[0,2],c);
    plot(t,yap)
    [t, yap]=ode45(f,[0,-1],c);
    plot(t,yap)
end
[T,Y]=meshgrid(-1:0.2:2, 1:0.2:3);
S= T./Y;
L=sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.4)
xlabel('t')
ylabel('y')
title('numerical soln for Dy = t/y with y(0) = [1.2 1.4 1.6 1.8]')
axis tight
hold off