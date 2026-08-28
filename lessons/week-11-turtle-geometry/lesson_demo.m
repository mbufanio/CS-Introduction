% ==============================================================================
%
%   WEEK 11  ·  TURTLE GEOMETRY  —  meet the drawing robot
%
%   The class just "programmed" the teacher-robot to walk a square.
%   Now they meet a robot that lives in MATLAB, obeys the same two
%   commands — walk and turn — and DRAWS everywhere it walks.
%
%   THERE IS NO MAGIC TO INSTALL: the turtle is nine little function
%   files sitting right here in this folder (turtle_start.m, forward.m,
%   right.m, ...). Each one is ordinary week-10 MATLAB — and the class
%   can READ them. (See the last section of this file.)
%
%   TEACHER — HOW TO RUN THIS FILE:
%     · Run the whole file (F5): it pauses in the COMMAND WINDOW between
%       sections — click there and press Enter when the class is ready.
%       (Or run one %% section at a time with Ctrl+Enter, as usual.)
%     · The figure window may open BEHIND the MATLAB window — check the
%       taskbar! Best setup: MATLAB on one half of the smartboard, the
%       turtle's figure window on the other half.
%     · Each new shape calls turtle_start, which wipes the canvas clean.
%     · turtle_speed(0.05) = watchable. turtle_speed(0) = instant.
%
% ==============================================================================


%% SECTION 1 · MEET THE ROBOT
% The turtle wakes up in the CENTER of the canvas, facing RIGHT (east),
% with its pen touching the paper. The green dot IS the turtle.
%
%   forward(100)   means:  "walk 100 steps in the direction you face"
%
% ⭐ ASK THE CLASS: when I press Enter, the robot walks 100 steps.
%    What will appear in the figure window?

input('SECTION 1 — press Enter to wake the turtle (window may hide BEHIND MATLAB): ', 's');

turtle_start                 % fresh canvas; turtle at center, facing right
turtle_speed(0.05)           % watchable speed (0 would be instant)
forward(100)                 % ← the first line your class ever draws. Applause moment.


%% SECTION 2 · THE TURTLE TURNS, *THEN* WALKS
% right(90) does NOT move the turtle. It spins it in place, like a
% soldier doing a right-face. Turning never draws — only walking draws.
%
% Also in the toolbox:  left(degrees)  and  backward(steps).
%
% ⭐ ASK THE CLASS: the turtle is facing right. After right(90), which way
%    does it face? So which way will the next forward(100) walk? (Down!)

input('SECTION 2 — press Enter to turn, then walk (same canvas): ', 's');

right(90)                    % spin 90 degrees clockwise — no walking yet!
forward(100)                 % NOW it walks, in the new direction


%% SECTION 3 · A SQUARE, THE LONG WAY
% The class's floor-square recipe was: 4 × (forward, turn right 90).
% Here it is written out the LONG way — every single command.
%
% ⭐ ASK THE CLASS (after it draws): look at this code. What do you notice?
%    The same two lines, four times in a row... didn't we learn a tool
%    for exactly this back in week 6?

input('SECTION 3 — press Enter to draw a square the LONG way: ', 's');

turtle_start                 % wipe the canvas; turtle back to center, facing east
turtle_speed(0.05)
forward(100)
right(90)
forward(100)
right(90)
forward(100)
right(90)
forward(100)
right(90)                    % last turn: the turtle ends FACING THE WAY IT STARTED


