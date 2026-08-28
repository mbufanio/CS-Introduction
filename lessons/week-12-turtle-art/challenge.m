% ==============================================================================
%
%   WEEK 12 · CHALLENGE  —  the art wing
%
%   Four showpieces. Run the whole file (F5): it pauses in the COMMAND
%   WINDOW between pieces (press Enter) and calls turtle_start for a fresh
%   canvas before each one. CHALLENGE 1 also works as an alternate class
%   hook — it's the rainbow spirograph, circle edition.
%   The figure window may hide BEHIND the MATLAB window — check the taskbar.
%
% ==============================================================================


%% CHALLENGE 1 · RAINBOW SPIROGRAPH — CIRCLE EDITION
% There's no circle command in the toolbox — but week 11's finale taught
% us the secret: a circle is just a polygon that never skips leg day.
% Each "circle" below is a 20-gon in a trench coat (20 × 18 = 360).
% Same skeleton as the demo: draw, tilt 10, repeat 36 (36 × 10 = 360).

input('CHALLENGE 1 — press Enter for the circle spirograph: ', 's');

turtle_start
turtle_speed(0)
colors = 'rgbcmy';

for i = 1:36
    pencolor(colors(mod(i, 6) + 1))
    for side = 1:20                % ← one "circle": 20 sides, 18° turns
        forward(30)
        right(18)
    end
    right(10)
end


%% CHALLENGE 2 · THE DRUNK TURTLE — random-walk art
% Week 5 crashes the art party: before every step, the turtle turns a
% RANDOM amount — 0, 90, 180, or 270 — then walks 15 steps. City-block
% wandering, different masterpiece every run.
% ⭐ Re-run it two or three times: "same code, different painting. Why?"
%    (If it wanders off the canvas edge, that's part of its charm. Re-run.)

input('CHALLENGE 2 — press Enter to release the drunk turtle: ', 's');

turtle_start
turtle_speed(0)
for step = 1:250
    pencolor(colors(mod(step, 6) + 1))
    right(90 * randi([0 3]))       % randi([0 3]) picks 0,1,2,3 → 0°, 90°, 180°, 270°
    forward(15)
end


%% CHALLENGE 3 · STAR-BURST GENERATOR — random colors
% Out 160 steps, back 160 steps, tilt 10, repeat — 36 colored rays.
% randi picks a random POSITION in the color string (week 8 indexing,
% rolled like a die), so every burst has its own mood.

input('CHALLENGE 3 — press Enter for the star-burst: ', 's');

turtle_start
turtle_speed(0)
for ray = 1:36
    pencolor(colors(randi([1 6])))
    forward(160)                   % shoot a ray out...
    backward(160)                  % ...and reel it back in
    right(10)                      % 36 rays × 10 degrees = full circle
end


%% CHALLENGE 4 · THE ART CONTEST — change ONE variable
% Four presets, one engine. Set PRESET to 1, 2, 3, or 4 and re-run this
% section. Hold a class vote for the winner — artist statements optional.
%
%   1 · GALAXY       squares tilting 11 (11 doesn't divide 360 — it walks
%                    around and around until the math catches up. Lush.)
%   2 · FLOWER       hexagons tilting 20 — closes neatly in 18 repeats
%   3 · SUPERNOVA    STARS (turn 144!) tilting 24 — pointy chaos
%   4 · HURRICANE    the 91-degree spiral in full color — the gasp, framed

input('CHALLENGE 4 — set PRESET (1–4) in the code, press Enter to draw: ', 's');

PRESET = 1;                        % ← THE dial. Change it, re-run, vote.

if PRESET == 1                     % GALAXY
    shape_sides = 4;
    shape_turn = 90;
    tilt = 11;
    size_steps = 120;
    repeats = 90;
elseif PRESET == 2                 % FLOWER
    shape_sides = 6;
    shape_turn = 60;
    tilt = 20;
    size_steps = 100;
    repeats = 18;
elseif PRESET == 3                 % SUPERNOVA
    shape_sides = 5;
    shape_turn = 144;              % the star turn — two full spins per star
    tilt = 24;
    size_steps = 150;
    repeats = 15;
else                               % HURRICANE (preset 4 — or any other number)
    shape_sides = 1;               % "shape" is just one growing line...
    shape_turn = 91;               % ...turning 91: the whirlpool spiral
    tilt = 0;                      % (unused — the hurricane has its own loop)
    size_steps = 0;
    repeats = 0;
end

turtle_start
turtle_speed(0)

if PRESET == 4
    for i = 1:160
        pencolor(colors(mod(i, 6) + 1))
        forward(i)
        right(shape_turn)
    end
else
    for i = 1:repeats
        pencolor(colors(mod(i, 6) + 1))
        for side = 1:shape_sides
            forward(size_steps)
            right(shape_turn)
        end
        right(tilt)
    end
end

fprintf('\nEntry number %d has been submitted to the class art contest.\n', PRESET)
fprintf('Change PRESET and re-run to see the competition.\n')
