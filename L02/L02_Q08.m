% Mary Robinson
% L02_Q08

% The purpose of this question is to calculate electric force given user's
% input for the charges in particles and the distance between them.

% clear previous code
clear all;

% gather and store all variables
q1 = input('Enter the charge in C of particle 1: ');
q2 = input('Enter the charge in C of particle 2: ');
r = input('Enter the distance in m between the particles: ');

% calculate and print answer
F = 9.988e9*q1*q2/(r^2);
fprintf(['The electric force between particle 1 with charge %0.2f C and ' ...
    'particle 2 with charge %0.2f C at a distance of %0.2f m ' ...
    'is %0.2e N\n'], q1, q2, r, F);


