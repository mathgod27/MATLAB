% Mary Robinson
% L05_Q02

% The goal of this question is to make a random Frobenius matrix and to
% populate a column with random numbers underneath the 0

% clear all code
clear all

% generate matrix and get inputs from user

m = input('Enter the number of rows in the matrix: ');
column = input('Enter the column to populate: ');
min = input('Enter the minimum random number: ');
max = input('Enter the maximum random number: ');

Fmatrix = eye(m,m);

% replace after the column value
replace = rand(m-1,1)*(max-min)+min*ones(m-1,1);
Fmatrix(m,1) = replace;
disp(Fmatrix);

