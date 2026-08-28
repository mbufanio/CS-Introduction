function pencolor(c)
% PENCOLOR  Change the pen's color.
%   pencolor('r')          - one-letter colors: r g b c m y k w
%   pencolor([1 0.5 0])    - or mix your own: [red green blue], each 0 to 1
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.color = c;
end
