% Mary Robinson
% L08_Q01

function[]=L08_Q01()
num = input('Enter an integer: '); 
isLucky = check_if_lucky(num); 

if isLucky
    fprintf('%d is a lucky number\n', num);
else
    fprintf('%d is not a lucky number\n', num);
end

end

function isLucky = check_if_lucky(num)
    if num == 13 || num == 31 || num == 3 || (num >= 113 && num <= 131)
        isLucky = 1; 
    else
        isLucky = 0; 
    end
end




