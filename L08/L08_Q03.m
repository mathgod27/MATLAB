% Mary Robinson
% L08_Q03

function[]=L08_Q03()

[month, isValidMonth] = get_month(); 
if isValidMonth
    [day, isValidDay] = get_day(month); 
    if isValidDay
        [nextDay, nextMonth] = next_day(month, day); 
        fprintf('The next day is: %d/%d\n', nextMonth, nextDay); 
    end
end

end

function [month, isValidMonth] = get_month()

    month = input('Enter the current month (between 1 and 12): ');

    if month >= 1 && month <= 12
        isValidMonth = 1; 
    else
        isValidMonth = 0; 
        fprintf('%d is an invalid month\n', month); 
    end
end


function [day, isValidDay] = get_day(month)

    day = input('Enter the current day (between 1 and 31): ');
    
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    
    if day >= 1 && day <= days_in_month(month)
        isValidDay = 1; 
    else
        isValidDay = 0; 
        fprintf('%d is an invalid day for month %d\n', day, month); % Error message
    end
end

function [nextDay, nextMonth] = next_day(month, day)

    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    
    if day == days_in_month(month)
        nextDay = 1;
        if month == 12
            nextMonth = 1; 
        else
            nextMonth = month + 1; 
        end
    else
        nextDay = day + 1;
        nextMonth = month; 
    end
end


