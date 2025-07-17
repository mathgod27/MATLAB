% Mary Robinson
% L12_Q03

function[]=L12_Q03()

    playAgain = 1;
    while playAgain
        maxVal = get_max(); 
        play_game(maxVal);
        playAgain = get_yes_no(); 
    end
end


function maxVal = get_max()
    done = 0;
    while done == 0
        inputStr = input('Enter the max value: ', 's');
        valid = 1;
        len = length(inputStr);
        maxVal = 0;
        
        for i = 1:len
            ch = inputStr(i);
            if ch < '0' || ch > '9'
                valid = 0;
                break;
            else
                digit = ch - '0';
                maxVal = maxVal * 10 + digit;
            end
        end
        
        if valid == 0 || maxVal <= 0
            fprintf('Invalid entry %s\n', inputStr);
        else
            done = 1; 
        end
    end
end


function play_game(maxVal)

    randomNumber = randi(maxVal);
    guess = 0;
    tries = 0;

    while guess ~= randomNumber
        guess = get_positive_integer('Enter a guess');
        tries = tries + 1;

        if guess > randomNumber
            fprintf('You guessed %d which is too high!\n', guess);
        elseif guess < randomNumber
            fprintf('You guessed %d which is too low!\n', guess);
        end
    end

    fprintf('You guessed correctly after %d tries! My number was %d!\n', tries, randomNumber);
end

function x = get_positive_integer(promptVar)
    done = 0;
    while done == 0
        inputStr = input([promptVar, ': '], 's');
        len = length(inputStr);
        val = 0;
        valid = 1;

        for i = 1:len
            ch = inputStr(i);
            if ch < '0' || ch > '9'
                valid = 0;
                break;
            else
                digit = ch - '0';
                val = val * 10 + digit;
            end
        end

        if valid == 0 || val <= 0
            fprintf('Invalid entry %s\n', inputStr);
        else
            x = val;
            done = 1;
        end
    end
end

function playAgain = get_yes_no()
    done = 0;
    while done == 0
        response = input('Would you like to play again? (Y/N): ', 's');
        
        % Manually convert uppercase letters to lowercase
        if response >= 'A' && response <= 'Z'  % If it's an uppercase letter
            response = response + 32;  % Convert to lowercase by adjusting the ASCII value
        end
        
        % Now manually compare the response with 'y' and 'n'
        if response == 'y'
            playAgain = 1;  % Yes, play again
            done = 1;
        elseif response == 'n'
            playAgain = 0;  % No, exit the loop
            done = 1;
        else
            fprintf('Invalid entry %s\n', response);
        end
    end
end
