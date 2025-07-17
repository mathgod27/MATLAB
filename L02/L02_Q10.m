% Mary Robinson
% L02_Q10

% The purpose of this question is to calculate the derivative using the
% forward difference, the backward difference, and central difference

% clear previous code
clear all;

% gather inputs
h = input('Enter a value for h: ');
x0 = input('Enter a value for x0: ');

% calculate 3 approximations of the derivative
Forward = (sin(x0 + h) - sin(x0))/h;
Backward = (sin(x0) - sin(x0 - h))/h;
Central = (sin(x0 + h) - sin(x0 - h))/(2*h);

% calculate actual derivative
TruValue = cos(x0);

% calculate the errors
Ferror = abs(TruValue - Forward);
Berror = abs(TruValue - Backward);
Cerror = abs(TruValue - Central);

% print all values
fprintf("The forward difference approximation of sin'( %0.2f ) is %0.6f\n", x0, Forward);
fprintf("The backward difference approximation of sin'( %0.2f ) is %0.6f\n", x0, Backward);
fprintf("The central difference approximation of sin'( %0.2f ) is %0.6f\n", x0, Central);
fprintf("The true value of sin'( %0.2f ) is %0.6f\n", x0, TruValue);
fprintf("The absolute error in the forward difference approximation is %0.6f\n", Ferror);
fprintf("The absolute error in the backward difference approximation is %0.6f\n", Berror);
fprintf("The absolute error in the central difference approximation is %0.6f\n", Cerror);


