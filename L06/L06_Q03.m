% Mary Robinson
% L06_Q01

function[]=L06_Q03()

% The goal of this question is to

% input integer from user

[x, y, z] = get_cartesian();                    
[r, theta, phi] = cartesian_to_spherical(x, y, z); 
print_spherical(r, theta, phi);                 

end


% Function to prompt the user for Cartesian coordinates
function [x, y, z] = get_cartesian()
    % Prompt the user for x, y, and z values
    x = input('Enter a vector of values for x: ');
    y = input('Enter a vector of values for y: ');
    z = input('Enter a vector of values for z: ');
end

% Function to convert Cartesian coordinates to spherical coordinates
function [r, theta, phi] = cartesian_to_spherical(x, y, z)
    % Calculate r, theta, and phi using the formulas
    r = sqrt(x.^2 + y.^2 + z.^2);  % Vectorized r
    theta = acos(z ./ r);           % Vectorized theta
    phi = atan2(y, x);              % Vectorized phi
end

% Function to print the spherical coordinates
function print_spherical(r, theta, phi)
    % Print the spherical coordinates
    fprintf('The r spherical coordinates are:\n');
    disp(r);
    
    fprintf('The theta spherical coordinates are:\n');
    disp(theta);
    
    fprintf('The phi spherical coordinates are:\n');
    disp(phi);
end
