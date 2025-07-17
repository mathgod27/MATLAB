% Mary Robinson
% L08_Q05

function[]=L08_Q05()

user_input = input('Would you like to continue? (Y/N): ', 's'); 

if strcmpi(user_input, 'Y')  
    fprintf('Selected continue\n');
elseif strcmpi(user_input, 'N')  
    fprintf('Selected stop\n');
else
    fprintf('Invalid entry %s\n', user_input);  
end
end
