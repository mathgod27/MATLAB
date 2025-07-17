% Mary Robinson
% L14_Q04

function[]=L14_Q04()

n = get_positive_integer();
[value, calls] = fibonacci(n, 1);
fprintf('It took %d calls to determine that Fibonacci number %d is %d\n', calls, n, value);

end

function num = get_positive_integer()
    valid = 0;
    while valid == 0
        num = input('Enter a positive integer: ');
        if mod(num, 1) ~= 0 || num <= 0
            fprintf('Invalid entry %d\n', num);
        else
            valid = 1;
        end
    end
end

function [fib, count] = fibonacci(n, call_num)
    fprintf('Fibonacci: Enter on call %d to compute Fibonacci( %d )\n', call_num, n);

    if n == 1
        fib = 0;
        count = call_num;
    elseif n == 2
        fib = 1;
        count = call_num;
    else
        [fib1, count1] = fibonacci(n - 1, call_num + 1);
        [fib2, count2] = fibonacci(n - 2, count1 + 1);
        fib = fib1 + fib2;
        count = count2;
    end
end

