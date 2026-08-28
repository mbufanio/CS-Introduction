% ==============================================================================
%
%   WEEK 6 · FILL IN THE BLANK  —  the class writes the code, you type it
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
%   Completed version: step2_teacher_answer_key.md
%
% ==============================================================================


%% TASK 1 · APPLAUSE MACHINE
% The class deserves a round of applause — an EXACT round of 12 claps.
% ⭐ Ask: what number finishes the colon so the loop runs 12 times?
%    (No tricks here: 1:12 is twelve laps, 1 through 12, last one included.
%     MATLAB counts like humans — savor how easy this is.)

for i = 1:____
    disp('CLAP!')
end


%% TASK 2 · COUNT LIKE A HUMAN
% Make this loop print the numbers 1 through 10 — all ten of them.
% ⭐ Ask for BOTH blanks: where do we start? Where do we END?
%    (And is the end included? YES — the last number counts.)

for number = ____:____
    fprintf('%d\n', number)
end


%% TASK 3 · THE ODD SQUAD
% Print the odd numbers from 1 to 19: 1, 3, 5, ... 19.
% In math language: first term 1, common difference 2, last term 19.
% ⭐ Ask: what DIFFERENCE jumps us from odd to odd — and where does it
%    go in the colon?  (In the MIDDLE: first:difference:last.)

for n = 1:____:19
    fprintf('%d\n', n)
end


%% TASK 4 · COUNTDOWN TO LUNCH
% Count DOWN from 10 to 1. The first and last are done — the class
% supplies the step that makes the sequence walk backward.
% ⭐ Trap alert: "1"? "2"? Type whatever they say and let the silence
%    (an empty run — zero lines!) do the teaching. Backward needs a minus.

for t = 10:____:1
    fprintf('%d ...\n', t)
end
disp('LUNCH TIME!')


%% TASK 5 · THE SNOWBALL (accumulator)
% Add up 1 + 2 + 3 + ... + 20 with the snowball pattern.
% Blank 1: what does the snowball start as, before anything is added?
% Blank 2: what gets rolled into the snowball each lap?
% ⭐ Predict first: what will the answer be? (Gauss says 20 × 21 ÷ 2...)

total = ____;
for n = 1:20
    total = total + ____;
end
fprintf('1 + 2 + ... + 20 = %d\n', total)


%% TASK 6 · TRIANGLE ARCHITECT
% Build a 7-row star triangle:  row 1 has 1 star, row 7 has 7 stars.
% The repeater is written — the class picks how many copies it makes.
% ⭐ Ask: which variable already counts 1, 2, 3, ... as the loop runs?

for row = 1:7
    disp(repmat('*', 1, ____))
end


%% TASK 7 · FINALE — ANY TIMES TABLE (you type this one live)
% No ____ here, because the class dictates a WHOLE line this time.
% The class picks a number for the table (7? 12? 9000?) — type it into
% the first line. Then ask: what SYMBOL multiplies in MATLAB?
% (Not x! The star. The star multiplies numbers — the repeater copies text.)
%
% TYPE this line inside the loop, live, with the class dictating the star:
%
%       fprintf('%d x %d = %d\n', table, i, table * i)

table = 7;                    % ← the class's chosen number goes here
for i = 1:10
    fprintf('table of %d, row %d\n', table, i)
    % → replace the line above with the real one, live
end
