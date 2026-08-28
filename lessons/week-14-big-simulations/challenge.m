% ==============================================================================
%
%   WEEK 14 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three more jobs for the Monte Carlo method — including the most famous
%   argument in the history of probability.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
% ==============================================================================


%% CHALLENGE 1 · THE MONTY HALL PROBLEM — the puzzle that fooled the professors
% The legend, told properly (take your time — it's a great story):
%
%   It's a TV game show. Three closed doors. Behind one: a CAR. Behind the
%   other two: goats. You pick a door — say door 1. The host, who KNOWS
%   where the car is, opens one of the OTHER doors and always reveals a
%   goat. Then comes the famous offer:
%
%       "Do you want to STAY with your door... or SWITCH to the other one?"
%
%   In 1990, a magazine columnist named Marilyn vos Savant wrote that you
%   should ALWAYS SWITCH — switching wins twice as often. Thousands of
%   readers wrote in to tell her she was wrong. Many were math professors.
%   They were all wrong, and she was right — and today, in this classroom,
%   we settle it in one second with 100,000 games.
%
% ⭐ CLASS VOTES FIRST (before pressing Enter!):
%      Does switching matter?  A) stay is better  B) 50/50  C) switch is better
%
% How the simulation works with only randi and if (no tricks needed):
%   · If your FIRST pick was the car (1 chance in 3) → STAYING wins.
%   · If your first pick was a goat (2 chances in 3) → the host clears away
%     the other goat, so SWITCHING lands on the car every time. Switch wins!
%   So we just count how often the first pick is right.

input('MONTY HALL — class votes stay / 50-50 / switch... then press Enter: ', 's');

games = 100000;
stay_wins = 0;
switch_wins = 0;

for game = 1:games
    car_door = randi([1 3]);           % the car hides at random
    first_pick = randi([1 3]);         % the player guesses at random
    if first_pick == car_door
        stay_wins = stay_wins + 1;     % picked right → staying wins
    else
        switch_wins = switch_wins + 1; % picked wrong → switching wins
    end
end

fprintf('Out of %d games:\n', games)
fprintf('  STAY   won %d times  (%.1f%%)\n', stay_wins, 100 * stay_wins / games)
fprintf('  SWITCH won %d times  (%.1f%%)\n', switch_wins, 100 * switch_wins / games)
disp(' ')
disp('Switching wins about 66% — TWICE as often as staying.')
disp('Your gut said 50/50. The simulation doesn''t care about your gut.')


%% CHALLENGE 2 · PI AGAIN, WITH A WHOLE CIRCLE — same idea, new dartboard
% This morning we rained on a QUARTER circle in a 1x1 square. The method
% doesn't care about the shape — here's a FULL circle of radius 1 inside a
% 2x2 square (corners at -1 and 1). But rand only makes 0-to-1 decimals...
% so we stretch and slide:
%
%     2 * rand - 1     ← rand is 0 to 1... times 2 is 0 to 2...
%                        minus 1 is -1 to 1. Negative raindrops!
%
%   area of circle   pi * 1^2        pi
%   ────────────── = ────────  =    ────    → fraction inside * 4 ≈ pi again
%   area of square    2 * 2           4
%
% ⭐ ASK THE CLASS: same test, x^2 + y^2 <= 1 — why does it still work for
%    negative x? (Squaring wipes out the minus sign. Pythagoras doesn't
%    care which direction the triangle points.)

darts = 200000;
inside = 0;
for dart = 1:darts
    x = 2 * rand - 1;
    y = 2 * rand - 1;
    if x^2 + y^2 <= 1
        inside = inside + 1;
    end
end

fprintf('%d darts at the full-circle board say pi is about %.5f\n', darts, 4 * inside / darts)


%% CHALLENGE 3 · THE STREAK JACKPOT — a bet that LOOKS generous
% New booth at the carnival:
%
%     * STREAK JACKPOT *  Pay $5. Flip a coin 5 times.
%     ALL FIVE heads → win $100!!!
%
% ⭐ CLASS VOTES: deal or no deal? ($100 for $5! It FEELS amazing...)
%
% Expected value by hand first:
%   P(5 heads in a row) = 1/2 * 1/2 * 1/2 * 1/2 * 1/2 = 1/32
%   average payout = $100 * 1/32 = $3.125       ← less than the $5 ticket!
%   expected result: LOSE about $1.88 per ticket. Now let the machine check:

tickets = 200000;
jackpots = 0;
for ticket = 1:tickets
    heads = 0;
    for flip = 1:5
        if randi([0 1]) == 1           % 1 = heads, 0 = tails
            heads = heads + 1;
        end
    end
    if heads == 5                      % all five — the jackpot streak
        jackpots = jackpots + 1;
    end
end

average_payout = 100 * jackpots / tickets;
fprintf('Out of %d tickets, %d hit the jackpot.\n', tickets, jackpots)
fprintf('Average payout per ticket: $%.2f\n', average_payout)
fprintf('Average RESULT per ticket: $%.2f\n', average_payout - 5)
disp(' ')
disp('A giant prize with a tiny probability can still be a terrible bet.')
disp('Expected value sees through the flashing lights. Every time.')
