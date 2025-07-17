% Mary Robinson
% L02_Q09

% The purpose of this question is to calculate the taylor series
% approximation, the true value, and the absolute approximation error

% clear previous code
clear all;

% ask user for value of xp
xp = input('Enter a value for xp: ');

% calculate taylor approximation, calculate true value of sin, then 
% approximation error

Taylor = xp - xp^3/(factorial(3)) + xp^(5)/(factorial(5));

TruVal = sin(xp);

Error = abs(TruVal - Taylor);

% print values
fprintf('A Taylor series approximation of sin( %0.2f ) is %0.6f \n', xp, Taylor);
fprintf('The true value of sin( %0.2f ) is %0.6f\n', xp, TruVal);
fprintf('The absolute approximation error is %0.6f\n', Error);

