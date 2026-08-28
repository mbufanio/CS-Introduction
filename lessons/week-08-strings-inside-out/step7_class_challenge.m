% ==============================================================================
%
%   WEEK 8 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three mini-shows built from today's tools. Run the whole file (F5), or
%   one section at a time (Ctrl+Enter).
%   Note: Challenge 1 asks YOU to type a name in the Command Window — grab
%   a volunteer and type theirs.
%
% ==============================================================================


%% CHALLENGE 1 · THE SECRET-NUMBER NAME CONVERTER
% Type a volunteer's name and watch it turn into pure numbers.
% The loop x-rays one letter per lap; the accumulator glues the numbers
% into one secret message. Re-run once per volunteer — instant spy names.

name = input('Volunteer''s name (then press Enter): ', 's');
name = upper(name);

disp(' ')
disp(['CONVERTING ', name, ' TO SECRET NUMBERS...'])

secret_numbers = '';                     % the accumulator — starts empty
for i = 1:length(name)
    letter = name(i);
    fprintf('    %s is secretly %d\n', letter, double(letter))
    secret_numbers = [secret_numbers, num2str(double(letter)), ' '];
end

disp(' ')
disp(['Agent code: ', secret_numbers])
disp('(Write it on paper. Only people who know double() can read it. Muahaha.)')
disp(' ')


%% CHALLENGE 2 · THE MIRROR TRICK (a labeled magic trick)
% A slice can hold a SECRET THIRD NUMBER: the step. We met it in week 6's
% colon (start:step:stop) — but step MINUS ONE means "walk the string
% BACKWARDS, from end to 1." For today it's pure magic. Enjoy the trick.
%
% ⭐ ASK THE CLASS: can anyone think of a word that survives the mirror
%    unchanged? (LEVEL, RACECAR, MOM... math calls these palindromes!)

trick_word = 'STRESSED';
disp(['The word:       ', trick_word])
disp(['In the mirror:  ', trick_word(end:-1:1)])    % ...DESSERTS. You're welcome.

palindrome = 'LEVEL';
disp(['LEVEL in the mirror: ', palindrome(end:-1:1)])
disp(' ')


%% CHALLENGE 3 · THE NAME-BANNER MAKER
% One loop lap per letter — and each lap prints a whole decorated row.
% The row uses week 6's repeater: repmat(letter, 1, 9).
% Swap in a student's name and re-run. Instant smartboard poster.

banner_name = 'ZOE';                   % ⭐ swap for a volunteer, re-run

disp('NOW SHOWING ON THE SMARTBOARD:')
disp(' ')
for i = 1:length(banner_name)
    letter = banner_name(i);
    fprintf('    %s\n', repmat(letter, 1, 9))
end

disp(' ')
disp('Every letter, nine copies wide. Loops don''t get tired.')
