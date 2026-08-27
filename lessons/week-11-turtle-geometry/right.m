function right(degrees)
% RIGHT  Turn the turtle clockwise by this many degrees. Turning never draws.
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.heading = TURTLE.heading - degrees;   % clockwise = heading goes DOWN
end
