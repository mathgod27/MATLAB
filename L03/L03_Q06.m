% Mary Robinson
% L03_Q06

% The goal of this question is to use logical operators to determine a
% phone bill inputed by the user

% clear all code
clear all

% user input of the phone minutes
pmin = input('Enter the number of minutes: ');

% test with logical operators and booleans
fmin = (pmin - 500) >= 0 && (pmin - 500) <= 250;
smin = pmin > 750;


% depending on the tests, calculate phone bill
pbill = 30 + (fmin*(pmin - 500)*0.25) + smin*(62.5 + (pmin - 750)*0.50);

% print the final phone bill
fprintf('The phone bill is $%0.2f\n', pbill);
