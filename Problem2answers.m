%Part A (Solve IVP#2 with "dsolve()")
dsolve('Dy - 2*y = sin(2*t)', 'y(0)=c', 't')

%Part B (Graph solutions)
S=dsolve('Dy - 2*y = sin(2*t)', 'y(0)=c', 't');
for cs = -0.5:.05:0
scs=subs(S, 'c', cs);
    ezplot(scs, [0,1])
    hold on
end
hold off
axis([0,1,-5,5])

%Part C (Graph solutions)
S=dsolve('Dy - 2*y = sin(2*t)', 'y(0)=c', 't');
for cs = -0.5:0.05:0
scs=subs(S, 'c', cs);
    ezplot(scs, [0,2.5])
    hold on
end
hold off
axis([0,2.5,-25,25])