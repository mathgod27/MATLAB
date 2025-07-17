% Mary Robinson
% L13_Q03

function[]=L13_Q03()

[p, N] = get_inputs();

is_probably_prime = test_if_prime(p, N);

if is_probably_prime == 1
    fprintf('%d is probably prime\n', p);
else
    fprintf('%d is not prime\n', p);
end


end

function [p, N] = get_inputs()
    p = 0;
    while p < 4 || floor(p) ~= p
        p = input('Enter an integer value for p greater than or equal to 4: ');
        if p < 4 || floor(p) ~= p
            fprintf('Invalid entry %g\n', p);
        end
    end

    N = 0;
    while N <= 0 || floor(N) ~= N
        N = input('Enter a positive integer N: ');
        if N <= 0 || floor(N) ~= N
            fprintf('Invalid entry %g\n', N);
        end
    end
end

function y = mod_exp(a, b, p)
    y = 1;
    i = 0;
    while i < b
        y = mod(y * a, p);
        i = i + 1;
    end
end

function result = test_if_prime(p, N)
    trial = 1;
    result = 1;

    while trial <= N && result == 1
        a = randi([2, p - 2]);
        y = mod_exp(a, p - 1, p);
        fprintf('Trial %d: For p = %d chose a = %d giving y = %d\n', trial, p, a, y);

        if y ~= 1
            result = 0;
        end
        trial = trial + 1;
    end
end



