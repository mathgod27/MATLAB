% Mary Robinson
% L04_Q08

% The goal of this question is to calculate all y values for x 

% clear all code
clear all

% get vector from user for circle
circle = input('Enter a vector for the circle x center, y center, and radius: ');

% get x values from user
xvals = input('Enter a vector of x values: ');

% calculate y values
xc = circle(1:3:length(circle));
yc = circle(2:3:length(circle));
r = circle(3:3:length(circle));

yvals = r^2 - (xvals - xc).^2;
yvals = sqrt(yvals);
yvals = yc + yvals;

% print y values
fprintf('The corresponding y values for the top half of the circle are:\n')
disp(yvals); 





