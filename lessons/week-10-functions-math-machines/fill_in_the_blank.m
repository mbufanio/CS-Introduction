% ==============================================================================
%
%   WEEK 10 · FILL IN THE BLANK  —  the class writes the code, you type it
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
%   Today's machines are @-machines — they live in Workspace boxes, so the
%   class can watch each one appear as it's built. (Named machine FILES
%   are the demo's job; a script can't hold those.)
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1 · FINISH THE MACHINE'S INSIDES
% This machine is supposed to DOUBLE whatever falls in the slot.
% The class fills in what x gets multiplied by.
% ⭐ After it runs: point at the Workspace — double_me just appeared.
%    A machine, in a box.

double_me = @(x) x * ____;


%% TASK 2 · PRESS THE BUTTON
% Task 1 built the machine — but building isn't running! Fill in the NAME
% of the machine we just built to actually call it.
% ⭐ Ask before running: what number will appear? (8... then have them
%    predict the second line before it prints.)

disp(____(4))
disp(____(double_me(4)))


%% TASK 3 · YOU TYPE, THEY SUPPLY THE SYMBOL
% No blank here — a symbol can't hide in a ____. Do this one live:
%   1. Say: "I want a machine named half that halves things. Which SYMBOL
%      builds a machine right here in the script?"
%   2. Type these two lines with the symbol the class calls out, then run:
%
%          half = [symbol](x) x / 2;
%          disp(half(10))
%
%   (They're hunting for @ — the machine-builder arrow. If someone says
%    "just write half = x / 2" — TYPE IT! MATLAB complains that x is
%    undefined: without the @(x) there's no input slot, just a math line
%    trying to run RIGHT NOW with no x in the Workspace. The @ is what
%    turns "do it now" into "build a machine that can do it LATER.")


%% TASK 4 · NAME THE SLOT
% The class invents this machine's input-slot name. Rule: the name in the
% parentheses and the name in the body must MATCH — the slot and the
% insides are the same variable. (Any name works — even a silly one —
% as long as both blanks agree. Let them pick. Then run.)

greet = @(____) disp(['GO ', ____, ' GO! You are a CODE MACHINE!']);

greet('Ada')
greet('Leo')            % ⭐ swap in real names and add more calls


%% TASK 5 · THE TWO-SLOT MACHINE
% A = w × h, as a machine with TWO slots — the demo's rectangle_area.m,
% rebuilt as an @-machine. The second slot's name is missing — in BOTH
% places it appears. Same rule as Task 4: they match.
% ⭐ After it runs: ask what area_of(3, 4) vs area_of(4, 3) would give.
%    (Same! Then ask: would a SUBTRACTION machine be so forgiving?
%     Hold the vote — it's in the voting game.)

area_of = @(width, ____) width * ____;

fprintf('6 x 7 room: %d\n', area_of(6, 7))


%% TASK 6 · THE CLASS INVENTS A MACHINE
% Total freedom: the class decides what this machine DOES to x.
% Triple it? x * x? Add a million? Any math expression using x goes in
% the blank. Then feed it 5 and have them verify the output by hand.

class_machine = @(x) ____;

fprintf('class_machine(5) = %g\n', class_machine(5))
fprintf('class_machine(10) = %g\n', class_machine(10))


%% TASK 7 · WIRE A MACHINE INTO A LOOP
% Week 6's loop + this week's machine = an instant input/output table.
% Fill in the name of the machine to feed. (Any machine from today with
% ONE slot works — class_machine? double_me? Even the demo's double_it,
% straight from its file. Their call.)
% ⭐ Ask before running: predict the whole table out loud, row by row.

for n = 1:5
    fprintf('%d --> %g\n', n, ____(n))
end
