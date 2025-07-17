% Mary Robinson
% L09_Q04

function[]=L09_Q04()

[k, theta_max, num_points] = get_input();

[x_values, y_values] = make_flower_data(k, theta_max, num_points);

%plot_flower_data(x_values, y_values);

end

function [k, theta_max, num_points] = get_input()

k = input('Enter a value for k: ');
theta_max = input('Enter the maximum theta value: ');
num_points = input('Enter the number of points: ');

end

function [x_values, y_values] = make_flower_data(k, theta_max, num_points)

theta_values = linspace(0, theta_max, num_points);

r_values = cos(k * theta_values);

[x_values, y_values] = polar_to_rectangular(r_values, theta_values);

sampled_x = x_values(1:100:end);
sampled_y = y_values(1:100:end);

fprintf('Every 100th x value is:\n');
disp(sampled_x);
fprintf('\nEvery 100th y value is:\n');
disp(sampled_y);


end

function [x_values, y_values] = polar_to_rectangular(r_values, theta_values)

x_values = r_values .* cos(theta_values);
y_values = r_values .* sin(theta_values);

end

function plot_flower_data(x_values, y_values)

plot(x_values, y_values, 'g-');
    
xlabel('X');
ylabel('Y');

print('flower_plot', '-dpng');

end
