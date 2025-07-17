% Mary Robinson
% L09_Q06

function[]=L09_Q06()

[x_values, taylor_n1, taylor_n2, taylor_n3, taylor_n4] = calc_taylor_approx_of_sin();

%plot_taylor_approx_of_sin(x_values, taylor_n1, taylor_n2, taylor_n3, taylor_n4);

end

function [x_values, taylor_n1, taylor_n2, taylor_n3, taylor_n4] = calc_taylor_approx_of_sin()

x_min = input('Enter the minimum x value: ');
x_max = input('Enter the maximum x value: ');
num_x = input('Enter the number of x values: ');

x_values = linspace(x_min, x_max, num_x);

taylor_n1 = x_values;
taylor_n2 = taylor_n1 - (x_values.^3) / factorial(3);
taylor_n3 = taylor_n2 + (x_values.^5) / factorial(5);
taylor_n4 = taylor_n3 - (x_values.^7) / factorial(7);


disp_results(1, taylor_n1);
disp_results(2, taylor_n2);
disp_results(3, taylor_n3);
disp_results(4, taylor_n4);

end

function disp_results(n, taylor_values)

fprintf('For n = %d the Taylor approximation of sin gives values:\n', n);
disp(taylor_values);


end

function plot_taylor_approx_of_sin(x_values, taylor_n1, taylor_n2, taylor_n3, taylor_n4)

sin_x = sin(x_values);

plot(x_values, taylor_n1, 'r-', x_values, taylor_n2, 'b-', ...
         x_values, taylor_n3, 'g-', x_values, taylor_n4, 'm-', ...
         x_values, sin_x, 'k-');

xlabel('x');
ylabel('Function Value');
legend('n = 1', 'n = 2', 'n = 3', 'n = 4', 'sin(x)', 'Location', 'northwest');

print('taylor_sin_plot', '-dpng');

end
