% Mary Robinson
% L05_Q04

% The goal of this question is to compare 3 matrices and see which one is
% greater than the other

% clear all code
clear all

% gather data from user
A = input('Enter matrix A: ');
B = input('Enter matrix B: ');
C = input('Enter matrix C: ');

% compare sizes
matrix = (C > A) & (C > B);

% print
fprintf('The elements for which C is greater than A and B are:\n');
disp(matrix);