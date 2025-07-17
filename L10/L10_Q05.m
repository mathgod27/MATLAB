% Mary Robinson
% L10_Q05

function[]=L10_Q05()

vector_length = input('Enter the vector length: ');
    if ~isnumeric(vector_length) || vector_length <= 0 || mod(vector_length, 1) ~= 0
        fprintf('Invalid length %d\n', vector_length);
        return;
    end
random_vector = generate_random_vector(vector_length);
print_vector(random_vector, vector_length);
[max_val, max_index] = find_max(random_vector, vector_length);
[min_val, min_index] = find_min(random_vector, vector_length);

fprintf('The max is %.3f and occurs at index %d\n', max_val, max_index);
fprintf('The min is %.3f and occurs at index %d\n', min_val, min_index);
end

function random_vector = generate_random_vector(length)

min_val = input('Enter the minimum value: ');
max_val = input('Enter the maximum value: ');

random_vector = min_val + (max_val - min_val) * rand(1, length);
end

function print_vector(vector, length)

fprintf('The vector is:\n');
    for i = 1:length
        fprintf('%.3f\n', vector(i));
    end
end

function [max_val, max_index] = find_max(vector, length)

max_val = vector(1);
max_index = 1;
    
    for i = 2:length
        if vector(i) > max_val
            max_val = vector(i);
            max_index = i;
        end
    end
end

function [min_val, min_index] = find_min(vector, length)
min_val = vector(1);
min_index = 1;
    
    for i = 2:length
        if vector(i) < min_val
            min_val = vector(i);
            min_index = i;
        end
    end
end
