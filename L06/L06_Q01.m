% Mary Robinson
% L06_Q01

function[]=L06_Q01()

% The goal of this question is get used to using functions by checking if
% an inputed integer is divisible by 4.

% input integer from user

integer = input('Enter an integer: ');
x = is_divisible_by_4(integer);
fprintf('%d is divisible by 4? %d', integer, x);

end

function[x] = is_divisible_by_4(integer)
% The function is_divisible_by_4 will test to see if an integer is
% divisible by 4
%   Inputs: 
%       integer     an integer value to test
%   Outputs:
%       x       a boolean value of 0 or 1 to determine if it is divisble by
%               4. 0 means no, 1 means yes.
%   Local Variables:
%       remainder   our remainder after taking mod from integer
%   Begin script:

% test if its divisible by 4 then print

remainder = mod(integer,4);
x = remainder == 0;

end

