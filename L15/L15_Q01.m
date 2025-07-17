% Mary Robinson
% L15_Q01

function[]=L15_Q01()


% Define the function to integrate and the true integral
f = @(x) cos(x);                      % Integrand
If = @(a, b) sin(b) - sin(a);         % True integral via antiderivative

% Get inputs
[a, b, epsilon] = get_input();

% Perform adaptive quadrature
fprintf('adaptive quadrature: Entering with a = %.6f and b = %.6f\n', a, b);
I_approx = adaptive_quadrature(f, a, b, epsilon);

% Compute and display true integral and error
I_true = If(a, b);
fprintf('Adaptive quadrature with a = %.2f and b = %.2f gives %.6f\n', a, b, I_approx);
fprintf('The true integral with a = %.2f and b = %.2f is %.6f\n', a, b, I_true);
fprintf('The absolute error in the approximation is %.6e\n', abs(I_true - I_approx));

end

function [a, b, eps] = get_input()
    a = input('Enter a value for a: ');
    b = input('Enter a value for b: ');
    
    eps = input('Enter a value for epsilon: ');
    while eps <= 0
        fprintf('Invalid epsilon %.4f\n', eps);
        eps = input('Enter a value for epsilon: ');
    end
end

function result = adaptive_quadrature(f, a, b, eps)
    c = (a + b)/2;
    Qab = trapezoid(f, a, b);
    Qac = trapezoid(f, a, c);
    Qcb = trapezoid(f, c, b);
    error_est = 0.5 * abs(Qab - (Qac + Qcb));
    
    if ~(error_est > eps)
        result = Qac + Qcb;
    else
        fprintf('adaptive quadrature: Entering with a = %.6f and b = %.6f\n', a, c);
        left = adaptive_quadrature(f, a, c, eps);
        fprintf('adaptive quadrature: Entering with a = %.6f and b = %.6f\n', c, b);
        right = adaptive_quadrature(f, c, b, eps);
        result = left + right;
    end
end

function Q = trapezoid(f, a, b)
    Q = (b - a)/2 * (f(a) + f(b));
end



