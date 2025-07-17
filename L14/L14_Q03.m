% Mary Robinson
% L14_Q03

function[]=L14_Q03()

f = @(x) x^4 - x^3 - 7*x^2 + x + 6;

[a, b, epsilon] = get_input(f);

[root, n, error] = bisection_method(f, a, b, epsilon, 1);

fprintf('An approximation of the root is x( %d ) = %.4f\n', n, root);
fprintf('An approximation of the absolute error is %.4e\n', error);

end

function [a, b, epsilon] = get_input(f)
    a = input('Enter a value for a: ');
    
    valid_b = 0;
    while valid_b == 0
        b = input('Enter a value for b: ');
        if b <= a
            fprintf('Invalid b %.4f\n', b);
        elseif sign(f(a)) == sign(f(b))
            fprintf('Invalid a %.4f and b %.4f as sign(f(a)) == sign(f(b))\n', a, b);
            [a, b, epsilon] = get_input(f);
            return;
        else
            valid_b = 1;
        end
    end

    valid_epsilon = 0;
    while valid_epsilon == 0
        epsilon = input('Enter a value for epsilon: ');
        if epsilon <= 0
            fprintf('Invalid epsilon %.4f\n', epsilon);
        else
            valid_epsilon = 1;
        end
    end
end

function [c, n, error] = bisection_method(f, a, b, epsilon, n)
    fprintf('bisection method: Enter with a = %.4f, b = %.4f, n = %d\n', a, b, n);

    c = (a + b) / 2;
    error = b - a;

    if error < epsilon
        return;
    end

    if sign(f(a)) ~= sign(f(c))
        [c, n, error] = bisection_method(f, a, c, epsilon, n + 1);
    else
        [c, n, error] = bisection_method(f, c, b, epsilon, n + 1);
    end
end



