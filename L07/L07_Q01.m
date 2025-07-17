% Mary Robinson
% L07_Q01

function[]=L07_Q01()

% The goal of this question is get used to using anonymous functions and to
% calculate the error between a regular built in factorial function in
% matlab and the Stirling's approximation

% input n from user
n = input('Enter an integer to approximate the factorial of: ');

% calculate the factorial using stirlings and matlab, then compare and
% print results
funcstirlings = @(n) sqrt(2*pi*n)*(n/exp(1))^n;
approx = funcstirlings(n);
fact = factorial(n);
error = abs(fact - approx);

fprintf('An approximation of %d! is %0.5f\n', n, approx);
fprintf('The true value of %d! is %d\n', n, fact);
fprintf('The absolute error in the approximation is %0.4f\n', error );

end