% Mary Robinson
% L04_Q04

% The goal of this question is to prompt the user for data to then print in
% two halves (hint, use floor and length function)

% clear all code
clear all

% gather data from user
vector = input('Enter a vector of data to split: ');

% split in half and print first half
vlength = length(vector);
lvector = floor(vlength/2);

firsth = vector(1:lvector);
fprintf('The first half of the vector is:\n');
disp(firsth);

% the second half, we can use length and the first half calculation
lvector = floor(vlength/2);
secondh = vector((lvector + 1):vlength);
fprintf('The second half of the vector is:\n');
disp(secondh);


