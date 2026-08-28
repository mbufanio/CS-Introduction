function estimate = estimate_pi(drops)
% ESTIMATE_PI  Rain random drops on the 1x1 square and estimate pi.
%
%   estimate_pi(100)  rains 100 drops and hands back the estimate.
%
% The whole Monte Carlo recipe, in one machine:
%   · rain random drops on the 1x1 square             (area of square: 1)
%   · count how many land inside the quarter circle   (area of arc: pi/4)
%   · fraction inside ≈ pi/4  (fraction of DROPS = fraction of AREA!)
%   · so:  fraction * 4  ≈  pi     ← that's the whole algorithm
%
% Everything below is old parts: a function in its own file (week 10),
% a for loop (week 6), an accumulator (week 13), and one Pythagoras test.

inside = 0;                        % the counter (week 13's accumulator)
for i = 1:drops                    % one loop turn = one raindrop
    x = rand;
    y = rand;
    if x^2 + y^2 <= 1              % the Pythagoras test from the demo
        inside = inside + 1;
    end
end
estimate = 4 * inside / drops;     % fraction inside, times 4
end
