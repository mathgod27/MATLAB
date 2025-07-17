% Mary Robinson
% L10_Q04

function[]=L10_Q04()

[num_rows, isValid] = get_num_rows();
    if isValid
        print_pascals_triangle(num_rows);
    else
        fprintf('Invalid entry %d\n', num_rows);
    end
end

function [num_rows, isValid] = get_num_rows()

num_rows = input("Enter the number of rows for Pascal's triangle: ");
    if ~isnumeric(num_rows) || num_rows <= 0 || mod(num_rows, 1) ~= 0
        isValid = 0;
    else
        isValid = 1;
    end
end

function print_pascals_triangle(num_rows)

    for n = 0:num_rows-1
        for k = 0:n
            binom_coeff = calc_binomial(n, k);
            fprintf('%d ', binom_coeff);
        end
        fprintf('\n');
    end
end

function binom_coeff = calc_binomial(n, k)

    if k == 0 || k == n
        binom_coeff = 1;
    else
        binom_coeff = 1;
        for i = 1:k
            binom_coeff = binom_coeff * (n + 1 - i) / i;
        end
    end
end
