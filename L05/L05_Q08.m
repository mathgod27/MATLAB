% Mary Robinson
% L05_Q08

% The goal of this question is to make a random matrix and then to remove a
% row and a column

% clear all code
clear all

% prompt user for the matrix dimensions and random integer range
rows = input('Enter the number of rows: '); 
cols = input('Enter the number of columns: '); 
min_val = input('Enter the minimum random integer: ');
max_val = input('Enter the maximum random integer: ');

% generate a random matrix with integers between the specified range
matrix = randi([min_val, max_val], rows, cols);

% display randomly generated matrix
fprintf('The random matrix is:\n');
disp(matrix);

% prompt user for the row and column to remove
rowremove = input('Enter the number of the row to remove: ');
colremove = input('Enter the number of the column to remove: ');

% create the new matrix by removing the specified row and column
newmatrix = matrix([1:rowremove-1, rowremove+1:end], [1:colremove-1, colremove+1:end]);

% print new matrix
fprintf('The new matrix is:\n');
disp(newmatrix);
