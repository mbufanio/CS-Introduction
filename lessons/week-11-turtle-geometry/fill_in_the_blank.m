% ==============================================================================
%
%   WEEK 11 · FILL IN THE BLANK  —  the class writes the code, you type it
%
%   HOW THIS WORKS (teacher):
%     · Every blank looks like this:  ____
%     · Read the task aloud. Kids call out what goes in the blank.
%     · Type their answer — even wrong ones! — and run that task's section
%       (Ctrl+Enter). Turn 60 for the triangle? Type it. Run it. Let the
%       picture object.
%     · Run after EACH task so the class sees their drawing grow.
%       (Running a task with an unfilled blank stops with
%        "Unrecognized function or variable '____'" — that just means
%        you have not gotten there yet.)
%     · Each task calls turtle_start for a fresh canvas. The figure window
%       may hide BEHIND the MATLAB window — check the taskbar.
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1
% In Python you'd have to import a module. In MATLAB, the turtle is just
% nine little function files IN THIS FOLDER — no importing, no installing.
% Which command wakes the turtle up on a fresh canvas?
% (Hint: it's the one file whose name says exactly what it does.)

____()

turtle_speed(0.05)       % watchable speed (this line works once Task 1 is filled)


%% TASK 2
% Which command makes the robot WALK 150 steps, drawing as it goes?

____(150)


%% TASK 3
% Now make the robot spin 90 degrees clockwise — the soldier's right-face.
% (Remember: turning never draws. Only walking draws.)

____(90)
forward(150)             % ...and walk again. What shape do the two lines make?


%% TASK 4 · THE SQUARE
% Time for the floor-square recipe, computer edition. TWO blanks:
% how many times does the corner routine repeat, and how big is each turn?

turtle_start             % wipe the canvas so the square gets a fresh page
turtle_speed(0.05)
for side = 1:____
    forward(120)
    right(____)
end


%% TASK 5 · THE TRIANGLE (careful...)
% An equilateral triangle. Its angles are 60 degrees. So the turtle turns...
% ⭐ Take the vote seriously — if the class says 60, TYPE 60 and run it.
%    The wandering non-triangle on screen is the best teacher in the room.
%    Then ask: what does the turtle actually turn? (The OUTSIDE of the corner.)

turtle_start
turtle_speed(0.05)
for side = 1:3
    forward(150)
    right(____)
end


%% TASK 6 · THE MASTER FORMULA
% A hexagon — but this time, no memorized angle. The turtle's turns around
% ANY polygon total 360 degrees, so each corner's turn is 360 divided by...?
% (Watch the Workspace pane: n and turn each get a box — point at turn's
%  value before the turtle moves. Is it what the class expected?)

turtle_start
turtle_speed(0.05)
n = 6;
turn = 360 / ____
for side = 1:n
    forward(90)
    right(turn)
end


%% TASK 7 · THE CLASS'S POLYGON
% The class picks ANY number of sides from 3 to 12 — majority vote.
% The master formula does the rest. Re-run with a second choice if time!

turtle_start
turtle_speed(0.03)
sides = ____;
for side = 1:sides
    forward(80)
    right(360 / sides)
end

fprintf('A polygon with %d sides — each turn was %g degrees.\n', sides, 360 / sides)
