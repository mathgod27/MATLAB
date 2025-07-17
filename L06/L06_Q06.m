%Mary Robinson
%L06_Q06

function[]=L06_Q06()

% The goal of this question is to

% input integer from user

[matrix, row_num] = get_input();               % Get matrix and row number
shifted_matrix = cyclic_shift_right(matrix);   % Shift the matrix
print_matrix(shifted_matrix);                  % Print the shifted matrix

% Extract the requested row and print it
selected_row = shifted_matrix(row_num, :);    % Get the specific row
print_row(selected_row);                       % Print the extracted row

    end

% Function to prompt the user for an n x 3 matrix and a row number
function [matrix, row_num] = get_input()
    matrix = input('Enter an n x 3 matrix: ');
    row_num = input('Enter a row number to select: ');
end

% Function to cyclically shift each column of the matrix to the right
function shifted_matrix = cyclic_shift_right(matrix)
    % Get the number of rows and columns
    [n, m] = size(matrix);
    
    % Shift columns to the right by one, with the last column becoming the first
    shifted_matrix = [matrix(:, m), matrix(:, 1:m-1)];
end

% Function to print the matrix
function print_matrix(matrix)
    disp('After shifting, the matrix is:');
    disp(matrix);
end

% Function to print the selected row
function print_row(row)
    disp('After shifting, row is:');
    disp(row);
end
