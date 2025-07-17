% Mary Robinson
% L07_Q05

function[]=L07_Q05()
%This is a huge optimazation problem ;-;

coefficients = get_coefficients();
[x_coords, y_coords] = calc_corner_points(coefficients);
obj_values = calc_obj_fun_values(x_coords, y_coords, coefficients);
best_values = calc_is_best_values(obj_values);
print_results(x_coords, y_coords, obj_values, best_values);

end

function coefficients = get_coefficients()

coefficients = input('Enter a vector of the 7 LP coefficients: ');

end

function [x_coords, y_coords] = calc_corner_points(coefficients)

a1 = coefficients(1);
a2 = coefficients(2);
b1 = coefficients(3);
b2 = coefficients(4);
b3 = coefficients(5);
    
xA = b1;
yA = ((-a1 * b1) / a2) + (b3/a2);
    
xB = ((-a2 * b2) / a1) + (b3/a1);
yB = b2;
    
xC = 0;
yC = b2;
    
xD = 0;
yD = 0;
    
xE = b1;
yE = 0;

x_coords = [xA, xB, xC, xD, xE];
y_coords = [yA, yB, yC, yD, yE];

end

function obj_values = calc_obj_fun_values(x_coords, y_coords, coefficients)

c1 = coefficients(6);
c2 = coefficients(7);

obj_values = c1 * x_coords + c2 * y_coords;

end

function [best_values] = calc_is_best_values(obj_values)

max_value = max(obj_values);
% i really cant think of a way to not use max rn
best_values = (obj_values == max_value);

end

% Function to print the results, determining which corner has the best objective function value
function print_results(x_coords, y_coords, obj_values, best_values)

fprintf('Point A ( %.2f, %.2f ) has objective function value %.2f and is max? %d\n', ...
        x_coords(1), y_coords(1), obj_values(1), best_values(1));

fprintf('Point B ( %.2f, %.2f ) has objective function value %.2f and is max? %d\n', ...
        x_coords(2), y_coords(2), obj_values(2), best_values(2));

fprintf('Point C ( %.2f, %.2f ) has objective function value %.2f and is max? %d\n', ...
        x_coords(3), y_coords(3), obj_values(3), best_values(3));

fprintf('Point D ( %.2f, %.2f ) has objective function value %.2f and is max? %d\n', ...
        x_coords(4), y_coords(4), obj_values(4), best_values(4));

fprintf('Point E ( %.2f, %.2f ) has objective function value %.2f and is max? %d\n', ...
        x_coords(5), y_coords(5), obj_values(5), best_values(5));

end

