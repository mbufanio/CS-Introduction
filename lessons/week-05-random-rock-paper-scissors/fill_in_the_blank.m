% ==============================================================================
%
%   WEEK 5 · FILL IN THE BLANK  —  the class writes the code, you type it
%
%   HOW THIS WORKS (teacher):
%     · Every blank looks like this:  ____
%     · Read the task aloud. Kids call out what goes in the blank.
%     · Type their answer — even wrong ones! — and run it (Ctrl+Enter runs
%       just the current section). Wrong answers stop with red text, the
%       class reads the error, everyone debugs. Perfect.
%     · Run after EACH task so the class sees their code work immediately.
%       (Running a task with an unfilled blank stops with
%        "Unrecognized function or variable '____'" — that just means
%        you have not gotten there yet.)
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1 · THE CLASS DIE
% Build a fair six-sided die. randi includes BOTH ends —
% so what should the top number be if we want rolls of 1, 2, 3, 4, 5, 6?

roll = randi([1, ____]);
fprintf('The class die says: %d\n', roll)


%% TASK 2 · THE RIGGED DIE
% Now build a die that ALWAYS rolls 3. No ifs. No tricks. Just randi.
% ⭐ Ask: if both ends are included... what makes a die with only ONE outcome?

fprintf('Rigged roll: %d\n', randi([____, 3]))
fprintf('Rigged roll: %d\n', randi([____, 3]))     % same blank — same answer


%% TASK 3 · THE MOOD SPINNER
% The computer wakes up in a random mood — number first, then the mapping
% gives the number its meaning. The class invents the missing mood!
% Any school-appropriate word works — but don't forget the QUOTES
% (the blank needs a STRING: that's what number 2 will mean).

m = randi(3);
if m == 1
    mood = 'happy';
elseif m == 2
    mood = ____;
else
    mood = 'sleepy';
end
disp(['The computer is feeling: ', mood])

% ⭐ Follow-up: with three moods in the mapping, what's the chance
%    of each one?  (1 out of 3 — equally likely. That's fairness.)


%% TASK 4 · THE COIN FLIP
% A coin is just a two-sided die: randi([1 2]).
% Our rule: 1 means HEADS. Fill the blank so the if-check matches the rule.

flip = randi([1 2]);
if flip == ____
    disp('HEADS!')
else
    disp('TAILS!')
end

% ⭐ Run this task several times in a row. Can it repeat? (Yes! Every flip
%    is fresh — the coin has no memory.)


%% TASK 5 · THE WORD-MATCHER
% Numbers compare with ==. WORDS need today's new tool.
% ⭐ Ask the class: which command asks "are these the SAME WORD?"
%    (It answers 1 for yes, 0 for no.)

fprintf('rock vs rock  -> %d\n', ____('rock', 'rock'))
fprintf('rock vs paper -> %d\n', ____('rock', 'paper'))


%% TASK 6 · FINALE — TIE DETECTOR (you type the last piece live)
% No ____ this time, because the class dictates a WHOLE line.
% The code below throws for both players but never announces a tie.
% ⭐ Ask the class: which tool checks "same word?" — and what two things
%    go inside its parentheses?  When they've got it, TYPE these lines
%    at the bottom of this section, live, with the class dictating:
%
%       if strcmp(throw, computer_throw)
%           disp('TIE! Great minds... and one of them isn''t even a mind.')
%       else
%           disp('Not a tie — who won? Check the grid on your handout!')
%       end

c = randi(3);
if c == 1
    computer_throw = 'rock';
elseif c == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('Teacher types the class''s throw (rock/paper/scissors): ', 's');
fprintf('Class threw   : %s\n', throw)
fprintf('Computer threw: %s\n', computer_throw)
% → type the if / else / end right here, live
