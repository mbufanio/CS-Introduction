function left(degrees)
% LEFT  Turn the turtle counter-clockwise by this many degrees.
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.heading = TURTLE.heading + degrees;   % counter-clockwise = heading goes UP
end
