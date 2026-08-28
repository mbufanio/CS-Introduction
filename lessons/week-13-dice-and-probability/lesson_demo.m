% ==============================================================================
%
%   WEEK 13  ·  DICE & PROBABILITY  —  rolling a million dice before the bell
%
%   On the board: 10 real rolls, and a lumpy tally that LOOKS broken.
%   Today's question: is the die broken... or is 10 rolls just not enough?
%   The computer's answer: let's roll a MILLION and find out.
%
%   TEACHER — HOW TO RUN THIS FILE:
%     · Run the whole file (F5). It pauses in the COMMAND WINDOW between
%       sections. Press Enter when the class has made its prediction —
%       never run without a prediction.
%     · Every number on screen will differ from your dry run. That's not
%       a bug — that's the subject of the lesson.
%     · No turtle today — the whole show lives in the Command Window
%       (and the Workspace pane, where the counters tick).
%
% ==============================================================================


%% SECTION 1 · ONE DIGITAL ROLL  (week 5 called — it wants its dice back)
% randi([1 6]) — a whole number from 1 to 6, BOTH ends included, all
% equally likely. It's the rock-paper-scissors machinery, back for the
% probability unit.
%
% ⭐ ASK THE CLASS: my real die took me all morning to roll 10 times.
%    How long will the computer need for ONE roll?
%    (And watch the Workspace: roll gets a box. Re-run this section a few
%     times and watch the value in the box change — THAT's randomness.)

input('SECTION 1 — press Enter to roll one digital die: ', 's');

roll = randi([1 6]);
fprintf('the computer rolled: %d\n', roll)


%% SECTION 2 · TEN ROLLS  —  lumpy, just like the real thing
% Week 6's for loop + week 5's randi = ten rolls in a blink.
%
% ⭐ ASK THE CLASS: theory says each face is equally likely. Will these ten
%    rolls come out nice and even — one or two of each face?
%    (Compare the result to the tally on the board. Lumpy here too!)

input('SECTION 2 — press Enter for ten rolls: ', 's');

roll_line = '';
for i = 1:10
    roll = randi([1 6]);
    roll_line = [roll_line, num2str(roll), ' '];    % collect the rolls on one line
end
disp(['ten rolls: ', roll_line])
disp('Lumpy — just like my real die. Same cause: ten rolls is a TINY experiment.')


%% SECTION 3 · THE TALLY CHART, COMPUTER EDITION
% On the board: your hand-made tally. Below: the computer's version —
% 600 rolls, six counters, and a bar of # marks for each face
% (one # per 10 rolls, built by repmat, week 6's repeater).
%
% ⭐ ASK THE CLASS: 600 rolls ÷ 6 faces = 100 each, so about ten #s per
%    face. Will the bars come out perfectly even?
%    (Almost-even — noticeably less lumpy than 10 rolls. A clue...)

input('SECTION 3 — press Enter to roll 600 and draw the tally: ', 's');

count1 = 0; count2 = 0; count3 = 0;
count4 = 0; count5 = 0; count6 = 0;

for i = 1:600
    roll = randi([1 6]);
    if roll == 1
        count1 = count1 + 1;
    elseif roll == 2
        count2 = count2 + 1;
    elseif roll == 3
        count3 = count3 + 1;
    elseif roll == 4
        count4 = count4 + 1;
    elseif roll == 5
        count5 = count5 + 1;
    else
        count6 = count6 + 1;
    end
end

fprintf('face 1: %s (%d)\n', repmat('#', 1, round(count1 / 10)), count1)
fprintf('face 2: %s (%d)\n', repmat('#', 1, round(count2 / 10)), count2)
fprintf('face 3: %s (%d)\n', repmat('#', 1, round(count3 / 10)), count3)
fprintf('face 4: %s (%d)\n', repmat('#', 1, round(count4 / 10)), count4)
fprintf('face 5: %s (%d)\n', repmat('#', 1, round(count5 / 10)), count5)
fprintf('face 6: %s (%d)\n', repmat('#', 1, round(count6 / 10)), count6)
disp('(each # = 10 rolls — a bar chart made of text. Very computer-ish.)')


%% SECTION 4 · THE SIMULATION PATTERN  —  count the sixes in 100 rolls
% This little block is the heart of the whole unit. Four steps:
%
%   step 1: LOOP over many trials         for i = 1:trials
%   step 2: RUN one trial                 roll = randi([1 6]);
%   step 3: COUNT the hits with if        if roll == 6 → count = count + 1
%   step 4: TURN it into a percent        count / trials * 100
%
% Theory's prediction: 1 face out of 6 → 1/6 → about 16.67% of rolls.
%
% (fprintf trivia: % starts a COMMENT in MATLAB — so inside fprintf's
%  quotes you must write %% to print ONE real percent sign. One % is a
%  note to humans; %% is how a program says "percent" out loud. And no,
%  % doesn't do remainders here — that's mod()'s job.)
%
% ⭐ ASK THE CLASS: out of 100 rolls, how many sixes SHOULD we see?
%    (About 16 or 17.) Will we get exactly that? Votes, then Enter.

input('SECTION 4 — press Enter to count sixes in 100 rolls: ', 's');

trials = 100;
count = 0;
for i = 1:trials
    roll = randi([1 6]);
    if roll == 6
        count = count + 1;
    end
end

percent = count / trials * 100;
fprintf('rolls: %d    sixes: %d    that is %.2f%%\n', trials, count, percent)
fprintf('theory says: 16.67%%. Close? Sort of? Hmm...\n')


%% SECTION 5 · THE ZOOM-OUT  —  100 → 10,000 → 1,000,000
% Same experiment, bigger and bigger. A week 6 colon trick runs it three
% times: k goes 2, 4, 6, and the trial count is 10^k — one hundred, ten
% thousand, one MILLION.
%
% ⭐ ASK THE CLASS before EACH line appears: closer to 16.67 than the last
%    one, or farther? (The million-roll line takes a couple of seconds —
%    narrate it: "it's on roll four hundred thousand riiiight... now.")

input('SECTION 5 — press Enter to zoom out: ', 's');

fprintf('theory:  16.67%%, forever and always\n\n')

for k = 2:2:6                      % k = 2, 4, 6  →  trials = 100, 10000, 1000000
    trials = 10 ^ k;
    count = 0;
    for i = 1:trials
        if randi([1 6]) == 6
            count = count + 1;
        end
    end
    fprintf('%9d rolls  →  %.2f%% sixes\n', trials, count / trials * 100)
end

fprintf('\nThe bigger the experiment, the closer it hugs the theory.\n')
fprintf('Mathematicians call this THE LAW OF LARGE NUMBERS. (Great band name.)\n')
fprintf('So: the die was never broken. Ten rolls was just too small to tell.\n')


%% SECTION 6 · TWO DICE  —  why 7 is king
% New experiment: roll TWO dice, add them. Sums run from 2 to 12.
%
% ⭐ ASK THE CLASS: are all sums equally likely, the way single faces are?
%    Vote: does 7 come up more than 2, less than 2, or the same?

input('SECTION 6 — press Enter to race sum 7 against sum 2 (10,000 rolls): ', 's');

sevens = 0;
twos = 0;
for i = 1:10000
    total = randi([1 6]) + randi([1 6]);
    if total == 7
        sevens = sevens + 1;
    end
    if total == 2
        twos = twos + 1;
    end
end

fprintf('in 10,000 double-rolls:\n')
fprintf('   sum 7 came up %d times  →  %.2f%%\n', sevens, sevens / 10000 * 100)
fprintf('   sum 2 came up %d times   →  %.2f%%\n', twos, twos / 10000 * 100)
fprintf('\nNot even close. 7 CRUSHES 2. But... why?\n')

% THE GRID — every possible two-dice outcome, all 36, all equally likely.
% (fprintf trick: a format WITHOUT \n stays on the same line — so the
%  inner loop prints one row cell by cell, and \n ends the row.)
%
% ⭐ ASK THE CLASS: find the 7s in the grid. How many? Now find the 2s.

input('SECTION 6, part 2 — press Enter to print all 36 possible outcomes: ', 's');

fprintf('           die B:   1   2   3   4   5   6\n')
for a = 1:6
    fprintf('   die A: %d  →  ', a)
    for b = 1:6
        fprintf('%4d', a + b)
    end
    fprintf('\n')
end

fprintf('\nways to make 7:  1+6, 2+5, 3+4, 4+3, 5+2, 6+1  →  six ways\n')
fprintf('ways to make 2:  1+1                            →  one way\n\n')
fprintf('theory:  7 → %.2f%%      2 → %.2f%%\n', 6 / 36 * 100, 1 / 36 * 100)
fprintf('Scroll up to the simulation... THE GRID AND THE EXPERIMENT AGREE.\n')
fprintf('That''s the whole subject of probability in one screen.\n')


%% SECTION 7 · THE CLIFFHANGER

input('SECTION 7 — press Enter for the closing thought: ', 's');

disp(' ')
disp(repmat('*', 1, 58))
disp('Who else knows that 7 beats 2, and EXACTLY by how much?')
disp('Casinos. Every game on their floor is built from this math,')
disp('tilted juuust slightly in the house''s favor.')
disp('Next week: we simulate it — and find out why the casino')
disp('always, always wins.')
disp(repmat('*', 1, 58))
