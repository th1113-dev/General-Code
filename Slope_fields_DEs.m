%Part_a: Stationary and general solution(s)
dsolve('Dy=-(2-y)*y','t')

%Part_b: Generate slope field for the DE
[T,Y]=meshgrid(-4:0.2:4, -2:0.2:4);
S= -2*Y+Y.^2;
L=sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.5)
axis tight
xlabel('t')
ylabel('y')

%Part_d: Solution(s) @ 1.5, .3, 2.1
dsolve('Dy=-(2-y)*y', 'y(0)=1.5' ,'t')

dsolve('Dy=-(2-y)*y', 'y(0)=.3' ,'t')

dsolve('Dy=-(2-y)*y', 'y(0)=2.1' ,'t')


%Part_e: Generate slope field for the DE
[T,Y]=meshgrid(-4:0.2:4, -2:0.2:4);
S= -2*Y+Y.^2;
L=sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.5)
axis tight
hold on
syms t
    for cs= [1.5, 0.3, 2.1]
        scs = dsolve(diff(y) == -(2-y)*y , y(0) == cs, t);
        ezplot(scs, [-4,4])
        axis([-4,4,-2,4])
    end
hold off
xlabel('t')
ylabel('y')