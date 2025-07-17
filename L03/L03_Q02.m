% Mary Robinson
% L03_Q02

% The goal of this question is to prompt a user for min and max values
% for a real number and to generate random numbers with it

% clear all code
clear all

% prompt user for random real numbers
min = input('Enter a minimum real value: ');
max = input('Enter a maximum real value: ');

% generate random values
frandR = rand()*(max-min)+min;

%print
fprintf(['A random number in the range ( %0.4f, %0.4f ) is %0.4f\n'], min, max, frandR);

%repeat process but with integers

min = input('Enter a minimum integer value: ');
max = input('Enter a maximum integer value: ');
frandR = randi([min,max]);
fprintf('A random integer in the range [ %d, %d ] is %d\n', min, max, frandR);



