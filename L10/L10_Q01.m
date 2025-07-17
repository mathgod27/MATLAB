% Mary Robinson
% L10_Q01

function[]=L10_Q01()

posint = input('Enter a nonnegative integer: ');
    if posint <= 0
        fprintf('Invalid input %d\n', posint);
    else
        my_factorial(posint)
    end

end

function[]= my_factorial(posint)

answer = 1;

    for i = 1:posint
        answer = answer * i;
    end

fprintf('%d! is %d\n', posint, answer);

end

