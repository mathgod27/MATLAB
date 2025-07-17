% Mary Robinson
% L11_Q01

% sorry i was out all week, i got the flu :/

function[]=L11_Q01()
% This function serves as a function to call all necessary functions for
% the program and to check if there is an invalid entry or not
%
%   no inputs/outputs for this function
%
%   local variables: numVertices
%

numVertices = get_number_of_vertices();

if numVertices >= 2 && floor(numVertices) == numVertices
    adjMatrix = randi([0, 1], numVertices, numVertices);
    adjMatrix(1:numVertices+1:end) = 0;

    print_matrix(adjMatrix, 'The random adjacency matrix is:\n');
    calc_size(adjMatrix, numVertices);
    calc_degrees(adjMatrix, numVertices);
else
    fprintf('Invalid entry %d\n', numVertices);
end
end

function numVertices = get_number_of_vertices()
% this function serves as a function to get the number of vertices
%   inputs: none
%
%   outputs: numVertices
%
numVertices = input('Enter the number of vertices: ');
end

% right here was when i decided to start using tab to space out for
% functions  because it looks wayyyy better and more organized lol

function print_matrix(matrix, output)
% This function serves as a function to print the matrix and uses loops to
% print each row/column of the matrix
%
%   inputs: 
%           matrix- a random adjacency matrix 
%           output- matrix output
%
%   local variables: sizeGraph (size of the graph)
%

    fprintf(output);
    for i = 1:size(matrix, 1)
        for j = 1:size(matrix, 2)
            fprintf('%4d', matrix(i, j));
        end
        fprintf('\n');
    end
end

function calc_size(matrix, numVertices)
% This function serves as a function to calculate the size of the graph
%
%   inputs: 
%           matrix- a random adjacency matrix 
%           numVertices - number of vertices in the graph
%
%   local variables: none
%
    sizeGraph = 0;
    for i = 1:numVertices
        for j = 1:numVertices
            sizeGraph = sizeGraph + matrix(i, j);
        end
    end
    fprintf('The size of the graph is %d\n', sizeGraph);
end

function calc_degrees(matrix, numVertices)
% This function serves as a function to calculate the in and out degrees of
% each vertex
%
%   inputs: 
%           matrix- a random adjacency matrix 
%           numVertices - number of vertices in the graph
%
%   local variables: outDegrees (the out-degrees), inDegrees (the
%   in-degrees), outDeg (initializer for for loop), inDeg (same thing but
%   for in-degrees loop), totalDeg (the total in and out degrees)
%
outDegrees = zeros(1, numVertices);
    for i = 1:numVertices
        outDeg = 0;
        for j = 1:numVertices
            outDeg = outDeg + matrix(i, j);
        end
        outDegrees(i) = outDeg;
        fprintf('Vertex %d has out-degree %d\n', i, outDeg);
    end

inDegrees = zeros(1, numVertices);
    for j = 1:numVertices
        inDeg = 0;
        for i = 1:numVertices
            inDeg = inDeg + matrix(i, j);
        end
        inDegrees(j) = inDeg;
        fprintf('Vertex %d has in-degree %d\n', j, inDeg);
    end

    for i = 1:numVertices
        totalDeg = inDegrees(i) + outDegrees(i);
        fprintf('Vertex %d has degree %d\n', i, totalDeg);
    end
end
