% Mary Robinson
% L02_Q04

% The purpose of this question is to find the intersection between two
% lines, using a formula for x and y

% clear previous code
clear all;

% ask user for variables
m1 = input('Enter value for m1: ');
b1 = input('Enter value for b1: ');
m2 = input('Enter value for m2: ');
b2 = input('Enter value for b2: ');

% calculate the intersection and print it
xstar = (b2 - b1)/(m1 - m2);
ystar = m1*xstar + b1;
fprintf(['Lines y = %0.2f x + %0.2f and' ...
    ' y = %0.2f x + %0.2f intersect at ( %0.2f, %0.2f )\n'] ...
    , m1, b1, m2, b2, xstar, ystar);
