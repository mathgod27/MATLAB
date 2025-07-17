% Mary Robinson
% L14_Q01

function[]=L14_Q01()

userint = get_integer();
usernint = get_nonnegative_integer();
result = exponential_function(userint, usernint);
fprintf('The result of %d^%d is %d\n', userint, usernint, result);


end

function userint = get_integer()
    valid = 0;

    while valid == 0
        userint = input('Enter an integer: ');
        if mod(userint,1) ~= 0
            fprintf('Invalid entry %d\n', userint);
        else
            valid = 1;
        end
    end
end

function usernint = get_nonnegative_integer()
    valid = 0;

    while valid == 0
        usernint = input('Enter a nonnegative integer: ');

        if mod(usernint, 1) ~= 0 || usernint < 0
            fprintf('Invalid entry %d\n', usernint);
        else
            valid = 1;
        end
    end
end

function result = exponential_function(a, n)
    if n == 0
        result = 1;
    else
        result = a * exponential_function(a, n - 1);
    end
end

