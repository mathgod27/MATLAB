% Mary Robinson
% L12_Q06

function[]=L12_Q06()

    % get the sequence length
    seq_len = get_sequence_length();
    
    %generate the sequence of random integers
    sequence = generate_sequence(seq_len);
    
    % find the longest increasing subsequence
    [longest_len, last_index] = find_subsequence_length(sequence, seq_len);
    
    % print the results
    fprintf('The longest subsequence has length %d and ends at index %d\n', longest_len, last_index);
end

function seq_len = get_sequence_length()
    done = 0;
    while done == 0
        seq_len = input('Enter the length of the sequence: ');
        if seq_len <= 0 || seq_len ~= floor(seq_len)
            fprintf('Invalid entry %d\n', seq_len);
        else
            done = 1;
        end
    end
end

function sequence = generate_sequence(seq_len)
    sequence = randi([-10, 10], 1, seq_len);  
    fprintf('The sequence is:\n');
    for i = 1:seq_len
        fprintf('%d ', sequence(i));
    end
    fprintf('\n');
end

function [longest_len, last_index] = find_subsequence_length(sequence, seq_len)
    current_len = 1;  
    longest_len = 1;  
    last_index = 1;
    for i = 2:seq_len
        if sequence(i) > sequence(i-1)
            current_len = current_len + 1; 
        else
            if current_len > longest_len
                longest_len = current_len; 
                last_index = i - 1;
            end
            current_len = 1; 
        end
    end
    
    % check if the last subsequence is the longest
    if current_len > longest_len
        longest_len = current_len;
        last_index = seq_len; 
    end
end
