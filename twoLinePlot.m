figure
t=linspace(0, 2*pi, 60);
f=sin(t);
plot(t,f);
hold on

g=cos(t);
plot (t,g);

xlabel('Period')
ylabel('height')
title('pain')

legend('sin(t)', 'cos(t)')

ylim([-1.4 1.4])
xlim([0 2*pi])

% Author: Theodis Hill
% Script: shortProblems
% Dependencies: none