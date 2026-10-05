
%Exercise 1 (B. Hunt)
%part A
dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 5', 't')

%part B, [0.5, 5]
s1 = dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 5', 't');
ezplot(s1, [0.5,5])

%part B, [0.2, 20]
s1 = dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 5', 't');
ezplot(s1, [0.2,20])

%part C1
dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 3', 't')

%part C, [0.5, 5]
s2 = dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 3', 't');
ezplot(s2, [0.5,5])

%part C, [0.2, 20]
s2 = dsolve('t*Dy + 3*y = 5*t^2', 'y(2) = 3','t');
ezplot(s2, [0.2,20])