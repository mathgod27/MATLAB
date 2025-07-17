% Mary Robinson
% L03_Q05

% The goal of this question is to use Boolean expressions to test your
% grade for an arbitrary class

% clear all code
clear all

% get score from user
score = input('Enter your score between 0 and 100: ');

% test 5 times with boolean expressions
A = score >= 90 && score <= 100;
B = score >= 80 && score < 90;
C = score >= 70 && score < 80;
D = score >= 60 && score < 70;
F = score < 60;

% print results
fprintf('Your score was an A? %d\n', A);
fprintf('Your score was a B? %d\n', B);
fprintf('Your score was a C? %d\n', C);
fprintf('Your score was a D? %d\n', D);
fprintf('Your score was an F? %d\n', F);
