function turtle_speed(seconds_per_step)
% TURTLE_SPEED  How long the turtle pauses after each move.
%   turtle_speed(0)     - instant (great for big spirograph art)
%   turtle_speed(0.05)  - watchable
%   turtle_speed(0.3)   - dramatic slow motion
global TURTLE
if isempty(TURTLE)
    error('The turtle is asleep! Run turtle_start first.')
end
TURTLE.delay = seconds_per_step;
end
