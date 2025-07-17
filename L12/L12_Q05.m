% Mary Robinson
% L12_Q05

function[]=L12_Q05()
    %Get the initial guess and error threshold from the user
    [x1, epsilon] = get_input();
    
    % Define the function f(x) = x^4 - x^3 - 7x^2 + x + 6
    f = @(x) x^4 - x^3 - 7*x^2 + x + 6;
    
    % Define the derivative df(x) = 4x^3 - 3x^2 - 14x + 1
    df = @(x) 4*x^3 - 3*x^2 - 14*x + 1;
    
    % Define the Newton's method function g(x) = x - f(x) / df(x)
    g = @(x) x - f(x) / df(x);
    
    %Run Newton's method
    [root, n, final_error, roots, errors] = newtons_method(g, x1, epsilon);
    
    % Output the results
    fprintf('An approximation of the root is x( %d ) = %.4f\n', n, root);
    fprintf('An approximation of the absolute error is %.4e\n', final_error);
    
    % Plot the results
    plot_newtons_method_results(n, roots, errors);
end

% Function to get the initial guess x1 and error threshold epsilon
function [x1, epsilon] = get_input()
    done = 0;
    while done == 0
        x1 = input('Enter an initial guess x1: ');
        epsilon = input('Enter a value for epsilon: ');
        
        % Check for a valid positive value for epsilon
        if epsilon <= 0
            fprintf('Invalid epsilon %.4f\n', epsilon);
        else
            done = 1;
        end
    end
end

% Function to implement Newton's method and find the root
function [root, n, final_error, roots, errors] = newtons_method(g, x1, epsilon)
    x = x1;
    error = inf;  % Start with a large error value
    n = 1;  % Start with the first iteration
    roots = x;  % Store the roots for plotting (if needed)
    errors = error;  % Store the errors for plotting (if needed)
    
    while error > epsilon
        x_new = g(x);  % Compute the next approximation using g(x)
        
        % Compute the absolute error
        error = abs(x_new - x);
        
        % Store the new root and error for later use
        roots = [roots, x_new];
        errors = [errors, error];
        
        % Update the current approximation
        x = x_new;
        
        % Increment the iteration counter
        n = n + 1;
    end
    
    root = x;  % The final approximation of the root
    final_error = error;  % The final error approximation
end

% Function to plot Newton's method results
function plot_newtons_method_results(n, roots, errors)
    % Plot root approximation vs. iteration number
    figure;
    plot(1:n, roots, '-o', 'LineWidth', 2);
    title('Root Approximation vs. Iteration Number');
    xlabel('Iteration Number');
    ylabel('Root Approximation');
    grid on;
    saveas(gcf, 'root_approximation.png');
    
    % Plot error approximation vs. iteration number using semilogy
    figure;
    semilogy(1:n, errors, '-o', 'LineWidth', 2);
    title('Error Approximation vs. Iteration Number');
    xlabel('Iteration Number');
    ylabel('Log(Error Approximation)');
    grid on;
    saveas(gcf, 'error_approximation.png');
end
