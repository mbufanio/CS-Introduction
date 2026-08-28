% ==============================================================================
%
%   WEEK 12  ·  TURTLE ART  —  the payoff
%
%   Last week: geometry. This week: everything the turtle learned, plus
%   color, plus NO speed limit. The math doesn't change — it just gets
%   beautiful.
%
%   TEACHER — HOW TO RUN THIS FILE:
%     · Run the whole file (F5). SECTION 0 IS THE HOOK — run it the moment
%       class starts. Don't explain anything yet. Let them watch art bloom
%       for 30 seconds.
%     · The file pauses in the COMMAND WINDOW between sections (press
%       Enter there). The figure window may open BEHIND the MATLAB
%       window — check the taskbar.
%     · Each section calls turtle_start for a fresh canvas.
%     · turtle_speed(0) = zero seconds of pause per step. The teleport
%       setting. Today runs on it.
%
% ==============================================================================


%% SECTION 0 · THE MASTERPIECE  (run first — explain NOTHING)
% 36 squares, each rotated 10 degrees from the last, painted from a
% six-color string. That's it. That's the whole magic trick.
%
% Say only this: "Everything you're about to see is made of things you
% already know. By the end of class, you'll design your own."

input('SECTION 0 — press Enter to run today''s finale FIRST: ', 's');

turtle_start
turtle_speed(0)                    % no speed limit (explained in Section 2)
colors = 'rgbcmy';                 % six pens in one string (explained in Section 6)

for i = 1:36
    pencolor(colors(mod(i, 6) + 1))
    for side = 1:4
        forward(140)
        right(90)
    end
    right(10)
end


%% SECTION 1 · PAINT  —  pencolor
% One new dial on the robot:
%
%   pencolor('r')        → the ink. One letter: r g b c m y (and k = black,
%                          w = white). Red, green, blue, cyan, magenta, yellow.
%   pencolor([1 0.5 0])  → or MIX your own: [red green blue], each 0 to 1.
%                          Full red + half green + no blue = orange!
%
% ⭐ ASK THE CLASS: same square recipe as last week. What's different
%    about the CODE — and what will be different on SCREEN?

input('SECTION 1 — press Enter for painted squares: ', 's');

turtle_start
turtle_speed(0.05)
pencolor('r')
for side = 1:4
    forward(120)
    right(90)
end

right(45)                          % tilt, and mix a custom paint for square 2:
pencolor([1 0.5 0])                % ← home-made orange, from the RGB sliders
for side = 1:4
    forward(120)
    right(90)
end


%% SECTION 2 · TURTLE_SPEED(0) — REMOVE THE SPEED LIMIT
% turtle_speed sets how many SECONDS the turtle pauses after each step.
% 0.3 is dramatic slow motion. 0.05 is watchable. And then there's 0.
% Zero doesn't mean "stopped" — it means ZERO pause. The turtle teleports.
%
% ⭐ ASK THE CLASS: this is a 36-sided polygon — last week that took
%    forever. Count how long it takes at speed 0. Ready?

input('SECTION 2 — press Enter to remove the speed limit: ', 's');

turtle_start
turtle_speed(0)                    % ← the secret setting
pencolor('b')
for side = 1:36
    forward(20)
    right(10)                      % 360 / 36 = 10 — the master formula lives on
end


%% SECTION 3 · THE SPIRAL  —  forward(i) changes everything
% Last week every side was the same:  forward(100), forward(100), ...
% Watch what happens when the side length is THE LOOP VARIABLE:
%
%   side lengths:  1, 2, 3, 4, 5, ...  ← an arithmetic sequence,
%                                         drawn in space
%
% Each lap of the loop, the side grows one step longer. That's it.
% That's a spiral.
%
% ⭐ ASK THE CLASS: predict the shape before you press Enter.

input('SECTION 3 — press Enter for forward(i): ', 's');

turtle_start
turtle_speed(0)
pencolor('c')
for i = 1:200
    forward(i)                     % ← the whole trick: i, not a fixed number
    right(90)
end

fprintf('\nThe side lengths were 1, 2, 3, ... 200 — an arithmetic sequence.\n')
fprintf('Same turn as a square (90). Growing sides. Result: a square spiral.\n')


%% SECTION 4 · THE 91-DEGREE GASP
% ⭐ ASK THE CLASS: same spiral, but the turn changes from 90 to 91.
%    ONE degree different. Vote: (a) looks identical  (b) slightly crooked
%    (c) completely different picture.

input('SECTION 4 — press Enter to change ONE degree: ', 's');

