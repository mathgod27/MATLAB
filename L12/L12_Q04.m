% Mary Robinson
% L12_Q04

function[]=L12_Q04()

    % Get valid positive integers A and B from the user
    A = get_positive_integer('Enter a positive integer A');
    B = get_positive_integer('Enter a positive integer B');
    
    % Calculate the modulus using the custom function
    result = calculate_modulus(A, B);
    
    % Print the final answer
    fprintf('Final answer: mod( %d, %d ) = %d\n', A, B, result);
end

% Function to get a positive integer from the user
function x = get_positive_integer(promptVar)
    done = 0;
    while done == 0
        inputStr = input([promptVar ': '], 's');
        len = length(inputStr);
        val = 0;
        valid = 1;
        
        % Check if the input is a valid positive integer
        for i = 1:len
            ch = inputStr(i);
            if ch < '0' || ch > '9'
                valid = 0;
                break;
            else
                digit = ch - '0';
                val = val * 10 + digit;
            end
        end
        
        if valid == 0 || val <= 0
            fprintf('Invalid entry %s\n', inputStr);
        else
            x = val;
            done = 1;
        end
    end
end

% Function to calculate modulus manually and print debug information
function modValue = calculate_modulus(A, B)
    % Start by assuming the modulus is A itself
    modValue = A;
    
    % Debug: Show the initial mod calculation attempt using sprintf
    fprintf('Debug: ');
    debug_str = sprintf('mod( %d, %d ) = ', A, B);
    fprintf(debug_str);
    
    % Loop to subtract B from A until A is less than B
    while modValue >= B
        debug_str = sprintf('mod( %d, %d ) = ', modValue, B);  % Print each step for debugging
        fprintf(debug_str);
        modValue = modValue - B;
    end
    
    % Print the final debug line showing the result
    fprintf('%d\n', modValue);
end
