% Mary Robinson
% L04_Q03

% The goal of this question is to show how to multiply quantities using
% linear algebra and transpose. Reminder: when multiplying a row vector
% with n elements by a column vector with n elements, the result is a
% linear combination of the two.

% clear all code
clear all

% gather data from user
fchicken = input('Enter the denominations in which chicken nuggets are available: '); 
fquantity = input('Enter the quantity of each denomination to be purchased: ');

% multiply and transpose matrix
% Note: when you do .*, your output will be a vector, otherwise it will
% output a regular number
fquantity = fquantity';
purchased = fchicken*fquantity;

% print result
fprintf('The total number of chicken nuggets purchased is %d\n', purchased);

