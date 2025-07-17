% Mary Robinson
% L03_Q07

% The goal of this question is to get a letter from the user and determine
% if it is in the first half of the alphabet and if it is a vowel

% clear all code
clear all

% get letter from user
letter = input('Enter a letter: ','s');

% test with booleans (which i optionally did the lowercase base too)
upper = letter >= 65 && letter <= 90;
lower = letter >= 97 && letter <= 122;
vowel = letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' ||...
    letter == 'u' || letter == 'A' || letter == 'E' || letter == 'I' ||...
    letter == 'O' || letter == 'U' ;

% print results
fprintf('%c is in the first half of the alphabet? %d\n', letter, upper);
fprintf('%c is a vowel? %d\n', letter, vowel);
