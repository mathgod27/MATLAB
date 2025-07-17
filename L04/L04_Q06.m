% Mary Robinson
% L04_Q06

% The goal of this question is to calculate the dot product and the
% cartesian product without using the built in functions and when given
% only 3 numbers in two column vectors

% clear all code
clear all

% prompt user for two column vectors
columnA = input('Enter column vector A: ');
columnB = input('Enter column vector B: ');

% calculate the dot product and print it
transposeA = columnA';
transposeB = columnB';
dotproduct = transposeA*columnB;

fprintf('The dot product of A and B is %0.4f\n', dotproduct);

% calculate and print length of A and B
lengthA = sqrt(transposeA*columnA);
lengthB = sqrt(transposeB*columnB);

fprintf('The length of A is %0.4f\n', lengthA);
fprintf('The length of B is %0.4f\n', lengthB);

% calculate and get the angle
angle = acos(dotproduct/(lengthA*lengthB));
fprintf('The angle between A and B is %0.4f\n', angle);

% gather a and b, then calculate cross product
a1 = columnA(1:3:3);
a2 = columnA(2:3:3);
a3 = columnA(3:3:3);
b1 = columnB(1:3:3);
b2 = columnB(2:3:3);
b3 = columnB(3:3:3);

c1 = a2*b3 - a3*b2;
c2 = a3*b1 - a1*b3;
c3 = a1*b2 - a2*b1;

% print cross product in a column vector
crossproduct = [c1;c2;c3];
fprintf('The cross product between A and B is:\n');
disp(crossproduct);





