% Mary Robinson
% L09_Q01

function[]=L09_Q01()

[x,y]= create_and_print_vector_of_squares();
%plot_vector_of_squares(x,y);

end

function[x,y]= create_and_print_vector_of_squares()

n = input('Enter an integer between 3 and 100, inclusive: ');

x = 0:2:n;

y = x.^2;

fprintf('Plotting x values:\n');
disp(x);
fprintf('Plotting y values:\n');
disp(y);

end

function[]= plot_vector_of_squares(x,y)

figure(1);
clf;
plot(x, y, 'm--s');

xlabel('n');
ylabel('n^2');
title('Plot of Numbers and Their Squares');
grid on;

print('-dpng', 'plot_vector_of_squares.png');

end



