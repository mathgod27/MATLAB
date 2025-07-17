% Mary Robinson
% L13_Q02

function[]=L13_Q02()

    play_again = 1; 
    while play_again == 1
        main = get_main_value();
        play_game(main);
        play_again = get_yes_no('Would you like to play again? (Y/N): ');
    end
end

%function to get the main value from the user (between 5 and 9)
function main = get_main_value()
    main = 0;
    while main < 5 || main > 9 || floor(main) ~= main
        main = input('Enter an integer between 5 and 9 (inclusive) for main: ');
        if main < 5 || main > 9 || floor(main) ~= main
            fprintf('Invalid entry %d\n', main);
        end
    end
end

%function to play the Hazard game with the selected main value
function play_game(main)
    game_over = 0;
    roll = roll_dice();
    fprintf('You rolled %d\n', roll);
    
    if roll == main
        fprintf('You won!\n');
        return;
    elseif roll == 2 || roll == 3
        fprintf('You lost\n');
        return;
    elseif roll == 11 || roll == 12
        if main == 5 || main == 9
            fprintf('You lost\n');
            return;
        elseif main == 6 || main == 8
            if roll == 11
                fprintf('You lost\n');
                return;
            else
                fprintf('You won!\n');
                return;
            end
        elseif main == 7
            if roll == 11
                fprintf('You won!\n');
                return;
            else
                fprintf('You lost\n');
                return;
            end
        end
    else
        chance = roll;
        fprintf('Chance is %d\n', chance);

        while game_over == 0
            roll = roll_dice();
            fprintf('You rolled %d\n', roll);
            
            if roll == chance
                fprintf('You won!\n');
                game_over = 1; 
            elseif roll == main
                fprintf('You lost\n');
                game_over = 1; 
            end
        end
    end
end

%function to roll two dice and return their sum
function roll = roll_dice()
    die1 = randi(6);
    die2 = randi(6);
    roll = die1 + die2;
end

%function to prompt the user for "Yes" or "No"
function play_again = get_yes_no(prompt)
    valid_response = 0;
    while valid_response == 0
        response = input(prompt, 's');
        if response == 'Y' || response == 'y'
            play_again = 1;
            valid_response = 1;
        elseif response == 'N' || response == 'n'
            play_again = 0;
            valid_response = 1; 
        else
            fprintf('Invalid entry %s\n', response);
        end
    end
end
