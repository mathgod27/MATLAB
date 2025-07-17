% Mary Robinson
% L08_Q04

function[]=L08_Q04()

[circle_center, radius, point] = get_circle_and_point(); 
isInside = is_in_circle(circle_center, radius, point); 

if isInside
    fprintf('The point ( %.2f, %.2f ) is in the circle with center ( %.2f, %.2f ) and radius %.2f\n', ...
        point(1), point(2), circle_center(1), circle_center(2), radius);
else
    fprintf('The point ( %.2f, %.2f ) is NOT in the circle with center ( %.2f, %.2f ) and radius %.2f\n', ...
        point(1), point(2), circle_center(1), circle_center(2), radius);
end

end

function [circle_center, radius, point] = get_circle_and_point()

    circle_center = input('Enter the circle center as a column vector: ');

    radius = input('Enter the circle radius: ');

    point = input('Enter the point as a column vector: ');
end

function isInside = is_in_circle(circle_center, radius, point)

    distance_squared = (point(1) - circle_center(1))^2 + (point(2) - circle_center(2))^2;
    
    if distance_squared <= radius^2
        isInside = 1; 
    else
        isInside = 0;
    end
end






