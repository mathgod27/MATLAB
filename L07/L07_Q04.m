% Mary Robinson
% L07_Q04

function[]=L07_Q04()

% The goal of this question is to test which method is best for calculating
% scores for a test. The inputs will be functions and the outputs will be
% boolean expressions saying which method is best.

% Method: input anonymous functions and equal them to a,b,c, then do a
% comparison test with all of them in 3 different scenarios (scenario 1: 
% a>>b>>c, 2 is b>>c>>a, etc). then lastly we need the biggest score, which
% i would just make a big equation with our booleans, muliply them by
% a,b,c, then that would give me my answer

% since the test is in 10 mins, lemme practice writing rand and randi:
% x = rand(rows,columns)*(max-min) + min*ones(rows,columns)
% y = randi([min,max],rows,columns) ONLY INTEGERS

[f1,f2,f3,vector]= get_input();
calculate_score(f1,f2,f3,vector);


end

function[f1,f2,f3,vector]= get_input()

f1 = input('Enter an anonymous function for method 1: ');
f2 = input('Enter an anonymous function for method 2: ');
f3 = input('Enter an anonymous function for method 3: ');
vector = input('Enter a vector of 5 scores: ');

end

function[]= calculate_score(f1,f2,f3,vector)

a = vector(1);
b = vector(2);
c = vector(3);
d = vector(4);
e = vector(5);

m1 = f1(a,b,c,d,e);
m2 = f2(a,b,c,d,e);
m3 = f3(a,b,c,d,e);

%best_score = (score1 >= score2) * score1 + 
% (score2 >= score1 && score2 >= score3) * score2 + 
% (score3 > score1 && score3 > score2) * score3;

m1_best = m1 > m2 & m1 > m3;
m2_best = m2 > m1 & m2 > m3;
m3_best = m3 > m1 & m3 > m2;

best_score = m1 * m1_best + m2 * m2_best + m3 * m3_best;

fprintf('Method 1 is best? %d\n', m1_best);
fprintf('Method 2 is best? %d\n', m2_best);
fprintf('Method 3 is best? %d\n', m3_best);
fprintf('The best score is %0.2f\n', best_score);

end


