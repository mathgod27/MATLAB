% Mary Robinson
% L06_Q04

function[]=L06_Q04()

% The goal of this question is to

% input integer from user

x1 = get_x();  % Get the first x value from the user
[approx1, error1] = taylor_approx_of_cos(x1);  % Calculate the approximation and error for x1
fprintf('A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f\n', x1, approx1, error1);

x2 = get_x();  % Get the second x value from the user
[approx2, error2] = taylor_approx_of_cos(x2);  % Calculate the approximation and error for x2
fprintf('A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f\n', x2, approx2, error2);

x3 = get_x();  % Get the third x value from the user
[approx3, error3] = taylor_approx_of_cos(x3);  % Calculate the approximation and error for x3
fprintf('A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f\n', x3, approx3, error3);
       

end


% Function to prompt the user for an x value
function x = get_x()
    % Prompt for the x value
    x = input('Enter a value for x: ');
end

% Function to calculate the Taylor series approximation of cos(x)
function [approx, error] = taylor_approx_of_cos(x)
    % Taylor series approximation for cos(x) around 0
    approx = 1 - (x^2)/2 + (x^4)/24;  % This corresponds to the approximation 1 - x^2/2 + x^4/4!
    
    % Actual value of cos(x)
    actual = cos(x);
    
    % Absolute error
    error = abs(actual - approx);
end


