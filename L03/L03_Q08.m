% Mary Robinson
% L03_Q08

% The goal of this question is to get 5 random numbers from a user, given a
% minimum and maximum from the user,  and then to create a running sum of
% all the numbers, then to calculate the standard deviation and mean

% clear all code
clear all

% gather inputs from user
fMin = input('Enter minimum number: ');
fMax = input('Enter maximum number: ');

% running sum with random numbers
x1 = rand()*(fMax-fMin) + fMin;
x2 = rand()*(fMax-fMin) + fMin;
x3 = rand()*(fMax-fMin) + fMin;
x4 = rand()*(fMax-fMin) + fMin;
x5 = rand()*(fMax-fMin) + fMin;

fSum = x1;
fSum2 = x1^2;
fprintf(['Random number 1 is %0.2f, Sum of xi so far is %0.2f, Sum of' ...
    'xi^2 so far is %0.2f\n', x1, fSum, fSum2]);

fSum = fSum + x2;
fSum2 = fSum2 + x2^2;
fprintf(['Random number 2 is %0.2f, Sum of xi so far is %0.2f, Sum of' ...
    'xi^2 so far is %0.2f\n', x2, fSum, fSum2]);

fSum = fSum + x3;
fSum2 = fSum2 + x3^2;
fprintf(['Random number 3 is %0.2f, Sum of xi so far is %0.2f, Sum of' ...
    'xi^2 so far is %0.2f\n', x3, fSum, fSum2]);

fSum = fSum + x4;
fSum2 = fSum2 + x4^2;
fprintf(['Random number 4 is %0.2f, Sum of xi so far is %0.2f, Sum of' ...
    'xi^2 so far is %0.2f\n', x4, fSum, fSum2]);

fSum = fSum + x5;
fSum2 = fSum2 + x5^2;
fprintf(['Random number 5 is %0.2f, Sum of xi so far is %0.2f, Sum of' ...
    'xi^2 so far is %0.2f\n', x5, fSum, fSum2]);

% calculate mean and standard deviation
mean = fSum/5;
se = sqrt((5*fSum2 - fSum^2)/20);

% print everything
fprintf('The mean is %0.2f', mean);
fprintf('The standard deiation is %0.2f,', se);