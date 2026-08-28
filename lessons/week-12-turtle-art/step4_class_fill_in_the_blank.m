% ==============================================================================
%
%   WEEK 12 · FILL IN THE BLANK  —  the class writes the code, you type it
%
%   HOW THIS WORKS (teacher):
%     · Every blank looks like this:  ____
%     · Read the task aloud. Kids call out what goes in the blank.
%     · Type their answer — even wrong ones! — and run that task's section
%       (Ctrl+Enter). A made-up color letter doesn't complain right away —
%       it errors the moment the turtle next DRAWS. Read the red text
%       together, fix it, celebrate. Errors are clues.
%     · Run after EACH task so the class sees their art grow.
%       (Running a task with an unfilled blank stops with
%        "Unrecognized function or variable '____'" — that just means
%        you have not gotten there yet.)
%     · TASK 6 has NO blank — you type a line live while the class supplies
%       the wraparound function. Instructions are at the task.
%     · The figure window may hide BEHIND the MATLAB window — taskbar!
%
%   Completed version: step2_teacher_answer_key.md
%
% ==============================================================================


%% TASK 1
% Which command chooses the turtle's INK color?
% One letter picks a pen:  'r' 'g' 'b' 'c' 'm' 'y'  (and 'k' = black).
% What does the class want? Their call. Then a test stroke to see the ink.

turtle_start
turtle_speed(0.05)
____('r')
forward(100)             % ← the test stroke. What color is the line?


%% TASK 2
% turtle_speed is a pause dial: how many SECONDS the turtle rests after
% each step. Which number on the dial means NO pause at all — the
% teleport setting? (Careful — it's not 1...)

turtle_speed(____)
backward(100)            % zip! back where it started, instantly


%% TASK 3 · THE SPIRAL
% A square spiral needs each side a little LONGER than the last.
% A fixed number can't do that... but something in this loop grows
% every single lap. What goes in the blank?

turtle_start
turtle_speed(0)
pencolor('b')
for i = 1:100
    forward(____)
    right(90)
end


%% TASK 4 · CLOSE THE PATTERN
% A spirograph of hexagons, tilting 12 degrees after each one.
% How many repeats until the tilts add up to one full 360-degree spin
% and the pattern closes perfectly? ⭐ Make them do the math out loud.

turtle_start
turtle_speed(0)
pencolor('k')
for i = 1:____
    for side = 1:6
        forward(90)
        right(60)
    end
    right(12)
end


%% TASK 5 · THE PAINT CYCLE
% Six colors in the string — but i counts way past 6, and there is no
% colors(7)! What number inside the mod() makes the count wrap around
% all six pens forever? (Cipher-week flashback: mod wraps, like Z
% wrapping to A. The + 1 keeps us on MATLAB's 1-to-6 shelf.)
% Workspace check: colors appears as a 1×6 char — one string, six pens.

colors = 'rgbcmy';

turtle_start
turtle_speed(0)
for i = 1:36
    pencolor(colors(mod(i, ____) + 1))
    for side = 1:4
        forward(120)
        right(90)
    end
    right(10)
end


%% TASK 6 · TYPE-IT-LIVE — COLOR THE SPIRAL
% This whirlpool runs, but it's stuck in black. TEACHER: type ONE line at
% the marked spot, in front of the class:
%
%         pencolor(colors(???(i, 6) + 1))
%
% ...but DON'T type the '???' — the class supplies the FUNCTION that wraps
% numbers around. (It's the one that painted Task 5 and powered the cipher.
% And when they've named it, ask: why the + 1? Week 8 veterans know —
% MATLAB counts from 1.)

turtle_start
turtle_speed(0)
pencolor('k')
for i = 1:150
    % ← type the new line HERE, above forward, inside the loop
    forward(i)
    right(91)
end


%% TASK 7 · THE CLASS DESIGN
% Two dials, class vote: how many sides for the shape, and how many degrees
% of tilt between shapes? (Tilts that divide 360 close neatly — 8, 9, 10,
% 12, 15, 20... Tilts that don't are gloriously weird — the pattern keeps
% walking until the math catches up. Either way: art.)
% Watch the Workspace: sides and tilt get boxes the moment you run it.

turtle_start
turtle_speed(0)

sides = ____;
tilt = ____;

for i = 1:72
    pencolor(colors(mod(i, 6) + 1))
    for side = 1:sides
        forward(90)
        right(360 / sides)
    end
    right(tilt)
end

fprintf('Gallery opening: one original artwork, by this class.\n')
