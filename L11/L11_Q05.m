% Mary Robinson
% L11_Q05

function[]=L11_Q05()
% This function serves as a function to call all necessary functions for
% the program and to check if there is an invalid entry or not
%
%   no inputs/outputs for this function
%
%   local variables: none
%

    [mu, sigma] = get_mean_and_std_dev();

    if sigma <= 0
        fprintf('Invalid entry %.2f\n', sigma);
        return;
    end

    [xmin, xmax] = get_min_and_max();

    if xmax <= xmin
        fprintf('Invalid entry %.2f\n', xmax);
        return;
    end

    samples = generate_gaussian_samples(mu, sigma);
    counts = count_samples(samples, xmin, xmax);
    fprintf('The bin counts are:\n');
    for i = 1:length(counts)
        fprintf('%d ', counts(i));
    end
    fprintf('\n');

    %plot_samples(counts, xmin, xmax);
end

function [mu, sigma] = get_mean_and_std_dev()
% This function serves as a function to get the mean and standard deviation
% from the user
%
%   inputs: none
%   outputs: mu, sigma- mean and standard deviation
%
%   local variables: none
%
    mu = input('Enter a value for the mean: ');
    sigma = input('Enter a value for the standard deviation: ');
end

function [xmin, xmax] = get_min_and_max()
% This function serves as a function to get the min and max for the
% histogram
%
%   inputs: none
%   outputs: xmin, xmax- the min and max for the histogram
%
%   local variables: none
%
    xmin = input('Enter the min for the histogram: ');
    xmax = input('Enter the max for the histogram: ');
end

function samples = generate_gaussian_samples(mu, sigma)
% This function serves as a function to generate the gaussian samples by
% using for loops that end at 10000, so we get an adequate amount for our
% approximation
%
%   inputs: mu, sigma- mean and standard deviation
%   outputs: samples- gausian samples, u1 and u2: random numbers for our
%   gaussian samples
%
%   local variables: none
%
    samples = zeros(1, 10000);
    for i = 1:2:10000
        u1 = rand();
        u2 = rand();
        [x1, x2] = uniform_to_gaussian(u1, u2, mu, sigma);
        samples(i) = x1;
        if i + 1 <= 10000
            samples(i+1) = x2;
        end
    end
end

function [x1, x2] = uniform_to_gaussian(u1, u2, mu, sigma)
% This function serves as a function to convert the two uniform samples to 
% two numbers drawn independently from a Gaussian distribution
%
%   inputs: u1, u2, mu, sigma- random numbers for our gaussian samples and 
%                               mean and standard deviation
%   outputs: x1, x2- two numbers from gaussian distribution
%
%   local variables: r, theta (used for calculating gaussian
%   numbers)
%
    r = sqrt(-2 * log(u1));
    theta = 2 * pi * u2;
    x1 = sigma * r * cos(theta) + mu;
    x2 = sigma * r * sin(theta) + mu;
end

function counts = count_samples(samples, xmin, xmax)
% This function serves as a function to use a loop in which the function
% number to bin is called to convert each sample to a bin number and then 
% used to increment a counter (within a vector of counters) for that bin
%
%   inputs: samples, xmin, xmax- our gaussian samples, and x min and max
%   outputs: counts- counts for each bin
%   local variables: bin (a bin number), numBins (number of bins)
%
    numBins = 2 * (xmax - xmin);
    counts = zeros(1, numBins);
% a loop to print the vector giving the count for each bin
    for i = 1:length(samples)
        bin = number_to_bin(samples(i), xmin, xmax);
        if bin >= 1 && bin <= numBins
            counts(bin) = counts(bin) + 1;
        end
    end
end

function bin = number_to_bin(x, xmin, xmax)
% This function serves as a function to calculate use the expression 
% to convert the value to a bin number
%
%   inputs: x, xmin, xmax - our value and a min and max for it
%   outputs: bin - our bin number
%
%   local variables: none
%
    if x < xmin
        bin = 1;
    elseif x >= xmax
        bin = 2 * (xmax - xmin);
    else
        bin = floor(2 * (x - xmin)) + 1;
    end
end

function plot_samples(counts, xmin, xmax)
% This function serves as a function to plot the counts versus the leftmost
%  Gaussian sample values to which the bins correspond
%
%   inputs: counts, xmin, xmax- the counts, our x min and max
%
%   local variables: binEdges (the edge of the bins, aka the count of them)
%
    numBins = length(counts);
    binEdges = xmin : 0.5 : xmax - 0.5;
    bar(binEdges, counts, 1);
    xlabel('Value');
    ylabel('Count');
    title('Histogram of Gaussian Samples');
    saveas(gcf, 'gaussian_histogram.png');
end
