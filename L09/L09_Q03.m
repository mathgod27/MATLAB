% Mary Robinson
% L09_Q03

function[]=L09_Q03()

[n, a, x_min, x_max] = get_input();

[x_values, f_values, df_values] = calc_plot_data(n, a, x_min, x_max);

print_plot_data(x_values, f_values, df_values);

%plot_poly_and_deriv(x_values, f_values, df_values);

end

function [n, a, x_min, x_max] = get_input()

n = input('Enter the exponent of x: ');
a = input('Enter the coefficient of x: ');
x_min = input('Enter the minimum x value: ');
x_max = input('Enter the maximum x value: ');

end

function [x_values, f_values, df_values] = calc_plot_data(n, a, x_min, x_max)

x_values = x_min:0.01:x_max; 
f_values = a * (x_values .^ n); 
df_values = a * n * (x_values .^ (n - 1)); 

end

function print_plot_data(x_values, f_values, df_values)

sampled_x = x_values(1:100:end);
sampled_f = f_values(1:100:end);
sampled_df = df_values(1:100:end);

fprintf('For x values\n');
disp(sampled_x)
fprintf('the function values are\n');
disp(sampled_f);
fprintf('and the derivative values are\n');
disp(sampled_df);

end

function plot_poly_and_deriv(x_values, f_values, df_values)

plot(x_values, f_values, 'k-', x_values, df_values, 'b--');
xlabel('x');
ylabel('Function Value');
legend('f(x)', "f'(x)");

print('poly_derivative_plot', '-dpng');

end
