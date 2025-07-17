% Mary Robinson
% L05_Q05

% The goal of this question is to compare 3 matrices and see which one is
% greater than the other

% clear all code
clear all

% prompt the user to enter a 3x3 matrix
matrix = input('Enter a 3 x 3 matrix: ');

% extract the elements of the matrix
a = matrix(1,1);
b = matrix(1,2); 
c = matrix(1,3);
d = matrix(2,1); 
e = matrix(2,2); 
f = matrix(2,3);
g = matrix(3,1); 
h = matrix(3,2); 
i = matrix(3,3);

% calculate the 2x2 determinants
det1 = e * i - f * h; 
det2 = d * i - f * g; 
det3 = d * h - e * g;

% calculate the determinant of the 3x3 matrix using formula
det_A = a * det1 - b * det2 + c * det3;

% display the determinant of the 3x3 matrix
fprintf('The determinant of the 3 x 3 matrix is ');
disp(det_A);
