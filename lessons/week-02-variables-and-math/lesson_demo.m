% ==============================================================================
%
%   WEEK 2  ·  VARIABLES & MATH
%
%   Last week the computer talked. This week it gets two superpowers:
%     1. A MEMORY  — it can store values in labeled boxes called VARIABLES
%        (and MATLAB SHOWS us that memory, live, in the Workspace pane!)
%     2. A CALCULATOR — the fastest one in the building
%
%   Reminder from week 1: lines starting with a '%' are comments — notes for
%   humans. The computer skips them. Everything else runs, top to bottom.
%
%   TEACHER: make sure the WORKSPACE PANE is visible and big — it co-stars
%   today. Click inside a %% section and press Ctrl+Enter to run just that
%   section. (Type clc and clear first — clean board, empty memory.)
%
% ==============================================================================


%% SECTION 1 · THE REMATCH — class vs. computer
% The class just raced this expression on paper. Now it's the computer's turn.
%
% ⭐ ASK THE CLASS: anyone finished? Anyone CLOSE? Watch the screen...

disp('The monster expression:  437 * 852 + 90210 - 12345')
disp(437 * 852 + 90210 - 12345)
disp('Time it took: less than a millisecond. It is not even warmed up.')


%% SECTION 2 · VARIABLES — THE WALL OF LABELED BOXES (watch the Workspace!)
% The computer's memory is like a giant wall of boxes. A VARIABLE is one box
% with a label on the front and ONE value inside.
%
%   score = 10   means:  "make a box, label it 'score', put 10 inside"
%
% That '=' sign is NOT the equals sign from math class. It's an ARROW pointing
% left: take the value on the right, store it in the box on the left.
% We call this ASSIGNMENT.
%
% ⭐ Run the next line, then FREEZE. Two things just happened:
%    1. MATLAB announced the assignment in the Command Window.
%    2. ⭐ POINT AT THE WORKSPACE PANE — a new row appeared: score, 10.
%    That pane is the computer's ACTUAL MEMORY. We will watch it all semester.

score = 10

% More boxes! ⭐ Point at the Workspace after each one: "another box."

