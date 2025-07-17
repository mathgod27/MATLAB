% Mary Robinson
% L02_Q05

% The purpose of this question is to store 5 variables from the user and
% then to calculate the average of all of them.

% clear previous code
clear all;

% input and store 5 variables from the user
n1 = input('Enter number 1: ');
n2 = input('Enter number 2: ');
n3 = input('Enter number 3: ');
n4 = input('Enter number 4: ');
n5 = input('Enter number 5: ');

% calculate the average and print it
avg = (n1 + n2 + n3 + n4 + n5)/5;
fprintf('The average is %0.2f', avg);