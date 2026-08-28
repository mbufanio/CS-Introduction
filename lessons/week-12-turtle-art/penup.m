function penup()
% PENUP  Lift the pen: the turtle now moves WITHOUT drawing.
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.pen = false;
end
