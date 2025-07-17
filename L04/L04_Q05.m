% Mary Robinson
% L04_Q05

% The goal of this question is to prompt the user for length width and
% height in a vector form and then to take the volume of the given
% measurements

% clear all code
clear all

% gather data from user
LWHvector = input('Enter a vector of box lengths, widths, and heights: ');

% get the length and divide it by something
LWHlength = length(LWHvector);

% count by indicies of LWHlength and multiply together
length = LWHvector(1:3:LWHlength);
width = LWHvector(2:3:LWHlength);
height = LWHvector(3:3:LWHlength);

Volume = length.*width.*height;

% print answer
fprintf('The volume of each box is:\n');
disp(Volume);


