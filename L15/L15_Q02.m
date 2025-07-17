% Mary Robinson
% L15_Q02

function[]=L15_Q02()

    % Constants
    NUM_ROWS = 20;
    NUM_COLS = 20;

    % Initial position (center of board)
    row = 10;
    col = 10;
    dir = 'n'; % facing north

    % Initialize board
    board = zeros(NUM_ROWS, NUM_COLS);
    board(row, col) = 1;

    % Main loop
    done = 0;
    while ~done
        cmd = get_command();
        [row, col, dir, board, done] = do_command(row, col, dir, board, cmd, NUM_ROWS, NUM_COLS);
    end


end

function cmd = get_command()
    valid = 0;
    while ~valid
        cmd = input('Enter a command (1 = turn right, 2 = turn left, 3 = move, 4 = print, 5 = quit): ');
        if isnumeric(cmd) && floor(cmd) == cmd && cmd >= 1 && cmd <= 5
            valid = 1;
        else
            fprintf('Invalid entry %.1f\n', cmd);
        end
    end
end

function [row, col, dir, board, done] = do_command(row, col, dir, board, cmd, num_rows, num_cols)
    done = 0;
    switch cmd
        case 1
            dir = do_turn_right(dir);
        case 2
            dir = do_turn_left(dir);
        case 3
            [row, col, board] = do_move(row, col, dir, board);
        case 4
            print_board(board, num_rows, num_cols);
        case 5
            done = 1;
    end
end

function dir = do_turn_right(dir)
    directions = 'nesw';
    index = find(directions == dir);
    dir = directions(mod(index, 4) + 1);
    fprintf('Turned right to give facing direction %s\n', dir);
end

function dir = do_turn_left(dir)
    directions = 'nwse';
    index = find(directions == dir);
    dir = directions(mod(index, 4) + 1);
    fprintf('Turned left to give facing direction %s\n', dir);
end

function [row, col, board] = do_move(row, col, dir, board)
    valid = 0;
    while ~valid
        steps = input('Enter how many steps to move forward: ');
        if isnumeric(steps) && floor(steps) == steps && steps > 0
            valid = 1;
        else
            fprintf('Invalid entry %.1f\n', steps);
        end
    end

    for i = 1:steps
        switch dir
            case 'n'
                row = row - 1;
            case 'e'
                col = col + 1;
            case 's'
                row = row + 1;
            case 'w'
                col = col - 1;
        end
        board(row, col) = 1;
    end

    fprintf('Moved forward %d steps to give position (row,col) = (%d,%d)\n', steps, row, col);
end

function print_board(board, num_rows, num_cols)
    for r = 1:num_rows
        for c = 1:num_cols
            if board(r, c)
                fprintf('* ');
            else
                fprintf('- ');
            end
        end
        fprintf('\n');
    end
end




