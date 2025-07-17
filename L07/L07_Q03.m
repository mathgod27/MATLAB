% Mary Robinson
% L07_Q03

function[]=L07_Q03()

% This is a combinatorics/probability problem. The goal of this question 
% is to calculate the probability of choosing a ball given 3 different 
% colors of balls and their amounts.

[cR, cG, cB] = get_ball_counts();
prob = calc_prob_of_all_green(cR, cG, cB);

fprintf('The urn contains %d red balls, %d green balls, and %d blue balls\n', cR, cG, cB);
fprintf('The probability of drawing 4 green balls from the urn is %0.8f\n', prob);

end

function [cR, cG, cB] = get_ball_counts()

cR = input('Enter the number of red balls in the urn: ');
cG = input('Enter the number of green balls in the urn: ');
cB = input('Enter the number of blue balls in the urn: ');

end

function prob = calc_prob_of_all_green(cR, cG, cB)
% i am currently taking combinatorics and this method is what i was taught
% in the class that yields the same results

totalBalls = cR + cG + cB;
ways_to_select_4_green = (factorial(cG))/ (factorial(4)*(factorial(cG - 4)));
ways_to_select_4_total = (factorial(totalBalls))/ (factorial(4)*(factorial(totalBalls - 4)));
prob = ways_to_select_4_green / ways_to_select_4_total;

end
