% Mary Robinson
% L10_Q06

function[]=L10_Q06()

[num, isValid] = get_input();

    if ~isValid
        return;
    end
    
[prime_flag, largest_factor] = is_prime(num);
    
    if prime_flag
        fprintf('%d is prime.\n', num);
    else
        fprintf('%d is not prime as it is divisible by %d\n', num, largest_factor);
    end
end

function [num, isValid] = get_input()

num = input('Enter a positive integer: ');
    
    if ~isnumeric(num) || num < 1 || mod(num, 1) ~= 0
        isValid = 0;
        fprintf('Invalid entry %.1f\n', num);
    else
        isValid = 1;
    end
end

function [prime_flag, largest_factor] = is_prime(num)
 
    if num == 1
        prime_flag = false;
        largest_factor = -1;
        return;
    end

prime_flag = true;
largest_factor = -1;
    
    for i = 2:sqrt(num)
        if mod(num, i) == 0
            prime_flag = false;
            largest_factor = num / i;
            break;
        end
    end

    if prime_flag
        largest_factor = -1;
    end
end
