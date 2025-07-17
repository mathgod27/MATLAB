%practice of for loops

fprintf('Here is a blank 4x5 matrix\n')

for i = 1:4
    for j = 1:5
        fprintf('*');
    end
    fprintf('\n');
end

fprintf('Create your own random matrix!\n');

m = input('Enter a number of rows: ');
n = input('Enter a number of columns: ');
min = input('Enter a minimum number: ');
max = input('Enter a maximum number: ');

matrix = zeros(m,n);

%with generating a matrix using for loops, you dont want to put the line
%after initializing the rows and columns to be a random matrix, because
%that means each entry in your matrix, would be a matrix, and that
%obviously doesnt work. so for this purpose, we should only do one singular
%random number, looped over and over again.
for i = 1:m
    for j = 1:n
        matrix(i,j)= rand() * (max - min) + min;
    end
end

fprintf('Here is your random matrix!\n')
disp(matrix);

intmatrix = zeros(m,n);

%same thing here, but an integer value
for i = 1:m
    for j = 1:n
        intmatrix(i,j)= randi([min,max],1);
    end
end

fprintf('Here is your matrix, but random integers instead!\n');
disp(intmatrix);
