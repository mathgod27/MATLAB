% Mary Robinson
% L04_Q07

% The goal of this question is to make every k number negative, where k is
% given by the user

% clear all code
clear all

% gather data from user
vector = input('Enter a vector of real numbers: ');
k = input('Enter the index increment: ');

% count every k value and multiply by -1
Length = length(vector);
negativenums = -1*vector(1:k:Length);

% replace each k entry with number
vector(1:k:Length) = negativenums;

% print answer
fprintf('The new vector is:\n');
disp(vector);

