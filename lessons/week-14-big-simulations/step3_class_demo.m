% ==============================================================================
%
%   WEEK 14  ·  BIG SIMULATIONS  —  the Monte Carlo method
%
%   Last week we rolled dice 10,000 times and watched the results crawl
%   toward the theory. Today we aim that same trick at two BIG questions:
%
%     ACT ONE: can falling RAIN measure a circle?   (it computes pi. really.)
%     ACT TWO: should you ever play a casino game?  (bring a calculator.)
%
%   Answering hard questions with a mountain of random tries is called the
%   MONTE CARLO METHOD — named after a famous casino town. By the end of
%   class, that name will make perfect sense.
%
%   TEACHER: run one %% section at a time (Ctrl+Enter). Section 4 opens a
%   figure window — if it seems missing, it's hiding behind MATLAB
%   (check the taskbar). estimate_pi.m must sit in this same folder.
%
% ==============================================================================


%% SECTION 1 · A NEW FLAVOR OF RANDOM — rand
% randi([1 6]) picks WHOLE numbers: 1, 2, 3, 4, 5, or 6. Six choices.
% rand picks a DECIMAL between 0 and 1... ANY decimal. No inputs needed —
% the whole 0-to-1 range is built in.
% 0.5?  Possible.  0.0721?  Possible.  0.999814?  Possible.
% Infinitely many outcomes — that's what we need for raindrops.
%
% ⭐ ASK THE CLASS: could rand ever hand us 2?   (never — out of range)
%                  could it hand us 0.5?        (absolutely)

disp('Three rolls with randi([1 6]):')
disp(randi([1 6]))
disp(randi([1 6]))
disp(randi([1 6]))
disp(' ')
disp('Three decimals with rand:')
disp(rand)
disp(rand)
disp(rand)


%% SECTION 2 · A RAINDROP IS JUST TWO RANDOM DECIMALS
% Picture a 1-meter-by-1-meter square of sidewalk. A raindrop lands on it
% somewhere — completely at random. TWO numbers say exactly where:
%   x = how far RIGHT it landed (0 to 1)
%   y = how far UP it landed    (0 to 1)
%
% ⭐ ASK THE CLASS: run this section a few times (Ctrl+Enter, Ctrl+Enter...).
%    Will we ever see the same raindrop twice? (with infinite decimals? no.)
%    Watch drop_x and drop_y appear as rows in the Workspace — and change
%    with every run. That's the rain, falling in the computer's memory.

drop_x = rand;
drop_y = rand;
fprintf('A raindrop just landed at (%g, %g)\n', drop_x, drop_y)


%% SECTION 3 · THE CIRCLE TEST  —  ⭐ PYTHAGORAS CAMEO ⭐
% Now draw a quarter circle inside the square: its center is the corner
% (0, 0), its radius is 1, so the arc curves from (0, 1) across to (1, 0).
%
% Question: did our raindrop land INSIDE the arc, or OUTSIDE it?
% "Inside" means: LESS THAN 1 AWAY from the corner (0, 0).
%
% How far is a point (x, y) from the corner? Draw the right triangle:
% x across, y up, and the distance is the diagonal. You know this one:
%
%        a^2 + b^2 = c^2         ← PYTHAGORAS. In math class since forever.
%    x^2 + y^2 = distance^2      ← the same theorem, wearing MATLAB clothes.
%
% MATLAB's sqrt() finds the square root, so the classic 3-4-5 triangle:

fprintf('Distance across a 3-by-4 right triangle: %g\n', sqrt(3^2 + 4^2))
% → 5. Pythagoras, confirmed by machine, 2500 years later.

% But here's a programmer's shortcut: to ask "is the distance <= 1?" we can
% ask "is the distance SQUARED <= 1?" — same answer, and we skip the square
% root entirely. So the whole inside-the-circle test is one line:
%
%     x^2 + y^2 <= 1
%
% ⭐ ASK THE CLASS: is the point (0.5, 0.5) inside?  Vote... then:

fprintf('(0.5, 0.5):  x^2 + y^2 = %g\n', 0.5^2 + 0.5^2)   % → 0.5, and 0.5 <= 1 → INSIDE

% ⭐ ASK THE CLASS: is (0.9, 0.9) inside? (0.9 is less than 1... right?) Vote!

fprintf('(0.9, 0.9):  x^2 + y^2 = %g\n', 0.9^2 + 0.9^2)   % → 1.62 ... 1.62 > 1 → OUTSIDE!

% Gut says inside. Pythagoras says the CORNER of the square is farther from
% (0,0) than the arc is — that's exactly the sliver of square that's outside
% the circle. Guts are bad at geometry. That's why we compute.


