% Mary Robinson
% L04_Q02

% The goal of this question is to show how to print characters as a vector
% and how to print 3 separate numbers as a vector

% clear all code
clear all

% gather data from user
charfirst = input('Enter the first letter of your first name: ','s');
charmid =  input('Enter your middle initial: ','s');
charlast = input('Enter the first letter of your last name: ','s');

fmonth = input('Enter the number of your birth month: ');
fday =  input('Enter the number of your birth day: ');
fyear = input('Enter the number of your birth year: ');

% compile data into a vector form
initials = [charfirst, charmid, charlast];
birthday = [fmonth, fday, fyear];

% print as a vector
fprintf('Your initials are: %s\n', initials);
fprintf('Your birth date is:\n');
disp(birthday);
