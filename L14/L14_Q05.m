% Mary Robinson
% L14_Q05

function[]=L14_Q05()

num = get_positive_integer();
fprintf('The digits of %d are:\n', num);
print_digits(num);

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

function print_digits(n)
    if n < 10
        fprintf('%d\n', n);
    else
        % recursively call on everything except the last digit
        print_digits(floor(n / 10));
        % print the last digit
        fprintf('%d\n', mod(n, 10));
    end
end


