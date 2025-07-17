% Mary Robinson
% L13_Q01

function[]=L13_Q01()

N = get_positive_integer();
print_twin_primes(N);

end

function num = get_positive_integer()
    num = 0;
    while num <= 0 || floor(num) ~= num
        num = input('Enter a positive integer: ');
        if num <= 0 || floor(num) ~= num
            fprintf('Invalid entry %g\n', num);
        end
    end
end

function result = is_prime(n)
    if n == 1
        result = 0;
    else
        i = 2;
        result = 1;
        while i * i <= n && result == 1
            mod_check = n - floor(n / i) * i;
            if mod_check == 0
                result = 0;
            end
            i = i + 1;
        end
    end
end

function result = check_if_twin_primes(a, b)
    if abs(a - b) == 2
        if is_prime(a) == 1 && is_prime(b) == 1
            result = 1;
        else
            result = 0;
        end
    else
        result = 0;
    end
end

function print_twin_primes(N)
    i = 2;
    while i <= N - 2
        if check_if_twin_primes(i, i + 2) == 1
            fprintf('%d and %d are twin primes\n', i, i + 2);
        end
        i = i + 1;
    end
end







