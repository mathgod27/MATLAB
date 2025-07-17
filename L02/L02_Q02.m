% Mary Robinson
% L02_Q02

% The purpose of this question is to give an output cost of liters of 
% water, given an input of liters from the user

% clear previous code
clear all;

% input from user the liters of water
WaterL = input('Enter the number of liters this month: ');

% variables
CostperL = 10.5;
SewageTreat = 2.75;

% calculate the total cost
TotalCost = (CostperL*WaterL)/100 + (SewageTreat*WaterL)/100;

% print it for the user to see
fprintf('Cost for %0.2f liters is $%.02f \n', WaterL, TotalCost);