% ==============================================================================
%
%   WEEK 5  ·  RANDOM NUMBERS  →  🎉 ROCK-PAPER-SCISSORS
%
%   Last week our programs learned to make DECISIONS (if / elseif / else).
%   Today they learn something no human is good at: being truly RANDOM.
%
%   By the end of this file the computer plays rock-paper-scissors
%   against the entire class. Best of 5. For all the glory.
%
%   TEACHER: run one %% section at a time (Ctrl+Enter), top to bottom —
%   but STOP at the end of Section 7. Section 8 is the match, played after
%   the voting game (see README). Type clc first to clean the board.
%
% ==============================================================================


%% SECTION 1 · THE ELECTRONIC DIE — randi
% MATLAB comes with dice built in. The command:
%
%   randi([1 6])   means:  "give me a whole number from 1 to 6 —
%                           and don't tell ANYONE in advance."
%
% ⭐ ASK THE CLASS: I'm about to roll this die 5 times. Can anyone in the
%    room tell me what the numbers will be? Can I? Can the computer?
%    (No, no, and — weirdly — no. Even the computer finds out at the
%    moment it rolls.)

disp('Rolling the electronic die 5 times:')
fprintf('Roll 1: %d\n', randi([1 6]))
fprintf('Roll 2: %d\n', randi([1 6]))
fprintf('Roll 3: %d\n', randi([1 6]))
fprintf('Roll 4: %d\n', randi([1 6]))
fprintf('Roll 5: %d\n', randi([1 6]))
disp(' ')

% ⭐ NOW RUN THIS SECTION AGAIN (Ctrl+Enter) and watch the rolls.
%    Every program we've written this semester did the exact same thing
%    every single run. THIS one never runs the same way twice —
%    first time all semester. That's what today unlocks.


%% SECTION 2 · BOTH ENDS COUNT — randi includes its endpoints
% randi([a b]) can give you a, can give you b, and anything between.
% randi([1 6]) rolls 1s AND 6s. It will NEVER roll a 0. NEVER a 7.
%
% ⭐ ASK THE CLASS: randi([1 100]) — smallest possible? Biggest possible?
% ⭐ ASK THE CLASS: what does randi([5 5]) do?
%    (Both ends are 5... it's the world's most rigged die.)
%
% One shortcut before we roll: randi(6) is short for randi([1 6]) —
% "a number from 1 up to 6." We'll use both today.

fprintf('A number from 1 to 100: %d\n', randi([1 100]))
fprintf('The rigged die, randi([5 5]): %d\n', randi([5 5]))
fprintf('Still rigged: %d\n', randi([5 5]))
disp(' ')


%% SECTION 3 · GIVING NUMBERS MEANING — the mapping trick
% Here's the thing about randi: it only makes NUMBERS. But rock-paper-
% scissors isn't played with numbers — it's played with WORDS.
%
% The computer only knows numbers. WE give the numbers meaning.
% Roll a 3-sided die, then declare the rule out loud:
%
%     1 means rock  ·  2 means paper  ·  3 means scissors
%
% Writing the rule down is just last week's if/elseif — we call it a MAPPING:

r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end

fprintf('The die rolled %d, so the computer throws: %s\n', r, computer_throw)
disp(' ')

% ⭐ point at the Workspace — r holds the NUMBER, computer_throw holds what
%    the number MEANS. Run this section a few times and watch both boxes
%    change together.
%
% ⭐ ASK THE CLASS: could computer_throw ever be 'lizard'?
%    (Never — the mapping only hands out the three words WE wrote.)


%% SECTION 4 · THE LINE-LEADER PICKER — a 5-sided die, 5 names
% The same trick picks anything: roll a number, map it to a name.
% ⭐ Swap in five REAL student names and re-run — congratulations,
%    you now own a perfectly fair line-leader picker. Every name gets
%    exactly 1 chance in 5.

n = randi(5);
if n == 1
    leader = 'Ada';
elseif n == 2
    leader = 'Marcus';
elseif n == 3
    leader = 'Priya';
elseif n == 4
    leader = 'Zoe';
else
    leader = 'Leo';
end
fprintf('Today''s line leader: %s\n', leader)
disp(' ')


%% SECTION 5 · FAIRNESS — equally likely, or rigged?
% A mapping is FAIR when every outcome gets the same chance.
% randi(3) gives 1, 2, 3 each 1 chance in 3 — so if each number means a
% different throw, every throw is 1 out of 3. That's what "fair" means
% in math: all outcomes EQUALLY LIKELY.
%
% But look closely at the mapping below — count the rocks...
%
% ⭐ ASK THE CLASS: TWO of the three numbers mean rock.
%    Now what's the chance of rock?  (2 out of 3 — this spinner cheats.)

