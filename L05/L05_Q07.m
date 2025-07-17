% Mary Robinson
% L05_Q07

% The goal of this question is to make a random matrix and then do row
% operations on it

% clear all code
clear all

% prompt user for the matrix dimensions and random integer range
m = input('Enter the number of rows: ');
n = input('Enter the number of columns: ');
min_val = input('Enter the minimum random integer: ');
max_val = input('Enter the maximum random integer: ');

% generate a random matrix with integers
matrix = randi([min_val, max_val], m, n);

% display randomly generated matrix
fprintf('The random matrix is:\n');
disp(matrix);

% prompt the user for the row numbers i, j and scalar multiplier s
i = input('Enter the number i of the row for the row op: ');  % Row to be updated
j = input('Enter the number j of the row for the row op: ');  % Row to be used in operation
s = input('Enter the scalar multiplier for the row op: ');  % Scalar multiplier

% perform the row operation
matrix(i, :) = s * matrix(j, :) + matrix(i, :);

% display the matrix after the row operation
fprintf('The matrix after the row op is:\n');
disp(matrix);