%% SECTION 4 · WATCH THE RAIN FALL  —  the storm, plotted LIVE
% This is why we code in MATLAB: we don't have to imagine the rain.
% 2,000 raindrops, plotted as they land — BLUE if the Pythagoras test says
% inside, RED if outside. We never draw a circle. Watch one appear anyway.
%
% ⭐ ASK THE CLASS before running: what shape will the blue drops make?
%    (Then run it and let the smartboard answer. Don't rush this one.)

figure(1); clf; hold on; axis equal; axis([0 1 0 1])
inside = 0;
for i = 1:2000
    x = rand; y = rand;
    if x^2 + y^2 <= 1
        inside = inside + 1;            % the counter — watch its box climb
        plot(x, y, 'b.')                % blue: inside the arc
    else
        plot(x, y, 'r.')                % red: the corner sliver
    end
    if mod(i, 200) == 0
        drawnow                         % refresh the picture every 200 drops
    end
end
fprintf('pi is about %g\n', 4 * inside / i)

% The quarter circle EMERGED from pure randomness. Nobody drew it.
% And the counter did the math: fraction of drops = fraction of area,
% so 4 * inside / drops ≈ pi. (Area of arc: pi/4. Area of square: 1.)


%% SECTION 5 · THE BIG STORMS — 100 → 10,000 → 1,000,000 raindrops
% The rainstorm now lives in its own machine: estimate_pi.m, a function
% file sitting right next to this script (functions — week 10: one machine
% per file). Order a storm of any size: estimate_pi(100) rains 100 drops
% and hands back the estimate.
%
% No plotting this time — plotting a million dots would melt the projector.
% For the big runs we just count.
%
% ⭐ ASK THE CLASS: before each run — closer to pi or farther than the last?
%    (Usually closer with more drops... but 100 drops can get lucky. Week 13!)

fprintf('    100 raindrops say pi is about %.5f\n', estimate_pi(100))
fprintf('  10000 raindrops say pi is about %.5f\n', estimate_pi(10000))

disp('Now ONE MILLION raindrops... (a second of silence, please)')
fprintf('1000000 raindrops say pi is about %.5f\n', estimate_pi(1000000))

fprintf('         the real pi starts with %.5f\n', pi)   % MATLAB knows pi by name
disp(' ')
disp('We just measured a circle USING NO CIRCLES. Only rain.')

% ⭐ ASK THE CLASS: where was the circle in our code? (There wasn't one!
%    No circle formula, no protractor — just random points and ONE
%    Pythagoras test. That's the Monte Carlo method: when a question is
%    hard, rain on it.)


%% SECTION 6 · ACT TWO: THE CASINO  —  the 'Lucky Die' game
% A carnival booth appears in the cafeteria. The sign says:
%
%     * LUCKY DIE *   Pay $2 to play. Roll ONE die.
%     Win $1 for every dot!  (roll a 3 → win $3, roll a 6 → win $6!)
%
% ⭐ CLASS VOTES: is this game fair, a scam, or secretly great for players?
%
% Don't simulate yet — MATH first. On average, what does one roll pay out?
% Each face comes up 1/6 of the time, so the average payout is:

average_payout = (1 + 2 + 3 + 4 + 5 + 6) / 6;
fprintf('Average payout per roll: $%.2f\n', average_payout)

% → $3.50. That number is called the EXPECTED VALUE: each outcome times its
% probability, all added up. It's what one game is WORTH, on average.
%
% ⭐ ASK THE CLASS: wait. The ticket costs $2... and the average win is
%    $3.50?! Who's getting rich here?  (THE PLAYERS. +$1.50 per game.
%    This booth goes bankrupt by lunch.)
%
% No real casino would ever run that game. Watch them "fix" it — they only
% have to change ONE number:

ticket_price = 4;
net_per_game = average_payout - ticket_price;
fprintf('New ticket price: $%d\n', ticket_price)
fprintf('Player''s average result per game: $%.2f\n', net_per_game)

% → $-0.50. Lose fifty cents per game, ON AVERAGE. Not every game — you
% might win $2 on your next roll! But the AVERAGE is rigged, and averages
% are the only thing a casino cares about.
% (Notice fprintf's %.2f: WE choose how many decimals money shows — the
%  formatting machine from week 3, still earning its keep.)


%% SECTION 7 · DOES THE MACHINE AGREE? — 100,000 games in one second
% The hand math says $3.50 average payout and -$0.50 per game. Let's make
% the computer play Lucky Die 100,000 times and check.
%
% ⭐ ASK THE CLASS: predict the average payout the simulation will find.
%    (And keep one eye on total_winnings in the Workspace — after the run,
%     that box holds a third of a million dollars in imaginary dots.)

plays = 100000;
ticket_price = 4;
total_winnings = 0;                        % accumulator, one more time
for play = 1:plays
    roll = randi([1 6]);                   % roll the lucky die
    total_winnings = total_winnings + roll;    % collect $1 per dot
end

average = total_winnings / plays;
bank = total_winnings - ticket_price * plays;  % winnings minus all the tickets

fprintf('After %d games of Lucky Die at $%d a ticket:\n', plays, ticket_price)
fprintf('  average payout per game:  $%.4f\n', average)                 % ≈ 3.50 — the math!
fprintf('  average net per game:     $%.4f\n', average - ticket_price)  % ≈ -0.50
fprintf('  the players'' total bank:  $%d\n', bank)                     % ≈ -$50,000 (!!)

% The hand math and the machine AGREE. Fifty cents sounds like nothing —
% and 100,000 games later it's fifty thousand dollars.


%% SECTION 8 · GRAND FINALE

disp(repmat('*', 1, 46))
disp('*                                            *')
disp('*   A casino is a building built on a        *')
disp('*   half-dollar, repeated a billion times.   *')
disp('*                                            *')
disp(repmat('*', 1, 46))
disp(' ')
disp('Today randomness measured a circle and audited a casino.')
disp('Next week: no new commands. YOU design a game — we build it.')