s = randi(3);
if s == 1
    spin = 'rock';
elseif s == 2
    spin = 'rock';          % ← 1 AND 2 both mean rock. Sneaky.
else
    spin = 'paper';
end
fprintf('The rigged spinner says: %s\n', spin)
disp(' ')

% The DIE is still fair — the MAPPING is rigged. Today's handout has a
% "which spinner is fair?" puzzle about exactly this.


%% SECTION 6 · strcmp — THE WORD-MATCHER
% To judge rock-paper-scissors, the program must compare WORDS:
% did the class and the computer throw the SAME thing?
%
% You'd guess ==. But == compares letter-by-letter, one at a time —
% and it PANICS if the words are different lengths.
%
% The right tool is strcmp ("string compare") — the WORD-MATCHER:
%
%   strcmp(a, b)   asks the real question:  same word?  → 1 (yes) or 0 (no)

fprintf('strcmp of rock and rock  gives: %d\n', strcmp('rock', 'rock'))
fprintf('strcmp of rock and paper gives: %d\n', strcmp('rock', 'paper'))
disp(' ')

% (1 means yes, 0 means no — the same logical answers as last week's > and ==.)
%
% ⭐ LIVE ACTIVITY: want to see == panic? Uncomment the line below, run
%    this section, and read the red text together. Then put the % back.
%    MATLAB says "Arrays have incompatible sizes for this operation." —
%    it tried to line up r-o-c-k against p-a-p-e-r and gave up.
%    strcmp never panics: different words are simply "no" (0).
%
% disp('rock' == 'paper')


%% SECTION 7 · BUILDING THE GAME — one practice round, in slow motion
% Rock-paper-scissors is just three ingredients we already own:
%   1. randi + a mapping     → the computer throws       (today)
%   2. a variable            → the class's throw         (week 2)
%   3. if/elseif + strcmp    → decide the winner         (last week + today)
%
% STEP 1 — the computer throws (the mapping again):

r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end

% STEP 2 — the class throws. For this practice round we'll hard-code it:

class_throw = 'rock';

% STEP 3 — who wins? The rules:
%   rock beats scissors · paper beats rock · scissors beats paper
%
% Here's the trick: glue both throws into ONE sentence with [ ]
% (week 3 skills!) — then ask strcmp whether that sentence is one of the
% three TRUE sentences of rock-paper-scissors.

matchup = [class_throw, ' beats ', computer_throw];

disp('PRACTICE ROUND')
fprintf('Class throws   : %s\n', class_throw)
fprintf('Computer throws: %s\n', computer_throw)
fprintf('The matchup    : %s\n', matchup)

% ⭐ WALK THIS SLOWLY, reading each condition aloud before running:

if strcmp(class_throw, computer_throw)
    disp('Same throw — it''s a TIE.')
elseif strcmp(matchup, 'rock beats scissors')
    disp('Rock smashes scissors — the CLASS wins!')
elseif strcmp(matchup, 'paper beats rock')
    disp('Paper wraps rock — the CLASS wins!')
elseif strcmp(matchup, 'scissors beats paper')
    disp('Scissors cut paper — the CLASS wins!')
else
    disp('The matchup sentence is not a true one... the COMPUTER wins.')
end
disp(' ')

% ⭐ ASK THE CLASS: 3 class throws × 3 computer throws = 9 possible matchups.
%    3 are ties (the strcmp check). 3 are class wins (the three elseifs).
%    So how many are computer wins?  (9 − 3 − 3 = 3.)
%    3 wins, 3 losses, 3 ties → NOBODY has an edge → the game is FAIR.
%    You'll PROVE this on today's handout grid.


%% SECTION 8 · 🎉 THE MATCH — class vs computer, best of 5
% Score lives in two variables. Every round adds 1 to somebody (ties: nobody).
% Teacher: the class agrees on ONE throw per round (vote or shout-out),
% and you type it at the prompt — lowercase, exactly: rock, paper, scissors.
% Milk the drama. Announce the score like a sports commentator.

class_score = 0;
computer_score = 0;

% ⭐ point at the Workspace — two score boxes, both 0. Watch them fight.

disp('==============================================')
disp('   THE MATCH · CLASS vs COMPUTER · BEST OF 5')
disp('==============================================')

% ─── ROUND 1 ──────────────────────────────────────────────────────────────────
r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('ROUND 1 — the class throws: ', 's');
matchup = [throw, ' beats ', computer_throw];
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE — nobody scores.')
elseif strcmp(matchup, 'rock beats scissors')
    class_score = class_score + 1;
    disp('Rock smashes scissors — POINT TO THE CLASS!')
elseif strcmp(matchup, 'paper beats rock')
    class_score = class_score + 1;
    disp('Paper wraps rock — POINT TO THE CLASS!')
elseif strcmp(matchup, 'scissors beats paper')
    class_score = class_score + 1;
    disp('Scissors cut paper — POINT TO THE CLASS!')
else
    computer_score = computer_score + 1;
    disp('The computer takes the round.')
end
fprintf('SCORE -> class %d, computer %d\n\n', class_score, computer_score)

% ─── ROUND 2 ── (yes, this is the SAME block again — remember this pain) ─────
r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('ROUND 2 — the class throws: ', 's');
matchup = [throw, ' beats ', computer_throw];
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE — nobody scores.')
elseif strcmp(matchup, 'rock beats scissors')
    class_score = class_score + 1;
    disp('Rock smashes scissors — POINT TO THE CLASS!')
elseif strcmp(matchup, 'paper beats rock')
    class_score = class_score + 1;
    disp('Paper wraps rock — POINT TO THE CLASS!')
elseif strcmp(matchup, 'scissors beats paper')
    class_score = class_score + 1;
    disp('Scissors cut paper — POINT TO THE CLASS!')
else
    computer_score = computer_score + 1;
    disp('The computer takes the round.')
end
fprintf('SCORE -> class %d, computer %d\n\n', class_score, computer_score)

% ─── ROUND 3 ── (copy-paste again... there HAS to be a better way, right?) ───
r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('ROUND 3 — the class throws: ', 's');
matchup = [throw, ' beats ', computer_throw];
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE — nobody scores.')
elseif strcmp(matchup, 'rock beats scissors')
    class_score = class_score + 1;
    disp('Rock smashes scissors — POINT TO THE CLASS!')
elseif strcmp(matchup, 'paper beats rock')
    class_score = class_score + 1;
    disp('Paper wraps rock — POINT TO THE CLASS!')
elseif strcmp(matchup, 'scissors beats paper')
    class_score = class_score + 1;
    disp('Scissors cut paper — POINT TO THE CLASS!')
else
    computer_score = computer_score + 1;
    disp('The computer takes the round.')
end
fprintf('SCORE -> class %d, computer %d\n\n', class_score, computer_score)

% ─── ROUND 4 ── (there IS a better way. It's called a loop. Week 6.) ─────────
r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('ROUND 4 — the class throws: ', 's');
matchup = [throw, ' beats ', computer_throw];
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE — nobody scores.')
elseif strcmp(matchup, 'rock beats scissors')
    class_score = class_score + 1;
    disp('Rock smashes scissors — POINT TO THE CLASS!')
elseif strcmp(matchup, 'paper beats rock')
    class_score = class_score + 1;
    disp('Paper wraps rock — POINT TO THE CLASS!')
elseif strcmp(matchup, 'scissors beats paper')
    class_score = class_score + 1;
    disp('Scissors cut paper — POINT TO THE CLASS!')
else
    computer_score = computer_score + 1;
    disp('The computer takes the round.')
end
fprintf('SCORE -> class %d, computer %d\n\n', class_score, computer_score)

% ─── ROUND 5 ── (last one. Next week: ONE loop replaces all five blocks.) ────
r = randi(3);
if r == 1
    computer_throw = 'rock';
elseif r == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('ROUND 5 — the class throws: ', 's');
matchup = [throw, ' beats ', computer_throw];
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE — nobody scores.')
elseif strcmp(matchup, 'rock beats scissors')
    class_score = class_score + 1;
    disp('Rock smashes scissors — POINT TO THE CLASS!')
elseif strcmp(matchup, 'paper beats rock')
    class_score = class_score + 1;
    disp('Paper wraps rock — POINT TO THE CLASS!')
elseif strcmp(matchup, 'scissors beats paper')
    class_score = class_score + 1;
    disp('Scissors cut paper — POINT TO THE CLASS!')
else
    computer_score = computer_score + 1;
    disp('The computer takes the round.')
end
fprintf('SCORE -> class %d, computer %d\n\n', class_score, computer_score)

% ─── THE CEREMONY ────────────────────────────────────────────────────────────
% ⭐ Read the final score with maximum drama. Pause before running this.

disp('==============================================')
fprintf('   FINAL SCORE -> class %d, computer %d\n', class_score, computer_score)
disp('==============================================')
if class_score > computer_score
    disp('THE CLASS DEFEATS THE MACHINE! Tell everyone.')
elseif computer_score > class_score
    disp('The computer wins. It isn''t even smug about it. (It can''t be.)')
else
    disp('A dead tie. With a fair game, that''s no accident...')
end
disp(' ')
disp('Was this game fair? 3 wins, 3 losses, 3 ties out of 9 matchups.')
disp('Prove it yourself on today''s handout grid.')
