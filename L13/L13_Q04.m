% Mary Robinson
% L13_Q04

function[]=L13_Q04()

N = get_positive_integer('the max');
play_game(N);

end

function num = get_positive_integer(prompt)
    num = 0;
    while num <= 0 || floor(num) ~= num
        num = input(sprintf('Enter a positive integer for %s: ', prompt));
        if num <= 0 || floor(num) ~= num
            fprintf('Invalid entry %g\n', num);
        end
    end
end

function print_available_numbers(N, available)
    fprintf('Available numbers: ');
    i = 1;
    while i <= N
        if available(i) == 1
            fprintf('%d ', i);
        end
        i = i + 1;
    end
    fprintf('\n');
end

function [compScore, available] = update_computer_score(compScore, selected, available)
    i = 1;
    while i < selected
        if  mod(selected, i) == 0 && available(i) == 1

            compScore = compScore + i;
            available(i) = 0;
        end
        i = i + 1;
    end
end

function flag = check_if_number_still_available(N, available)
    i = 1;
    flag = 0;
    while i <= N
        if available(i) == 1
            flag = 1;
        end
        i = i + 1;
    end
end

function play_game(N)
    available = ones(1, N);
    playerScore = 0;
    compScore = 0;

    while check_if_number_still_available(N, available) == 1
        print_available_numbers(N, available);
        selection = get_positive_integer('your selection');

        playerScore = playerScore + selection;
        available(selection) = 0;

        [compScore, available] = update_computer_score(compScore, selection, available);
    end

    fprintf('Your score is %d and mine is %d -- ', playerScore, compScore);
    if playerScore > compScore
        fprintf('you win!\n');
    else
        fprintf('you lose!\n');
    end
end