turtle_start
turtle_speed(0)
pencolor('m')
for i = 1:150
    forward(i)
    right(91)                      % 91, not 90. That's the only change.
end

fprintf('\nOne degree. The corners over-rotate a tiny bit every lap, and the\n')
fprintf('whole picture twists into a whirlpool. Tiny angle change, huge art.\n')


%% SECTION 5 · THE SPIROGRAPH PATTERN
% The recipe behind Section 0:
%
%   1. draw a shape          (a square — last week's recipe)
%   2. turn a LITTLE         (10 degrees)
%   3. repeat                (36 times)
%
% ⭐ ASK THE CLASS: why exactly 36 repeats? What is 36 × 10?
%    (360 — the rotations tile one full circle, so the pattern closes
%    PERFECTLY, ending exactly where it began. Rotational symmetry!)

input('SECTION 5 — press Enter for the spirograph skeleton (one color): ', 's');

turtle_start
turtle_speed(0)
pencolor('k')
for i = 1:36                       % 36 repeats...
    for side = 1:4                 % ...of last week's square...
        forward(140)
        right(90)
    end
    right(10)                      % ...each tilted 10 more degrees. 36 × 10 = 360.
end


%% SECTION 6 · MOD PICKS THE PAINT  —  colors(mod(i, 6) + 1)
% Six colors in one string, in a variable — and we grab one BY POSITION,
% exactly like week 8's indexing (word(1) was the first letter):
%
%   colors(1) → 'r' red       colors(4) → 'c' cyan
%   colors(2) → 'g' green     colors(5) → 'm' magenta
%   colors(3) → 'b' blue      colors(6) → 'y' yellow
%
% But i keeps counting: 7, 8, 9, ... and there IS no colors(7)!
% Week 9 to the rescue: mod() wraps numbers around, like Z wrapping to A.
% mod(i, 6) cycles 1 2 3 4 5 0 forever — and the + 1 lifts that onto
% MATLAB's 1-to-6 shelf (MATLAB counts from 1, remember!).
% The Command Window shows the cycle first; then we repaint Section 5.
% (Workspace check: colors sits there as a 1×6 char — one string, six pens.)

input('SECTION 6 — press Enter to see mod() pick the colors: ', 's');

colors = 'rgbcmy';
for i = 1:9
    fprintf('shape %d  →  mod(i, 6) + 1 = %d  →  colors(%d) = %s\n', ...
        i, mod(i, 6) + 1, mod(i, 6) + 1, colors(mod(i, 6) + 1))
end
fprintf('...the mod() from cipher week is now painting: it cycles all six pens forever.\n')

input('           now press Enter to run the spirograph IN COLOR: ', 's');

turtle_start
turtle_speed(0)
for i = 1:36
    pencolor(colors(mod(i, 6) + 1))   % ← the only new line vs Section 5
    for side = 1:4
        forward(140)
        right(90)
    end
    right(10)
end

% That's Section 0, fully explained. The magic trick is theirs now.


%% SECTION 7 · CLASS DESIGN MOMENT  —  ⭐ TWEAK THESE ⭐
% The class votes, you edit the dials below, and re-run JUST THIS SECTION
% (click inside it, Ctrl+Enter — no need to replay the whole file).
% Capital letters = a signal to humans: these are the dials.
%
%   SIDES    3 = triangles, 4 = squares, 5 = pentagons, 6 = hexagons...
%            (3–6 fit the canvas at this SIZE; going higher? shrink SIZE)
%   TILT     angles that divide 360 close neatly (5, 8, 9, 10, 12, 15,
%            20, 24, 30...); angles that DON'T are beautifully weird —
%            the pattern keeps walking around until the math catches up
%   SIZE     how big each shape is (80–140 fits the canvas well)
%   COLORS   any mix of  r g b c m y k  — as many letters as you like,
%            in the order the class votes them
%
% 72 repeats is enough for most designs to close (or nearly).

input('SECTION 7 — set the dials with the class, then press Enter: ', 's');

SIDES = 4;                         % ← TWEAK THIS
TILT = 10;                         % ← TWEAK THIS
SIZE = 130;                        % ← TWEAK THIS
COLORS = 'rgbcmy';                 % ← AND THIS

turtle_start
turtle_speed(0)
for i = 1:72
    pencolor(COLORS(mod(i, length(COLORS)) + 1))   % length() = week 8, still working
    for side = 1:SIDES
        forward(SIZE)
        right(360 / SIDES)
    end
    right(TILT)
end

fprintf('\nDesigned by this class. Signed, the turtle.\n')
fprintf('(Keep your handout design — next week we run student spirographs!)\n')
