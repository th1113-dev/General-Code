%Part a: Use solve to find all equillibrium solutions
syms R F
S= solve(2*(1-(R/3))*R-R*F, -2*F + 4*R*F);
[S.R,S.F]

%Part B: Plot solution curves 
f=@(t,P) [2*(1-(P(1)/3))*P(1)-P(1)*P(2); -2*P(2) + 4*P(1)*P(2)];
%P(1) represents R and P(2) represents F
a = [1];
b = [3.7];
[t,Pap]=ode45(f,[1,30],[a,b]);
plot(t,Pap(:,1),'Color','r')
hold on
plot(t,Pap(:,2),'Color','b')
[t,Pap]=ode45(f,[1,0],[a,b]);
plot(t,Pap(:,1),'Color','r')
plot(t,Pap(:,2),'Color','b')
hold off
%The graph of R(t) is Red and the graph of F(t) is Blue
axis([0,2,0,6])
xlabel('t')
ylabel('Population')
title('population solution curves for R(1)=1 and F(1)=3.7')

%Part D: Plot solution curves(full span [0,30])
f=@(t,P) [2*(1-(P(1)/3))*P(1)-P(1)*P(2); -2*P(2) + 4*P(1)*P(2)];
%P(1) represents R and P(2) represents F
a = [1];
b = [3.7];
[t,Pap]=ode45(f,[1,30],[a,b]);
plot(t,Pap(:,1),'Color','r')
hold on
plot(t,Pap(:,2),'Color','b')
[t,Pap]=ode45(f,[1,0],[a,b]);
plot(t,Pap(:,1),'Color','r')
plot(t,Pap(:,2),'Color','b')
hold off
%The graph of R(t) is Red and the graph of F(t) is Blue
axis([0,30,0,6])
xlabel('t')
ylabel('Population')
title('population solution curves for R(1)=1 and F(1)=3.7, [0,30]')

%Graphs of phase diagram(W/ equilibrium slns)
f=@(t,P) [2*(1-(P(1)/3))*P(1)-P(1)*P(2); -2*P(2) + 4*P(1)*P(2)];
[t,Pap]=ode45(f,[0,30],[0,0]);
plot(Pap(:,1),Pap(:,2),'.r','MarkerSize',20)
hold on
[t,Pap]=ode45(f,[0,30],[3,0]);
plot(Pap(:,1),Pap(:,2),'.r','MarkerSize',20)
[t,Pap]=ode45(f,[0,30],[1/2,5/3]);
plot(Pap(:,1),Pap(:,2),'.r','MarkerSize',20)
a=[1];
b=[3.7];
for k=1
[t,Pap]=ode45(f,[1,30],[a(k),b(k)]);
plot(Pap(:,1),Pap(:,2),'LineWidth',2, 'Color', "b")
[t,Pap]=ode45(f,[1,0],[a,b]);
plot(Pap(:,1),Pap(:,2),'LineWidth',2, 'Color', "b")
end
hold off
axis([0,3,0,6])
xlabel('R')
ylabel('F')
title('Phase diagram for R(1)=1 and F(1)=3.7 w/ equilibrium solns')

%Graphs of phase diagram (No equilibrium slns)
f=@(t,P) [2*(1-(P(1)/3))*P(1)-P(1)*P(2); -2*P(2) + 4*P(1)*P(2)];
a=[1];
b=[3.7];
for k=1
[t,Pap]=ode45(f,[1,30],[a(k),b(k)]);
plot(Pap(:,1),Pap(:,2),'LineWidth',2, 'Color', "b")
hold on
[t,Pap]=ode45(f,[1,0],[a,b]);
plot(Pap(:,1),Pap(:,2),'LineWidth',2, 'Color', "b")
end
hold off
axis([0,2,0,6])
xlabel('R')
ylabel('F')
title('Phase diagram for R(1)=1 and F(1)=3.7 : no equilibrium solns')