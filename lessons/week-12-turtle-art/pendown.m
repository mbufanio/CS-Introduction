function pendown()
% PENDOWN  Put the pen back on the paper: moving draws again.
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.pen = true;
end
