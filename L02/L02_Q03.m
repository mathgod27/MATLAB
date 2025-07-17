% Mary Robinson
% L02_Q03

% The purpose of this question is to calculate PV = nRT when given a
% user input of pressure, tempurature, and volume. The output would be n

% clear previous code
clear all;

% get pressure, volume, and tempurature from user
P = input('Enter the pressure in Pascals: ');
V = input('Enter the volume in cubic meters: ');
T = input('Enter the temperature in Kelvin: ');

% calculate PV = nRT and print answer
n = P*V/8.3145/T;
fprintf(['A gas with pressure %0.2f Pa, volume %0.2f mˆ3,' ...
    ' and temperature %0.2f K has %0.2f moles\n'], P, V, T, n);
