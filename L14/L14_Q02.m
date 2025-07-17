% Mary Robinson
% L14_Q02

function[]=L14_Q02()

numRows = get_num_rows();
print_pascals_triangle(numRows);

end

function num = get_num_rows()
    valid = 0;
    while valid == 0
        num = input("Enter the number of rows for Pascal's triangle: ");
        
        if mod(num, 1) ~= 0 || num <= 0
            fprintf('Invalid entry %d\n', num);
        else
            valid = 1;
        end
    end
end

function print_pascals_triangle(n)
    for row = 0:n-1
        for col = 0:row
            val = calc_binomial_recursive(row, col);
            fprintf('%d ', val);
        end
        fprintf('\n');
    end
end

function result = calc_binomial_recursive(n, k)
    if k == 0 || k == n
        result = 1;
    else
        result = calc_binomial_recursive(n-1, k-1) + calc_binomial_recursive(n-1, k);
    end
end





