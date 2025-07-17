% Mary Robinson
% L09_Q02

function[]=L09_Q02()

[timesvector, all_amp, all_freq, all_phase] = get_all_input;
matrix = calc_fun_values(all_amp, all_freq, all_phase, timesvector);
print_fun_values(matrix, timesvector);
%plot_sins(matrix, timesvector);


end

function[timesvector, all_amp, all_freq, all_phase]= get_all_input()

timesvector = input('Enter a vector of time values: ');

%reminder: the output values DONT have to be the same as all output values.
%aka I can just compile it in a vector *within* the code. for ex, if i do
%all_amp(1), it puts the value in the first slot of the vector

all_amp = [];
all_freq = [];
all_phase = [];

funcnum = 1;
[all_amp(1), all_freq(1), all_phase(1)]= get_input(funcnum);

funcnum = 2;
[all_amp(2), all_freq(2), all_phase(2)]= get_input(funcnum);

funcnum = 3;
[all_amp(3), all_freq(3), all_phase(3)]= get_input(funcnum);

end

function[amp, freq, phase]= get_input(funcnum)

fprintf('Data input for function %d\n', funcnum);
amp = input('Enter the amplitude: ');
freq = input('Enter the frequency: ');
phase = input('Enter the phase shift: ');

end

function[matrix]= calc_fun_values(all_amp, all_freq, all_phase, timesvector)

mathfunc = @(a, f, t, p) a*sin(f.*t + p);

matrix = [mathfunc(all_amp(1), all_freq(1), timesvector, all_phase(1));
    mathfunc(all_amp(2), all_freq(2), timesvector, all_phase(2));
    mathfunc(all_amp(3), all_freq(3), timesvector, all_phase(3))];

end


%    f_values = [f(A(1), omega(1), t, phi(1));
%                f(A(2), omega(2), t, phi(2));
%                f(A(3), omega(3), t, phi(3))];



function print_fun_values(matrix, timesvector)

    fprintf('Function 1 has value %.2f at time %.2f\n', matrix(1, 1), timesvector(1));
    fprintf('Function 2 has value %.2f at time %.2f\n', matrix(2, 1), timesvector(1));
    fprintf('Function 3 has value %.2f at time %.2f\n', matrix(3, 1), timesvector(1));

end

function plot_sins(matrix, timesvector)

plot(timesvector, matrix(1, :), 'k-', timesvector, matrix(2, :), 'g-', timesvector, matrix(3, :), 'b-');

xlabel('Time');
ylabel('Function Value');
legend('f_1', 'f_2', 'f_3');

print('sine_functions_plot', '-dpng');

end





