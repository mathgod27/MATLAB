% Mary Robinson
% L06_Q01

function[]=L06_Q02()

% The goal of this question is to test for a pythagorean triple

a = input('Enter a positive integer a: ');
b = input('Enter a positive integer b: ');
c = input('Enter a positive integer c: ');

% call the is_pythagorean_triple function
result = is_pythagorean_triple(a, b, c);

% print
fprintf('a = %d, b = %d, c = %d is a Pythagorean triple? %d\n', a, b, c, result);


end


% function to check if the numbers form a Pythagorean triple
function result = is_pythagorean_triple(a, b, c)
%   Inputs: 
%       integer     an integer value to test
%   Outputs:
%       x       a boolean value of 0 or 1 to determine if it is divisble by
%               4. 0 means no, 1 means yes.
%   Local Variables:
%       remainder   our remainder after taking mod from integer
%   Begin script:

    % directly return 1 (true) or 0 (false) based on the condition
    result = (a^2 + b^2 == c^2); 
end

