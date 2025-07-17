% Mary Robinson
% L03_Q04

% The goal of this question is to use a Cesar cypher to encrypt
% text input by the user

% clear all code
clear all

% gather letters from the user and the amount they want to shift

firstchar = input('Enter the first initial: ','s');
middlechar = input('Enter the middle initial: ','s');
lastchar = input('Enter the last initial: ','s');
shift = input('Enter the shift amount: ');

% shift the letters
firstchar = firstchar + shift;
middlechar = middlechar + shift;
lastchar = lastchar + shift;

% print said letters
fprintf('The encrypted initials are %c %c %c\n', firstchar, middlechar, lastchar);
