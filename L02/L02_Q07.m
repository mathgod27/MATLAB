% Mary Robinson
% L02_Q07

% The purpose of this question is to divide two numbers given a divisor and
% a number from the user.

% clear previous code
clear all;

% get divisor from user
fDivisor = input('Enter a divisor: ');

% get number from user, divide it, then print it 3 times without using
% recursion, for, while, or if statements
fIn = input('Enter a number: ');
fOut = fIn/fDivisor;
fprintf('The result of %0.4f / %0.4f is %0.4f\n', fIn, fDivisor, fOut);

fIn = input('Enter a number: ');
fOut = fIn/fDivisor;
fprintf('The result of %0.4f / %0.4f is %0.4f\n', fIn, fDivisor, fOut);

fIn = input('Enter a number: ');
fOut = fIn/fDivisor;
fprintf('The result of %0.4f / %0.4f is %0.4f\n', fIn, fDivisor, fOut);
