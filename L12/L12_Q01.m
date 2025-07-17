% Mary Robinson
% L12_Q01

function[]=L12_Q01()

%we want it so we can go back into the function and change the letter
%variables to whatever we want. for example, in number 2, we are asking for
%A first, and then repeating it and asking for B with the same prompt.

var_name = 'b';
b = get_base(var_name);
var_name2 = 'x';
x = get_positive_integer(var_name2);
w = calculate_ceiling_of_log(b, x);
fprintf('The ceiling of log base %d of %d is %d\n', b, x, w);
end


function b = get_base(var_name)
    done = 0;
    while done == 0
        inputStr = input(['Enter a value for ', var_name, ': '], 's');
        len = length(inputStr);
        val = 0;
        valid = 1;

        for i = 1:len
            ch = inputStr(i);
            if ch < '0' || ch > '9'
                valid = 0;
                break;
            else
                digit = ch - '0'; 
                val = val * 10 + digit;
            end
        end

        if valid == 0 || val < 2
            fprintf('Invalid entry %s\n', inputStr);
        else
            b = val;
            done = 1;
        end
    end
end

function x = get_positive_integer(var_name2)
    done = 0;
    while done == 0
        inputStr = input(['Enter a positive integer ', var_name2, ': '], 's');
        len = length(inputStr);
        val = 0;
        valid = 1;

        for i = 1:len
            ch = inputStr(i);
            if ch < '0' || ch > '9'
                valid = 0;
                break;
            else
                digit = ch - '0'; 
                val = val * 10 + digit;
            end
        end

        if valid == 0 || val <= 0
            fprintf('Invalid entry %s\n', inputStr);
        else
            x = val;
            done = 1;
        end
    end
end

function w = calculate_ceiling_of_log(b, x)
    w = 0;
    power = 1; 

    while power < x
        fprintf('b^w = %d^%d = %d which is less than x = %d\n', b, w, power, x);
        w = w + 1;

        temp = 1;
        i = 0;
        while i < w
            temp = temp * b;
            i = i + 1;
        end

        power = temp;
    end

    fprintf('b^w = %d^%d = %d which is greater than or equal to x = %d\n', b, w, power, x);
end

