% Mary Robinson
% L05_Q03

% The goal of this question is to make a Vandermonde matrix using element
% wise operation

% clear all code
clear all

% gather column vector from user
vector = input('Enter a column vector of 5 x values: ');

% assemble matrix
matrix = [ones(5,1), vector, vector.^2, vector.^3, vector.^4];

% print
fprintf('The corresponding Vandermonde matrix is:\n');
disp(matrix);