% Mary Robinson
% L12_Q02

function[]=L12_Q02()

    A = get_positive_integer('A');
    B = get_positive_integer('B');
    gcd = euclidean_algorithm(A, B);
    fprintf('The GCD of %d and %d is %d\n', A, B, gcd);
end


function x = get_positive_integer(promptVar)
    done = 0;
    while done == 0
        inputStr = input(['Enter a positive integer ', promptVar, ': '], 's');
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

function gcd = euclidean_algorithm(a, b)

    R = zeros(1, 100); 
    R(1) = a;
    R(2) = b;
    i = 1;
    done = 0; 

    while done == 0

        R(i+2) = mod(R(i), R(i+1));

        if R(i+2) == 0
            gcd = R(i+1);
            done = 1;
        else
            i = i + 1;
        end
    end
end
