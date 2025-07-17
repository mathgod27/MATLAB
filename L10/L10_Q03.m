% Mary Robinson
% L10_Q03

function[]=L10_Q03()

[a, r, K, isValidK] = get_input();

    if isValidK
        truncated_sum = sum_series(a, r, K);
        fprintf('The sum of terms 0 to %d of the geometric series with a = %.2f and r = %.2f is %.2f\n', K, a, r, truncated_sum);
        print_convergence(a, r);
    else
        fprintf('Invalid entry %d\n', K);
    end
end

function [a, r, K, isValidK] = get_input()

    a = input('Enter a value for a: ');
    r = input('Enter a value for r: ');
    K = input('Enter a value for K: ');

    if ~isnumeric(K) || K < 0 || mod(K, 1) ~= 0
        isValidK = 0;
    else
        isValidK = 1;
    end
end

function truncated_sum = sum_series(a, r, K)

truncated_sum = 0;
    for k = 0:K
        truncated_sum = truncated_sum + a * r^k;
    end
end

function print_convergence(a, r)
    if abs(r) < 1
        infinite_sum = a / (1 - r);
        fprintf('The series converges to %.2f\n', infinite_sum);
    else
        fprintf('The series diverges.\n');
    end
end
