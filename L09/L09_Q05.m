% Mary Robinson
% L09_Q05

function[]=L09_Q05()

[min_rand, max_rand, point_counts] = get_input();

%make_and_plot_random_data(min_rand, max_rand, point_counts);

end

function [min_rand, max_rand, point_counts] = get_input()

min_rand = input('Enter the minimum random number: ');
max_rand = input('Enter the maximum random number: ');
point_counts = input('Enter a vector of 5 counts of points: ');

end

function make_and_plot_random_data(min_rand, max_rand, point_counts)

x_values = arrayfun(@(n) min_rand + (max_rand - min_rand) * rand(1, n), point_counts, 'UniformOutput', false);

y_values = arrayfun(@(n, idx) ones(1, n) * idx, point_counts, 1:5, 'UniformOutput', false);

x_all = [x_values{:}];
y_all = [y_values{:}];

plot(x_all, y_all, 'bo');

xlabel('Random X values');
ylabel('Category (Y)');

print('random_data_plot', '-dpng');

end
