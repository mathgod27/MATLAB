% Mary Robinson
% L11_Q04

function[]=L11_Q04()
% This function serves as a function to call all necessary functions for
% the program and to check if there is an invalid entry or not
%
%   no inputs/outputs for this function
%
%   local variables: fXMin, fXMax, fYMin, fYMax (used for function mins and
%                   max) 
%   local anon functions: f (a function defining cosine)
%
    numTrials = get_number_of_trials();

    if numTrials > 0 && floor(numTrials) == numTrials
        fXMin = -pi/2;
        fXMax = pi/2;
        fYMin = 0;
        fYMax = 1;
        f = @(x) cos(x);

        approximation = approximate_integral(numTrials, f, fXMin, fXMax, fYMin, fYMax);
        fprintf('An approximation of the integral is %.3f\n', approximation);
    else
        fprintf('Invalid entry %d\n', numTrials);
    end
end

function numTrials = get_number_of_trials()
% This function serves as a function to get the number of trials from the
% user
%
%   inputs: none
%    outputs: numTrials (number of trials specified by the user)      
%
%   local variables: none
%
    numTrials = input('Enter the number of trials: ');
end

function approximation = approximate_integral(numTrials, f, fXMin, fXMax, fYMin, fYMax)
% This function serves as a function to calculate the size of the graph by getting the
% total misses hits and then to plot them
%
%   inputs: 
%           n, f, fXMin, fXMax, fYMin, fYMax: f is our function, numTrials is 
%           number of trials specified by user, and the rest is the
%           functions mins and maxes
%
%   local variables:   hitX hitY missX missY hitCount missCount (counting
%   if it hits x or y and getting the total counts, same thing for misses)
%
    hitX = zeros(1, numTrials);
    hitY = zeros(1, numTrials);
    missX = zeros(1, numTrials);
    missY = zeros(1, numTrials);
    hitCount = 0;
    missCount = 0;

    for i = 1:numTrials
        x = (fXMax - fXMin) * rand() + fXMin;
        y = (fYMax - fYMin) * rand() + fYMin;

        if y <= f(x)
            hitCount = hitCount + 1;
            hitX(hitCount) = x;
            hitY(hitCount) = y;
        else
            missCount = missCount + 1;
            missX(missCount) = x;
            missY(missCount) = y;
        end
    end

    hitX = hitX(1:hitCount);
    hitY = hitY(1:hitCount);
    missX = missX(1:missCount);
    missY = missY(1:missCount);

    area = (fXMax - fXMin) * (fYMax - fYMin);
    approximation = (hitCount / numTrials) * area;

    %plot_trials(hitX, hitY, missX, missY, f, fXMin, fXMax);
end

function plot_trials(hitX, hitY, missX, missY, f, fXMin, fXMax)
% This function serves as a function to plot the hits and misses on a
% graph
%
%   inputs: 
%           hitX, hitY, missX, missY, f, fXMin, fXMax (all the hits,
%           misses, and the function and its respective min and max
%
%   local variables: none
%
    figure;
    hold on;

    plot(hitX, hitY, 'go');
    plot(missX, missY, 'bo');

    xVals = linspace(fXMin, fXMax, 500);
    plot(xVals, f(xVals), 'k-', 'LineWidth', 1.5);

    title('Monte Carlo Approximation of ∫cos(x) dx');
    legend('Hit', 'Miss', 'cos(x)', 'Location', 'Best');
    xlabel('x');
    ylabel('y');
    axis([fXMin fXMax 0 1]);

    hold off;
    saveas(gcf, 'monte_carlo_integral_plot.png');
end
