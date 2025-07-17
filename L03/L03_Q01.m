% Mary Robinson
% L03_Q01

% The goal of this question is to have a running sum with exponentials

% clear all code
clear all

% get input from user
a = input('Enter a non-negative integer value for a: ');

% calculate and print a running sum with fprintf 5 times
i = 1;
answer = i^a;
fprintf('i is %d, Sum of i^%d so far is %d\n', i, a, answer );

i = 2;
answer = answer + i^a;
fprintf('i is %d, Sum of i^%d so far is %d\n', i, a, answer );

i = 3;
answer = answer + i^a;
fprintf('i is %d, Sum of i^%d so far is %d\n', i, a, answer );

i = 4;
answer = answer + i^a;
fprintf('i is %d, Sum of i^%d so far is %d\n', i, a, answer );

i = 5;
answer = answer + i^a;
fprintf('i is %d, Sum of i^%d so far is %d\n', i, a, answer );

