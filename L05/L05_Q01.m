% Mary Robinson
% L05_Q01

% The goal of this question is to make a random matrix given m and n, to
% extract a row, and then to replace a column

% clear all code
clear all

% user gives m and n as well as min and max
m = input('Enter the number of rows: ');
n = input('Enter the number of columns: ');
min = input('Enter the minimum random number: ');
max = input('Enter the maximum random number: ');

% use those values to create a random integer matrix and print

ogmatrix = randi([min,max], m,n);
fprintf('The original random matrix is:\n');
disp(ogmatrix);

% extract a row and print

rowex = input('Enter the number of the row to extract: ');
row = ogmatrix(rowex, :);
fprintf('The extracted row is:\n');
disp(row);

% change a column and print

column = input('Enter the number of the column to replace: ');
% key to matrices: this is what we are replacing it with, how many times 
% we are replacing (the m part), and the where it's going is the ogmatrix()
newcolumn = randi([min, max], m, 1);
ogmatrix(:, column) = newcolumn;

fprintf('The new random matrix is:\n');
disp(ogmatrix);



