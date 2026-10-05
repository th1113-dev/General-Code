%Recasting original DE in terms of v and x and part a
%original DE: D2x + 2*Dx -3*x +x^3 = 0
syms x v
S= solve(-2*v + 3*x - x^3, v, [x, v]);
[S.x, S.v]

%part b, associated direction field
[V,X]=meshgrid(-5:0.4:5, -5:0.4:5);
Dx = V;
Dv = -2*V + 3*X - X.^3;
L=sqrt(Dx.^2+Dv.^2);
quiver(X,V,Dx./L,Dv./L,0.5)
axis tight
xlabel('x')
ylabel('v')
title('associated direction field :  -2*v + 3*x - x^3')

%part d, plotting given script
f=@(t,P) [P(2);3*P(1)-P(1)^3-2*P(2)];
a=-2:0.2:2;
b=-2:0.2:2;
for k=1:length(a)
    [t,Pap]=ode45(f, [0,3], [a(k),b(k)]);
    plot(Pap(:,1),Pap(:,2),'LineWidth',2)
hold on
    [t,Pap]=ode45(f, [0,-3], [a(k),b(k)]);
    plot(Pap(:,1),Pap(:,2),'LineWidth',2)
end
[V,X]=meshgrid(-5:0.4:5, -5:0.4:5);
Dx = V;
Dv = -2*V + 3*X - X.^3;
L=sqrt(Dx.^2+Dv.^2);
quiver(X,V,Dx./L,Dv./L,0.5)
axis tight
xlabel('x')
ylabel('v')
title('associated direction field :  -2*v + 3*x - x^3')
hold off
axis([-5,5,-5,5])