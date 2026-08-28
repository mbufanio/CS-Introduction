% ==============================================================================
%
%   WEEK 2 · FILL IN THE BLANK  —  the class writes the code, you type it
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
%     · Task 3 has NO blank — the class dictates a line and you type it live.
%     · Keep the WORKSPACE PANE in view — half the answers today are proven
%       there, not on the screen.
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1 · THE HEADCOUNT
% Take a headcount! The class counts everyone in the room (teacher included?
% their call). Fill the blank with the NUMBER — no quotes, it's math fuel.
% Leave the hush key OFF so MATLAB announces it —
% ⭐ and point at the Workspace: a brand-new box.

students = ____


%% TASK 2 · OPEN THE BOX
% Now show what's inside. What goes in the blank so the computer displays
% the NUMBER — not the word 'students'?
% ⭐ Ask first: quotes or no quotes? Why?

disp(____)


%% TASK 3 · THE SILENT BOX (no blank — the class dictates, you type)
% ⭐ TYPE IT LIVE: the class must dictate ONE line that stores 777 in a box
%    named 'secret' — WITHOUT the computer announcing anything.
%    (Which key hushes a line?)
%
%    Type their line right below this comment and run it. Silence on the
%    screen... then ⭐ everyone points at the Workspace to PROVE the box
%    exists anyway. The semicolon hushes the announcement, not the work.


%% TASK 4 · THE ALGEBRA MACHINE
% Straight from math class: evaluate 3x + 2. The class picks a value for x
% (first blank), then fills the second blank so MATLAB SUBSTITUTES x into
% the expression. Predict the answer out loud before you run!

x = ____;
disp(3 * ____ + 2)


%% TASK 5 · THE IMPOSSIBLE EQUATION
% The class starts with 50 points. They just earned 10 more.
% Fill the blank so the line means: "take what's in the score box, add 10,
% put it back." (Hint: the answer is already on this line's left side...)
% ⭐ Watch the Workspace row for score change when you run it.

score = 50;
score = ____ + 10;
disp(score)


%% TASK 6 · THE PIZZA EMERGENCY
% 23 slices of pizza just arrived for 4 kids. Two of MATLAB's machines can
% save us — the class decides which blank gets floor and which gets mod:
%
%   Which machine answers "how many slices EACH?"
%   Which machine answers "how many LEFT OVER?"
%
% Wrong machine? Run it anyway — the class checks the numbers against the
% pizza story and debugs. (4 kids x 5 slices + 3 left = 23. The math polices
% itself.)

slices = 23;
kids = 4;

each = ____(slices / kids)
leftover = ____(slices, kids)


%% TASK 7 · HOW BIG CAN WE GO?
% The class picks the power. Fill the blank with their number and run.
% Then raise the stakes: bigger! BIGGER!
% ⭐ Watch for TWO landmarks as the powers climb:
%    1. MATLAB flips into SCIENTIFIC NOTATION (like 1.2677e+30) — 8th-grade
%       math, live on the smartboard
%    2. somewhere past 2^1023... Inf. The edge of the number line.

disp(2 ^ ____)


%% TASK 8 · FINALE — THE EMPTY BOX
% The class's last job today: ask for a box that was NEVER made.
% Fill the blank with any label we did NOT create today (pizza? homework?
% victory?), run it, and read the error together.
% ⭐ Ask: is the computer angry? No — it's telling us EXACTLY what's missing:
%    "Unrecognized function or variable 'victory'."
% Then fix it the honest way: make the box first (type a line like
% victory = 100 above it) and run again.

disp(____)
