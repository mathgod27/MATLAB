% Mary Robinson
% L02_Q06

% The purpose of this question is to calculate the centroid of a triangle
% using the inputs from the user

% clear previous code
clear all;

% gather all variables
xA = input('Enter x value for triangle point A: ');
yA = input('Enter y value for triangle point A: ');
xB = input('Enter x value for triangle point B: ');
yB = input('Enter y value for triangle point B: ');
xC = input('Enter x value for triangle point C: ');
yC = input('Enter y value for triangle point C: ');

%print points of triangle
fprintf('Point A of the triangle is ( %0.2f, %0.2f )\n', xA, yA);
fprintf('Point B of the triangle is ( %0.2f, %0.2f )\n', xB, yB);
fprintf('Point C of the triangle is ( %0.2f, %0.2f )\n', xC, yC);

% calculate the centroid
xG = (xA + xB + xC)/3;
yG = (yA + yB + yC)/3;

% print centroid output
fprintf('The centroid of the triangle is ( %0.2f, %0.2f )\n', xG, yG);