teacher_age = 39            % (lie if you want — the computer can't check)
best_class = 'Room 204'     % boxes can hold strings too!

% To see inside a box later, disp the LABEL (no quotes!):
%
% ⭐ ASK THE CLASS: these two lines look almost identical.
%    Will they display the same thing? Vote before running!

disp(score)
disp('score')

% What happened:
%    disp(score)    no quotes → "computer, LOOK UP the box called score"  → 10
%    disp('score')  quotes    → "computer, SAY the word score"            → score
%
% Quotes mean SAY IT. No quotes mean LOOK IT UP. That rule lasts all year.


%% SECTION 3 · THE SEMICOLON — THE HUSH KEY
% Did anyone find the announcements a bit... loud? MATLAB has a hush key:
% end a line with a SEMICOLON and it works SILENTLY.
%
% ⭐ ASK THE CLASS: this next line ends with ';'. Predict: does the box still
%    get made, or does the semicolon cancel the whole thing?

secret = 777;

% Silence in the Command Window... but ⭐ POINT AT THE WORKSPACE: the box
% 'secret' appeared anyway! The semicolon hushes the ANNOUNCEMENT, not the
% work. The Workspace is our proof that it worked.
%
% From now on: no semicolon = announce it. Semicolon = hush it.
% ("Should I hush this line?" is a real programmer decision.)


%% SECTION 4 · ans — MATLAB'S SCRATCH BOX
% What if we do math without naming ANY box?
%
% ⭐ ASK THE CLASS: predict — where does the answer go?

2 + 2

% MATLAB answered into a box named 'ans' — ⭐ there it is in the Workspace!
% 'ans' is MATLAB's scratch box: it always writes the answer SOMEWHERE,
% and if you don't name a box, it uses ans. New answer, same scratch box:

10 * 10

% ⭐ Workspace check: ans got overwritten — the scratch box gets recycled.
% If an answer matters, give it a real box with a real name.


%% SECTION 5 · THIS IS SECRETLY YOUR ALGEBRA HOMEWORK
% In algebra:   "Evaluate 3x + 2 when x = 7."
% You substitute 7 for x, then follow order of operations. Watch MATLAB do
% EXACTLY that — substitution is its whole job:

x = 7;
disp(3 * x + 2)

% ⭐ ASK THE CLASS: I'm changing x to 100. What will the same line show?
%    (Have them compute 3(100) + 2 in their heads BEFORE you run it.
%     ⭐ And watch the Workspace: the x row changes from 7 to 100.)

x = 100;
disp(3 * x + 2)

% Same expression, new value in the box. MATLAB evaluates by substitution —
% the thing your math teacher has been making you do by hand. (Rude, honestly.)


%% SECTION 6 · REASSIGNMENT — THE IMPOSSIBLE EQUATION
% ⭐ ASK THE CLASS: in MATH class, could this equation ever be true?
%
%        score = score + 10
%
%    (Subtract score from both sides... 0 = 10?! Impossible. No solution.)
%
% But this is not math class, and '=' is not stating a fact — it's an
% INSTRUCTION, and instructions run in steps, RIGHT SIDE FIRST:
%
%    step 1:  open the box 'score', see what's inside          (10)
%    step 2:  add 10 to it                                     (20)
%    step 3:  put the result BACK in the box, replacing the old value
%
% The old value is gone forever. The box only ever holds ONE thing.
% ⭐ Leave the hush key OFF so MATLAB announces the update — and point at the
%    Workspace: the score row changes before their eyes.

score = score + 10

% This one line is how every game you've ever played keeps score.
% ⭐ ASK THE CLASS: I run it one more time. Now what's in the box?
%    Predict, then watch the row change again:

score = score + 10


%% SECTION 7 · PEMDAS — MATLAB FOLLOWS YOUR RULES
% ⭐ ASK THE CLASS: what is 2 + 3 * 4?  Shout it out.
%    (Someone will say 20. Someone will say 14. Let them argue for a second.)

disp(2 + 3 * 4)

% 14! MATLAB multiplies BEFORE it adds — order of operations, exactly the
% PEMDAS you learned. The computer never does math left-to-right like a
% calculator app from 2003. And parentheses overrule everything, same as math:

disp((2 + 3) * 4)

% One heads-up while we're here: when an answer isn't a whole number,
% MATLAB shows a few decimal places:

disp(10 / 4)     % → 2.5000  (that's just 2.5 wearing extra zeros)


%% SECTION 8 · THE ^ OPERATOR — TO THE EDGE OF THE NUMBER LINE
% A little hat means "to the power of":   2 ^ 3  is  2 x 2 x 2.

disp(2 ^ 3)
disp(2 ^ 10)
disp(2 ^ 20)

% 1024... 1048576... every digit exact. Now let's go BIG.
%
% ⭐ ASK THE CLASS: predict what 2^100 looks like. A screen full of digits?

disp(2 ^ 100)

% 1.2677e+30 — MATLAB switched to SCIENTIFIC NOTATION, the exact thing you
% learn in 8th-grade math! 'e+30' means 'times 10 to the 30th'. The number got
% so huge that MATLAB switched languages — and you already speak this one.
%
% ⭐ ASK THE CLASS: can we break it? How high can the power go? Watch this:

disp(2 ^ 1100)

% Inf. Infinity. We just found the EDGE of the computer's number line —
% past here, MATLAB gives up counting and says 'that might as well be
% infinite'. (Where EXACTLY is the edge? Today's challenge file hunts it down.)


%% SECTION 9 · floor() AND mod() — THE PIZZA OPERATORS
% The problem: 17 slices of pizza. 5 kids. Nobody is allowed to cry.
%
% ⭐ ASK THE CLASS: how many slices does each kid get? How many are left
%    over for the teacher? (They've done this since 3rd grade — division
%    with remainder. MATLAB just splits it into two machines.)

slices = 17;
kids = 5;

disp(floor(slices / kids))   % floor(): divide, keep the WHOLE part only
disp(mod(slices, kids))      % mod():   ONLY the remainder

% floor() rounds down to a whole number. mod() is the remainder machine
% (say it like a programmer: "mod").
%
% mod looks like the most useless machine in MATLAB. It is not. In week 9,
% mod is the exact gear that makes SECRET CODES work — it's how the letter Z
% wraps back around to A. Remember the pizza.


%% SECTION 10 · clear AND clc — TOTAL AMNESIA vs A CLEAN BOARD
% Look at the Workspace: a whole wall of boxes we built today.
% Two commands that sound alike but could not be more different:
%
%   clc    cleans the COMMAND WINDOW (the board) — the memory survives
%   clear  wipes the MEMORY — every box, gone. Total amnesia.
%
% ⭐ Run clc first. The screen goes blank — but point at the Workspace:
%    every box is still there. The board is clean; the brain is fine.

clc

% ⭐ Now the dramatic one. Count down from three, then run clear —
%    and watch the WHOLE WORKSPACE vanish.

clear

% Empty. It remembers NOTHING. ⭐ Prove it — type   disp(score)   live in the
% Command Window:
%
%   Unrecognized function or variable 'score'.
%
% Same red text as week 1 — MATLAB isn't angry, it's telling us the box is
% gone. (This is why we start every class with clear: fresh memory, no
% leftovers from last time.)


%% SECTION 11 · GRAND FINALE
% Everything below uses only today's tools: boxes, math, hush keys, disp.

points_per_week = 1000;
weeks = 16;
final_score = points_per_week * weeks

disp(' ')
disp('*******************************************')
disp('*   THIS CLASS NOW HAS A MEMORY UPGRADE   *')
disp('*******************************************')
disp(' ')
disp('Weeks of MATLAB so far:')
disp(2)
disp('Weeks of MATLAB to go:')
disp(weeks - 2)
disp('Points the computer cares about:')
disp(final_score * 0)
disp('It has no feelings. It is very good at math. See you next week.')
