% Mary Robinson
% L06_Q05

function[]=L06_Q05()

% The goal of this question is to

% input integer from user

matrix = get_matrix();                    % Get matrix from user
column = pick_random_column(matrix);      % Get random column from matrix
print_column(column);                     % Print the chosen column    

end

% Function to prompt the user for a matrix of integers
function matrix = get_matrix()
    matrix = input('Enter a matrix of integers: ');
end

% Function to pick a random column from the matrix
function column = pick_random_column(matrix)
    % Get the number of columns in the matrix
    [~, num_columns] = size(matrix);
    
    % Generate a random integer between 1 and num_columns to pick the column
    random_column = randi(num_columns);
    
    % Extract the randomly selected column
    column = matrix(:, random_column);
end

% Function to print the column vector
function print_column(column)
    fprintf('The randomly chosen column is:\n');
    disp(column);
end

