% Mary Robinson
% L15_Q04

function[]=L15_Q04()
    [adjMatrix, dataVector, searchValue] = get_data();
    numNodes = size(adjMatrix, 1);

    [bFound, nNodeFoundAt] = depth_first_search(numNodes, adjMatrix, dataVector, 1, searchValue);

    if bFound
        fprintf('%d was found at node %d\n', searchValue, nNodeFoundAt);
    else
        fprintf('%d was not found\n', searchValue);
    end
end

function [aanAdjacency, anData, searchValue] = get_data()
    achFileNameAdjacency = input('Enter filename for adjacency matrix: ', 's');
    aanAdjacency = load('-ascii', achFileNameAdjacency);

    achFileNameVector = input('Enter filename for data vector: ', 's');
    anData = load('-ascii', achFileNameVector);

    while true
        searchValue = input('Enter an integer to search for: ');
        if isnumeric(searchValue) && floor(searchValue) == searchValue
            break;
        else
            fprintf('Invalid entry %.1f\n', searchValue);
        end
    end
end

function [bFound, nNodeFoundAt] = depth_first_search(n, adjMatrix, dataVec, currentNode, searchValue)
    fprintf('Node %d: Entered\n', currentNode);

    if dataVec(currentNode) == searchValue
        bFound = 1;
        nNodeFoundAt = currentNode;
        fprintf('Node %d: Leaving with bFound = %d and nNodeFoundAt = %d\n', currentNode, bFound, nNodeFoundAt);
        return;
    end

    for childNode = 1:n
        if adjMatrix(currentNode, childNode) == 1
            fprintf('Node %d: About to recurse on child node %d\n', currentNode, childNode);
            [bFound, nNodeFoundAt] = depth_first_search(n, adjMatrix, dataVec, childNode, searchValue);
            if bFound
                fprintf('Node %d: Leaving with bFound = %d and nNodeFoundAt = %d\n', currentNode, bFound, nNodeFoundAt);
                return;
            end
        end
    end

    bFound = 0;
    nNodeFoundAt = -1;
    fprintf('Node %d: Leaving with bFound = %d and nNodeFoundAt = %d\n', currentNode, bFound, nNodeFoundAt);
end







