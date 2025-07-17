% Mary Robinson
% L08_Q02

function[]=L08_Q02()

[n, epsilon] = get_input(); 
check_if_integer(n, epsilon); 

end

function [n, epsilon] = get_input()

    n = input('Enter a number: '); 
    epsilon = input('Enter a tolerance: '); 
end

function check_if_integer(n, epsilon)
    if abs(n - round(n)) < epsilon
        fprintf('%d is an integer\n', n); 
    else
        fprintf('%0.6f is not an integer\n', n); 
    end
end




