% ==============================================================================
%
%   WEEK 6  ·  FOR LOOPS & PATTERNS
%
%   In week 1, this course made a promise. The computer did 500 push-ups
%   in THREE lines of code, and we said: "one day you'll write this."
%
%   Today is the day. Today you learn the three lines.
%
%   TEACHER: run one %% section at a time (Ctrl+Enter), top to bottom.
%   Type clc first to clean the board.
%
% ==============================================================================


%% SECTION 1 · THE THREE LINES — your first loop
% A FOR LOOP tells the computer: "run this block AGAIN and AGAIN,
% a set number of times."
%
%   for i = 1:5        ← "count i from 1 to 5; run the block once per number"
%       disp(...)      ← the lines before end are what gets repeated
%   end                ← the end closes the loop, just like if/else
%
% ⭐ ASK THE CLASS: how many push-ups will this print?

for i = 1:5
    disp(['push-up number ', num2str(i)])
end
disp(' ')

% Five push-ups from three lines. Now the week 1 flashback — change ONE number:

for i = 1:500
    disp(['push-up number ', num2str(i)])
end
disp(' ')
disp('...done. It is not even tired. And now YOU know how it works.')
disp(' ')

% ⭐ ASK THE CLASS: what would I change to make it do a MILLION?
%    (Just the number. The code doesn't get longer. THAT is the power.)


%% SECTION 2 · MEET THE LOOP VARIABLE — MATLAB counts like humans
% That little i is a real variable — the LOOP VARIABLE. Each lap, the
% colon hands it the next number. Let's look at exactly what 1:5 hands out.
%
% ⭐ ASK THE CLASS: five laps... will i ever actually BE 5?
%    Will it ever be 0? Vote before running!

disp('What 1:5 really hands out:')
for i = 1:5
    fprintf('this lap, i is %d\n', i)
end
disp(' ')

% 🎉 THE NUMBER-LINE MOMENT (draw this on the board):
%
%     1   2   3   4   5
%     ●   ●   ●   ●   ●
%
%   1:5 is 1, 2, 3, 4, 5 — FIVE numbers, and 5 IS one of them.
%   · It STARTS at your first number (no zero, no nonsense)
%   · It INCLUDES the last one (the last number is a step, not a wall)
%
%   MATLAB counts like humans. Say it once, enjoy it forever.
%
% ⭐ point at the Workspace — after the loop, i's box still shows its
%    final lap: 5. The loop variable is a real box like any other.


%% SECTION 3 · THE COLON IS A SEQUENCE MACHINE — start:step:stop
% Put a third number IN THE MIDDLE and the colon jumps by it:
%
%   start : step : stop         first : difference : last
%
% Math class calls these ARITHMETIC SEQUENCES — and look: the colon
% notation IS the math. First term, common difference, last term.
% You have been writing MATLAB in math class all year.
%
% ⭐ ASK THE CLASS before each one: what will it print?

disp('Evens — 2:2:10, first 2, difference 2, last 10:')
for n = 2:2:10
    fprintf('%d\n', n)
end
disp(' ')

disp('Counting by 5s — 5:5:50:')
for n = 5:5:50
    fprintf('%d\n', n)
end
disp(' ')

% And with the loop variable doing real math each lap, homework dissolves:

disp('The 7 times table, in three lines:')
for i = 1:10
    fprintf('7 x %d = %d\n', i, 7 * i)
end
disp(' ')

% ⭐ Change both 7s to any number the class shouts. Re-run. Any times
%    table, instantly. (They will request 1,000,000. Oblige them.)


%% SECTION 4 · BACKWARD — a negative step
% The step can be NEGATIVE — the sequence walks DOWNHILL:

disp('Rocket launch — 10:-1:1:')
for n = 10:-1:1
    fprintf('%d ...\n', n)
end
disp('BLASTOFF!')
disp(' ')

% ⭐ ASK THE CLASS: why does the countdown end at 1?
%    (Because 1 is the LAST TERM — and the last term is always included.
%     MATLAB counts like humans, even walking backward.)
%
% ⭐ SNEAKY FOLLOW-UP for the voting game later: what would 5:1:1 do?
%    Don't answer yet — it's in today's prediction rounds.


%% SECTION 5 · THE ACCUMULATOR — Gauss vs the machine
% Little Gauss added 1+2+3+...+100 in seconds with a genius trick.
% The computer doesn't need a trick — it needs a SNOWBALL:
%
%   total = 0;                    ← start an empty snowball
%   each lap:  total = total + number;   ← roll the next number into it
%
% That pattern is called an ACCUMULATOR. Watch it eat Gauss's problem:

total = 0;
for number = 1:100
    total = total + number;
end
fprintf('1 + 2 + 3 + ... + 100 = %d\n', total)

% ⭐ ASK THE CLASS: what was total after the first lap? (1)
%    After the second? (3)  Third? (6)  ...and after all 100? Run and see.
% ⭐ point at the Workspace — total's box holds the finished snowball,
%    and number's box shows the last number it swallowed: 100.
%
% Now check it against Gauss's trick: 50 pairs of 101 → n(n+1)/2:

fprintf('Gauss''s formula, 100 * 101 / 2 = %d\n', 100 * 101 / 2)
disp('The formula and the loop AGREE. Math and code are the same universe.')
disp(' ')

% ⭐ ASK THE CLASS: which would win for 1 to a BILLION — the loop grinding
%    a billion laps, or the formula in one multiplication?
%    (The formula. Gauss's trick still matters — cleverness scales.)


%% SECTION 6 · PATTERN ART — the repeater
% One last superpower. Meet THE REPEATER:
%
%   repmat('*', 1, 3)   is   ***      (three copies, glued together)
%
% (repmat = "repeat matrix" — say "the repeater" and move on.)
%
% ⭐ ASK THE CLASS: so what happens if we display repmat('*', 1, i)
%    while i climbs 1, 2, 3, ...?

for i = 1:7
    disp(repmat('*', 1, i))
end
disp(' ')

% A triangle, built from repetition. Art class is now math class.

disp('The laugh-o-meter:')
for i = 1:5
    disp(repmat('HA', 1, i))
end
disp(' ')

disp('Loops: because the computer NEVER gets bored. See you at the handout.')
