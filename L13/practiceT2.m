%Practice for Test 2%

%for loops should be used when you know how may times you want to loop it,
%otherwise, use while loops.

%practice from L12_Q01

var_name = 'b';
b = get_base(var_name);
var_name2 = 'x';
x = get_positive_integer(var_name2);

%rand and randi practice
rows = 2;
cols = 3;
max = 5;
min = 1;


random_decimal_matrix = rand(rows,cols) * (max-min) + max*ones(rows,cols);
random_integer_matrix = randi([min,max], rows, cols);
disp(random_decimal_matrix);
disp(random_integer_matrix);


function b = get_base(var_name)

b = 0;

    while b < 2 || floor(b) < 2
        prompt = sprintf(['Enter a value for ', var_name, ': ']);
        b = input(prompt);
        if b < 2
            fprintf('Error, %d is not greater than or equal to 2\n', b);
        end
    end
fprintf('Good job you did it!\n');

end

function x = get_positive_integer(var_name2)

x = -1;
        while x <= 0 || floor(x) < 0 
        prompt = sprintf(['Enter a value for ', var_name2, ': ']);
        x = input(prompt);
            if x < 0
            fprintf('Error, %d is not a positive integer\n', x);
            end
        end

end


