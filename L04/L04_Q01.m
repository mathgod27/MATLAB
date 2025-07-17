% Mary Robinson
% L04_Q01

% The goal of this question is to show how you can input a vector and
% matlab will treat it like any other number

% clear all code
clear all

% gather vectors from user to use to find volume
vradius = input('Enter a vector of radius data: ');
vheight = input('Enter a vector of height data: ');

% calculate volume, and don't forget dots in front of each operation
volume = pi.*vheight.*vradius.^2;

% print results vector
fprintf('The volume for each trial is:\n');
disp(volume);