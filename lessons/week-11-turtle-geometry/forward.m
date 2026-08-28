function forward(distance)
% FORWARD  Walk the turtle forward, drawing a line if the pen is down.
%
%   forward(100) walks 100 steps in whatever direction the turtle faces.
%   This is the only command that MOVES the turtle - everything else
%   just turns it or changes the pen.
%
%   The math inside is week 11's geometry: the new spot is found from
%   the distance and the heading angle (cosd/sind work in degrees).

global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end

new_x = TURTLE.x + distance * cosd(TURTLE.heading);
new_y = TURTLE.y + distance * sind(TURTLE.heading);

if TURTLE.pen
    line([TURTLE.x, new_x], [TURTLE.y, new_y], ...
        'Color', TURTLE.color, 'LineWidth', TURTLE.width)
end

TURTLE.x = new_x;
TURTLE.y = new_y;
set(TURTLE.marker, 'XData', TURTLE.x, 'YData', TURTLE.y)   % move the green dot
drawnow                                                     % show it NOW, not later
if TURTLE.delay > 0
    pause(TURTLE.delay)
end
end
