% Author: Theodis Hill
% Script: shortProblems
% Dependencies: none

clear all; %% Using this like in the "Hello world" example for clean slate
 %% Exercise 1 (Slide 1)

a=10; % Part a

b=2.5*10^23; % Part b

c=2+3i; %  Part c

d=exp(1)^(1i*(2*pi/3)); % Part d

% Exercise 2 (slide 1)

aVec = [3.14 15 9 26]; %Part a

bVec = [2.71; 8; 28; 182]; % Part b

cVec = 5: -0.2: -5; % Part c

dVec = logspace(0, 1, 100); % Part d

eVec= ['Hello']; % Part e

% Excercise 3 (slide 2)

aMat = ones(9, 9) + ones(9, 9); % Part a

bMat = diag([1 2 3 4 5 4 3 2 1]); % Part b

cMat = 1: 1: 100; reshape(cMat, 10, 10); % Part C (had trouble here)

dMat = NaN(3, 4); % Part d

eMat = [1 1 1; -22 10 -87]; % Part e

bounds = [-3, 3]; % Part f (lines 40-42)

fMat = rand(5,3) * range(bounds) + bounds(1);

% Exercise 4 (slide 2)

x = 1/a.'; % Part a

y = (sqrt(a) + nthroot(b,1/21))^pi; % Part b

z = (log(real([(c+d)*(c-d)])*(sin((a*pi)/3))))/(c.*conj(c)); % Part c

% Exercise 5 (slide 3)

xMat = (aVec*bVec)*(aMat)^2; % Part a

yMat = (bVec*aVec);% Part b

% Part c (errors possibly caused by error in excercise 3 part c)
 
d = det(reshape(cMat, 10, 10)); % Part d

zMat = abs(d)*(aMat*bMat)'; % Part e

% Exercise 6 (slide 3)

cSum = sum(cMat); % Part a

eMean = mean(eMat); % Part b

lin=[1:20]; % Part c (lines 70-71)
lin(2:2:end)=-lin(2:2:end);

r = rand(1, 5); % Part d (lines 73-74)
r(find(r<0.5))=0;


% Exercise 7 (silde 3 & 4) in "twoLinePlot.m"



