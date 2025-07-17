% Mary Robinson
% L11_Q02

function[]=L11_Q02()
% This function serves as a function to call all necessary functions for
% the program and to check if there is an invalid entry or not
%
%   no inputs/outputs for this function
%
%   local variables: none
%

[m, n, p, valid] = get_matrix_dimensions();
    if valid
        [A, B] = generate_matrices(m, n, p);
        C = multiply_matrices(A, B, m, n, p);
        print_results(A, B, C);
    end
end

function [m, n, p, valid] = get_matrix_dimensions()
% This function serves as a function to check if every variable is valid 
% and to gather them from the user. Each variable must be positive.
%
%   inputs: none
%
%   outputs: 
%           m, n, p: a mxn matrix is multiplied to an nxp matrix, where the
%           user provides m, n, and p
%           valid: just shows if its valid numbers
%
%   local variables: none
%
fprintf('This program will multiply a random m x n matrix by a random n x p matrix\n');
    
    m = input('Enter a positive integer m: ');
    if m <= 0 || floor(m) ~= m
        fprintf('Invalid entry %d\n', m);
        m = -1; n = -1; p = -1; valid = 0;
        return;
    end

    n = input('Enter a positive integer n: ');
    if n <= 0 || floor(n) ~= n
        fprintf('Invalid entry %d\n', n);
        m = -1; n = -1; p = -1; valid = 0;
        return;
    end

    p = input('Enter a positive integer p: ');
    if p <= 0 || floor(p) ~= p
        fprintf('Invalid entry %d\n', p);
        m = -1; n = -1; p = -1; valid = 0;
        return;
    end

    valid = 1;
end

function [A, B] = generate_matrices(m, n, p)
% This function serves as a function to generate the actual matricies to
% use for the multiplication of them together.
%
%   inputs: 
%           m,n,p: mxn matrix and nxp matrix
%
%   outputs: 
%           A and B: A is the mxn matrix and B is the nxp matrix
%
%   local variables: none
%
    A = randi([-5, 5], m, n);
    B = randi([-5, 5], n, p);
end

function C = multiply_matrices(A, B, m, n, p)
% This function serves as a function to actually multiply the matrices
% together. The for loops multiply each indice together and stop exactly at
% the end of each column or row.
%
%   inputs: 
%           A and B: the mxn matrix and nxp matrix respectively
%           m,n,p: used for the for loops
%
%   local variables: C (a zeros matrix used in the multiplication formula that
%                       becomes our answer)
%
    C = zeros(m, p);
    for i = 1:m
        for j = 1:p
            for k = 1:n
                C(i,j) = C(i,j) + A(i,k) * B(k,j);
            end
        end
    end
end

function print_results(A, B, C)
% This function serves as a function to print the results of our
% multiplication
%
%   inputs: 
%           none
%   outputs:
%           A B and C: A is the mxn matrix, B is the nxp matrix, C is the
%           matrix result after multplying A and B
%
%   local variables: none
%
    print_matrix(A, 'Matrix A is:\n');
    print_matrix(B, 'Matrix B is:\n');
    print_matrix(C, 'The result of A times B is:\n');
end

function print_matrix(matrix, matoutput)
% This function serves as a function to print the matrix
%
%   inputs: 
%           matrix- a random adjacency matrix 
%           matrixoutput- the matrix output 
%
%   local variables: row,cols (rows and columns to the matrix output),
%                   
%
    fprintf(matoutput);
    [rows, cols] = size(matrix);
    for i = 1:rows
        for j = 1:cols
            fprintf('%4d', matrix(i, j));
        end
        fprintf('\n');
    end
end
