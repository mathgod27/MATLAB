% Mary Robinson
% L03_Q03

% The goal of this question is to prompt the user for the letters of their
% name and to print the ASCII code for each one

% clear all code
clear all

% prompt user
fname = input('Enter the first letter of your first name: ','s');
lname = input('Enter the first letter of your last name: ','s');

% print the number
fprintf('The ASCII code for %c is %d\n', fname, fname);
fprintf('The ASCII code for %c is %d\n', lname, lname);

