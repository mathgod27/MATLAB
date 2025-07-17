% Mary Robinson
% L05_Q06

% The goal of this question is to solve how many people have ISP

% clear all code
clear all

% transition matrix T 
T = [0.6 0.2 0.4; 
     0.35 0.7 0.4; 
     0.05 0.1 0.2];

% prompt user for the initial number of households in each state
ispA = input('Enter number of people using ISP A: ');
ispB = input('Enter number of people using ISP B: ');
noISP = input('Enter number of people with no ISP: ');

% create the initial state vector p0
p0 = [ispA; ispB; noISP];

% calculate the state vectors after each month using matrix multiplication
p1 = T * p0; 
p2 = T * p1; 
p3 = T * p2; 
p4 = T * p3; 
p5 = T * p4; 

% display the number of people at each ISP after each month
fprintf('Number of people at each ISP after 1 month(s) is:\n');
disp(p1');

fprintf('Number of people at each ISP after 2 month(s) is:\n');
disp(p2');

fprintf('Number of people at each ISP after 3 month(s) is:\n');
disp(p3');

fprintf('Number of people at each ISP after 4 month(s) is:\n');
disp(p4');

fprintf('Number of people at each ISP after 5 month(s) is:\n');
disp(p5');

% store the results in a matrix 
result = [p1, p2, p3, p4, p5];

% display the entire matrix of results 
fprintf('Number of people at each ISP after each month is:\n');
disp(result');
