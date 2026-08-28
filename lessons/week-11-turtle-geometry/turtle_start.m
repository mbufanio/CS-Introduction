function turtle_start()
% TURTLE_START  Wake up the drawing turtle on a fresh canvas.
%
%   The turtle starts at the center (0, 0), facing right, pen down,
%   drawing in black. Call this at the start of every drawing (it also
%   erases the old one).
%
%   Nothing in this toolbox is magic: it is all ordinary MATLAB, and by
%   week 11 you can read every line of every file in it.

global TURTLE                       % the turtle's memory, shared by all commands

figure(1)                           % open (or reuse) drawing window number 1
clf                                 % wipe it clean
hold on                             % new lines ADD to the picture instead of replacing it
axis equal                          % one step right = one step up (no squashed squares)
axis([-250 250 -250 250])           % the edges of the canvas (make bigger for huge art)
axis off                            % hide the ruler markings — this is art class

TURTLE.x = 0;                       % where the turtle is
TURTLE.y = 0;
TURTLE.heading = 0;                 % which way it faces, in degrees (0 = right, 90 = up)
TURTLE.pen = true;                  % is the pen touching the paper?
TURTLE.color = 'k';                 % 'k' is black ('r' red, 'g' green, 'b' blue...)
TURTLE.width = 2;                   % pen thickness
TURTLE.delay = 0.02;                % seconds to pause per step (see turtle_speed)

% the green dot that shows where the turtle is right now:
TURTLE.marker = plot(0, 0, 'o', 'MarkerSize', 8, ...
    'MarkerFaceColor', [0.2 0.7 0.2], 'MarkerEdgeColor', 'k');
end
