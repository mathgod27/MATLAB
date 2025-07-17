% Mary Robinson
% L08_Q06

function[]=L08_Q06()

selection = get_selection();

if selection == 1
    calc_volume_sphere(); 
elseif selection == 2
    calc_volume_cylinder(); 
elseif selection == 3
    calc_volume_cuboid(); 
else
    fprintf('Invalid selection: %d\n', selection); 
end

end

function selection = get_selection()
    %print the menu options
    fprintf('Menu:\n');
    fprintf('1: Volume of a sphere\n');
    fprintf('2: Volume of a cylinder\n');
    fprintf('3: Volume of a cuboid\n');
    
    % prompt the user for a selection
    selection = input('Enter a selection: ');
end

function calc_volume_sphere()
    % prompt the user for the radius of the sphere
    r = input('Enter the radius: ');
    
    % calculate the volume of the sphere
    volume = (4/3) * pi * r^3;
    
    % print the volume
    fprintf('The volume of a sphere with radius %.3f is %.3f\n', r, volume);
end

function calc_volume_cylinder()
    % prompt the user for the radius and height of the cylinder
    r = input('Enter the radius: ');
    h = input('Enter the height: ');
    
    % calculate the volume of the cylinder
    volume = pi * r^2 * h;
    
    % print the volume 
    fprintf('The volume of a cylinder with radius %.3f and height %.3f is %.3f\n', r, h, volume);
end

function calc_volume_cuboid()
    % prompt the user for the length, width, and height of the cuboid
    l = input('Enter the length: ');
    w = input('Enter the width: ');
    h = input('Enter the height: ');
    
    % calculate the volume of the cuboid
    volume = l * w * h;
    
    % print the volume
    fprintf('The volume of a cuboid with length %.3f, width %.3f, and height %.3f is %.3f\n', l, w, h, volume);
end



