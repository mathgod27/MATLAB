%scratch work

%this is scratch work:
%function b = get_base(var_name)
%    b = -1;
%
%    while b ~= floor(b) || b < 2 || isnan(b)
%        input_str = input(sprintf('Enter a value for %s: ', var_name), 's');
%        b = str2double(input_str);
%
%        if b ~= floor(b) || b < 2 || isnan(b)
%            fprintf('Invalid entry %s\n', input_str);
%        end
%    end
%end


% Main script
b = get_base('b');
x = get_positive_integer('x');
w = calculate_ceiling_of_log(b, x);
fprintf('The ceiling of log base %d of %d is %d\n', b, x, w);

function b = get_base(varname)
b = 0;
while b < 2
    s = input(['Enter a value for ' varname ': '], 's');
    b = 0;
    n = 0;
    i = 1;
    while i <= length(s)
        ch = s(i);
        if ch >= '0' && ch <= '9'
            n = n * 10 + (ch - '0');
            i = i + 1;
        else
            n = -1; % mark as invalid
            break;
        end
    end
    if n >= 2
        b = n;
    else
        fprintf('Invalid entry %s\n', s);
    end
end
end

function x = get_positive_integer(varname)
x = 0;
while x <= 0
    s = input(['Enter a positive integer ' varname ': '], 's');
    x = 0;
    n = 0;
    i = 1;
    while i <= length(s)
        ch = s(i);
        if ch >= '0' && ch <= '9'
            n = n * 10 + (ch - '0');
            i = i + 1;
        else
            n = -1;
            break;
        end
    end
    if n > 0
        x = n;
    else
        fprintf('Invalid entry %s\n', s);
    end
end
end

function w = calculate_ceiling_of_log(b, x)
w = 0;
val = 1;

while val < x
    fprintf('b^w = %d^%d = %d which is less than x = %d\n', b, w, val, x);
    w = w + 1;
    val = b^w;
end

fprintf('b^w = %d^%d = %d which is greater than or equal to x = %d\n', b, w, val, x);
end


