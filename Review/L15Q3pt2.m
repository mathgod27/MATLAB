%starting from scratch, lab 15 question 3
function[string]=L15Q3pt2()
%our main calling function

%for if we write the string in the main function:
string = 'Enter a positive integer: ';
get_positive_integer(string);
string = 'Enter a Boolean number: ';
get_positive_integer(string);

end



function[]=get_positive_integer(string)
%question about "take in a string"

    diameter = input(string,"s");
    valid = 0;

    while valid == 0
        %lab 8 Q2 tells you how to do this properly. we cant use mod
        %because computers are too accurate
        if abs(diameter - round(diameter)) && diameter > 0
            fprintf(diameter);
        else
            fprintf('Invalid input %d\n',diameter);
        end
    valid = 1;
    end
end


function[]= get_boolean()
%mimics get pos integer


end

function[]= simulate_archery(diameter)

%ex: vector = diameter/2:(-1*diameter/20):diameter/20
%using for loop and a ton of if statements to test if its in the ring or
%nah, then using a counter for hits that specific to this function, and
%then a counter of if its in the ring, and make a vector of arrows in each
%ring ie (4 5 6 6 6 3 10 9 9 ...)
end

function[]= print_vector()
%for i = 1:10 vector(i)

end

function[]= plot_results()
% the ring vector is used here to put the x in a certain ring radius, so i
% can assign a radius to each ring value (again with for loop length of
% arrows and then a ton of if statements) 
%then do if in ring 10, green x, if in ring 8, blue x, etc
clf;
figure(1);
hold on

%to plot points, use this command:
%plot(x_val,y_val,marker 'x' ,color 'b', 'Linewidth' 1.5 (or whatever width
%or color you want)
end

function[]= draw_circle()
%take in our radius and plot x values using an x vector from 
% -diameter/2:0.01:diameter (the 0.01 is to make it hella small) and then
% solve for our y values using x^2 + y^2 = r^2

end

function[]= calc_ring_areas()
% calculate area of the rings
end

function[]= print_results()
%i can do this one

end
