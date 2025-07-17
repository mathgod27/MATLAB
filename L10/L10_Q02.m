% Mary Robinson
% L10_Q02

function[]=L10_Q02()

[A, B] = create_matrices();

tr_A = calc_trace(A);
tr_B = calc_trace(B);
    
AB_transpose = A * B';
A_transpose_B = A' * B;

tr_AB_transpose = calc_trace(AB_transpose);
tr_A_transpose_B = calc_trace(A_transpose_B);
    
print_results(A, B, tr_A, tr_B, tr_AB_transpose, tr_A_transpose_B);
end

function [A, B] = create_matrices()

min_num = input('Enter the minimum random number: ');
max_num = input('Enter the maximum random number: ');
n = input('Enter the number of rows: ');

A = min_num + (max_num - min_num) * rand(n, n);
B = min_num + (max_num - min_num) * rand(n, n);
end

function trace_val = calc_trace(matrix)

[n, ~] = size(matrix);
trace_val = 0;
    
    for i = 1:n
        trace_val = trace_val + matrix(i, i);
    end
end

function print_matrix(matrix)

[n, m] = size(matrix);
    for i = 1:n
        for j = 1:m
            fprintf('%.2f ', matrix(i, j));
        end
        fprintf('\n');
    end
end

function print_results(A, B, tr_A, tr_B, tr_AB_transpose, tr_A_transpose_B)

    fprintf('Matrix A is:\n');
    print_matrix(A);
    fprintf('Matrix B is:\n');
    print_matrix(B);

    fprintf('The trace of A is %.2f\n', tr_A);
    fprintf('The trace of B is %.2f\n', tr_B);
    fprintf("The trace of AB' is %.2f\n", tr_AB_transpose);
    fprintf("The trace of A'B is %.2f\n", tr_A_transpose_B);
end


