% Mary Robinson
% L07_Q02

function[]=L07_Q02()

% The goal of this question is get used to using anonymous functions and to
% calculate the error between a regular built in factorial function in
% matlab and the Stirling's approximation

% input n from user
matrix = get_matrix();
print_matrix(matrix);
[rowop,c] = get_basic_row_op_data();
matrix = do_basic_row_op(matrix,rowop,c);
print_matrix(matrix);
[i,j,s]= get_replacement_row_op();
matrix = do_replacement_row_op(matrix,i,j,s);
print_matrix(matrix);
[i,j,s]= get_replacement_row_op();
matrix = do_replacement_row_op(matrix,i,j,s);
print_matrix(matrix);
[i,j,s]= get_replacement_row_op();
matrix = do_replacement_row_op(matrix,i,j,s);
print_matrix(matrix);

end

function[matrix] = get_matrix()
% creates the matrix 

m = input('Enter the number of rows in the matrix: ');
n = input('Enter the number of columns in the matrix: ');
min = input('Enter the minimum random integer: ');
max = input('Enter the maximum random integer: ');

matrix = randi([min,max],m,n);

end

function[] = print_matrix(matrix)
% prints the matrix

fprintf('The matrix is:\n');
disp(matrix);

end

function[rowop,c] = get_basic_row_op_data()
%gathers row opperation data 

rowop = input('Enter the row upon which to perform the row op: ');
c = input('Enter the constant multiplier for the row op: ');

end

function[matrix] = do_basic_row_op(matrix,rowop,c)
% do the row operations

matrix(rowop,:) = matrix(rowop,:).*c;

end

function[i,j,s]= get_replacement_row_op()
% now for not so basic row opperations and just getting the input

i = input('Enter the number i of the row for the row op: ');
j = input('Enter the number j of the row for the row op: ');
s = input('Enter the scalar multiplier for the row op: ');

end

function[matrix]= do_replacement_row_op(matrix,i,j,s)
% doing the actual calculations

matrix(i,:) = matrix(j,:).*s + matrix(i,:);

end



