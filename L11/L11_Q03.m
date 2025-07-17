% Mary Robinson
% L11_Q03

function[]=L11_Q03()
% This function serves as a function to call all necessary functions for
% the program and to check if there is an invalid length or index
%
%   no inputs/outputs for this function
%
%   local variables: vecLength (length of the vector)
%

    vecLength = input('Enter the vector length: ');
    if vecLength < 2 || floor(vecLength) ~= vecLength
        fprintf('Invalid length %d\n', vecLength);
        return;
    end

vector = generate_random_vector(vecLength);
print_vector(vector, vecLength, 'The random vector is:\n');
idx = input('Enter the index of the value to remove: ');

    if idx < 1 || idx > vecLength || floor(idx) ~= idx
        fprintf('Invalid index %d\n', idx);
        return;
    end

newVec = remove_element(vector, vecLength, idx);
print_vector(newVec, vecLength - 1, 'The new vector is:\n');

end

function vector = generate_random_vector(len)
% This function serves as a function to generate a random vector
%
%   inputs: 
%           len- length of the vector
%   outputs:
%           vector- a random vector
%
%   local variables: minVal, maxVal (min value and max value obtained from
%                   the user and used for the random vector creation)
%
minVal = input('Enter the minimum value: ');
maxVal = input('Enter the maximum value: ');
vector = zeros(1, len);
    for i = 1:len
        vector(i) = (maxVal - minVal) * rand() + minVal;
    end
end

function print_vector(vector, len, vecoutput)
% This function serves as a function to print the random vector
%
%   inputs: 
%          len- length of the vector
%          vector- a random vector
%           vecoutput - vector output
%
%   local variables: technically i for the for loop 
%
fprintf(vecoutput);
    for i = 1:len
        fprintf('%.3f\n', vector(i));
    end
end

function newVec = remove_element(vector, len, index)
% This function serves as a function to remove an element from the vector
% and to do it until the end of the vector
%
%   inputs: 
%           len- length of the vector
%          vector- a random vector
%           index- index given from the beginning
%   outputs:
%           newVec- the new vector created
%
%   local variables: none
%
newVec = zeros(1, len - 1);
j = 1;
    for i = 1:len
        if i ~= index
            newVec(j) = vector(i);
            j = j + 1;
        end
    end
end