%% SECTION 4 · A SQUARE, THE SMART WAY  (week 6, meet week 11)
% Eight lines become four. Same square, same robot — but now the NUMBER 4
% is visible in the code: "do this corner routine 4 times."
%
% ⭐ ASK THE CLASS: what would happen if I changed 1:4 to 1:3?
%    (Hold that thought — it's about to go wrong in the best way.)

input('SECTION 4 — press Enter for the for-loop square: ', 's');

turtle_start
turtle_speed(0.05)
for side = 1:4
    forward(100)
    right(90)
end


%% SECTION 5 · THE TRIANGLE TRAP
% ⭐ ASK THE CLASS: let's draw an equilateral triangle. Every angle in it
%    is 60 degrees — the class has known that for years. So the turtle
%    should turn 60 at each corner... right? Vote: will this draw a triangle?
%
% We run their plan EXACTLY as voted. (Spoiler: computers are literal.)

input('SECTION 5 — press Enter to run the class''s triangle plan (turn 60): ', 's');

turtle_start
turtle_speed(0.05)
for side = 1:3
    forward(150)
    right(60)                % ...the class's idea. Watch what actually happens.
end

% That is NOT a triangle — it's half a hexagon, wandering off.
%
% THE AHA: 60 degrees is the angle INSIDE the corner (the interior angle).
% But the turtle doesn't stand inside the corner — it walks THROUGH it,
% and turns through the OUTSIDE of the corner:
%
%          /
%         / ) ← interior angle = 60   (inside the shape)
%   _____/                             the turtle turns the rest of the
%         `--→ exterior angle = 180 − 60 = 120   ← what the turtle turns!

input('SECTION 5, part 2 — press Enter for the FIX (turn 120): ', 's');

turtle_start
turtle_speed(0.05)
for side = 1:3
    forward(150)
    right(120)               % exterior angle: 180 − 60. THAT'S a triangle.
end

% ⭐ ASK THE CLASS: the turtle made 3 turns of 120. What do they add up to?
%    (360 — one full spin. Remember that number. It's about to run the show.)


%% SECTION 6 · THE MASTER FORMULA:  turn = 360 / n
% Walk around ANY polygon and you end up back where you started, facing the
% way you started. So your turns ALWAYS total exactly 360 degrees — one full
% spin — no matter the shape. Split 360 evenly among n corners:
%
%       turn at each corner = 360 / n      ← draws ANY regular polygon
%       interior angle      = 180 − 360/n  ← check it against what you know!
%
% The Command Window prints the math while the turtle draws the family
% portrait. (The formula gets its own Workspace moment in the
% fill-in-the-blank file, when n and turn become variables.)

input('SECTION 6 — press Enter for pentagon, hexagon, decagon: ', 's');

fprintf('\nTHE MASTER FORMULA:  turn = 360/n      interior = 180 - 360/n\n')
fprintf('  n = 3   →  turn %g  →  interior %g    ← triangle: checks out!\n', 360/3, 180 - 360/3)
fprintf('  n = 4   →  turn %g   →  interior %g    ← square: checks out!\n', 360/4, 180 - 360/4)
fprintf('  n = 5   →  turn %g   →  interior %g\n', 360/5, 180 - 360/5)
fprintf('  n = 6   →  turn %g   →  interior %g   ← hexagon: checks out!\n', 360/6, 180 - 360/6)
fprintf('  n = 10  →  turn %g   →  interior %g\n\n', 360/10, 180 - 360/10)

turtle_start
turtle_speed(0.03)           % a touch faster — 21 corners coming up

penup                        % pen UP: the turtle can travel without drawing
backward(180)                % scoot left to make room for the whole family
pendown                      % pen DOWN: back to drawing

for side = 1:5               % PENTAGON — turn 360/5 = 72
    forward(70)
    right(72)
end

% ⭐ ASK THE CLASS: the pentagon is done and the turtle faces east again —
%    exactly how it started. It HAS to: it turned 5 × 72 = 360. Every time.

penup
forward(150)                 % hop right (invisibly) to the next easel
pendown

for side = 1:6               % HEXAGON — turn 360/6 = 60
    forward(55)
    right(60)
end

penup
forward(150)
pendown

for side = 1:10              % DECAGON — turn 360/10 = 36
    forward(36)
    right(36)
end


%% SECTION 7 · GRAND FINALE — WHAT IF n IS HUGE?
% ⭐ ASK THE CLASS: triangle, square, pentagon, hexagon, decagon... the more
%    sides, the rounder it looks. What if a polygon had SIXTY sides?
%    Predict, then press Enter.

input('SECTION 7 — press Enter for the 60-sided polygon: ', 's');

turtle_start
turtle_speed(0.01)           % crank the dial — 60 corners is a lot of corners
for side = 1:60
    forward(10)
    right(6)                 % 360 / 60 = 6 degrees per corner
end

fprintf('\nA 60-sided polygon: 60 tiny sides, 60 tiny 6-degree turns...\n')
fprintf('At some point a polygon stops looking like a polygon.\n')
fprintf('A circle is just a polygon that never skips leg day.\n\n')
fprintf('(The figure window stays open — close all wipes it when you''re done.)\n')


%% SECTION 8 · IF TIME — READ THE ROBOT'S MIND
% The best-kept secret of turtle week: there is NO turtle. Just nine tiny
% function files in this folder, written in the MATLAB you already speak.
% The command below prints forward.m right in the Command Window.
%
% ⭐ READ IT WITH THE CLASS. What do they recognize?
%    · function ... end — a week-10 machine, living in its own file
%    · an if — week 4 (is the pen down? is the turtle even awake?)
%    · cosd/sind — the geometry: how far east and how far north is
%      "100 steps at this angle"? (The turtle's memory lives in a
%      variable called TURTLE — every command shares it.)
%    Nothing in the toolbox is magic. It's all yours now.

input('SECTION 8 (if time) — press Enter to read forward.m together: ', 's');

type forward.m
