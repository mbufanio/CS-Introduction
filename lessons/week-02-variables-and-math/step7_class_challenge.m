% ==============================================================================
%
%   WEEK 2 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three showpieces, all built from today's tools: boxes, operators, disp.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
%   (You'll see disp(['text ', num2str(x)]) below — the [ ] glue trick that
%    puts words and numbers on one line. Full lesson next week; today it's
%    just set dressing.)
%
% ==============================================================================


%% CHALLENGE 1 · YOUR AGE IN SECONDS
% A calculator you build from boxes. Swap in a volunteer's real age and
% re-run — then try YOUR age and let them gasp at the difference.
% ⭐ Watch the Workspace fill up, box by box, as the section runs.

age_years = 13;                         % ← change to a volunteer's age
days = age_years * 365;                 % (close enough — leap years, shhh)
hours = days * 24;
minutes = hours * 60;
seconds = minutes * 60;

disp(['A ', num2str(age_years), ' year old has been alive for roughly:'])
disp(['  days:    ', num2str(days)])
disp(['  hours:   ', num2str(hours)])
disp(['  minutes: ', num2str(minutes)])
disp(['  seconds: ', num2str(seconds)])
disp(['...and spent about ', num2str(floor(seconds / 3)), ' seconds asleep. (A third of your life!)'])
disp(' ')

% ⭐ ASK THE CLASS: which line would we change to compute this for a
%    100-year-old? (Just ONE box — everything downstream updates. That's
%    the power of variables.)


%% CHALLENGE 2 · THE PENNY THAT BROKE THE BANK
% The deal: I give you ONE CENT today. Tomorrow it doubles. It doubles every
% day for 30 days. OR you can just take $10,000 cash right now.
%
% ⭐ ASK THE CLASS: who takes the penny? Who takes the $10,000?
%    Count hands. THEN run this.

day_1 = 1;                      % one measly cent
day_10 = 2 ^ 9;                 % doubled 9 times by day 10
day_20 = 2 ^ 19;                % doubled 19 times by day 20
day_28 = 2 ^ 27;                % doubled 27 times by day 28
day_30 = 2 ^ 29;                % doubled 29 times by day 30

disp(['Day 1:  ', num2str(day_1), ' cent'])
disp(['Day 10: ', num2str(day_10), ' cents  (about 5 dollars — the $10,000 crowd is smug)'])
disp(['Day 20: ', num2str(day_20), ' cents  (about 5 THOUSAND dollars... uh oh)'])
disp(['Day 28: ', num2str(day_28), ' cents  — in dollars: ', num2str(day_28 / 100)])
disp('        ...the penny just passed ONE MILLION DOLLARS. Two days left.')
disp(['Day 30: ', num2str(day_30), ' cents  — in dollars: ', num2str(day_30 / 100)])
disp(' ')
disp('FIVE. MILLION. DOLLARS. Never bet against doubling.')
disp(' ')


%% CHALLENGE 3 · THE Inf HUNT — find the edge of the number line
% In the demo, 2^1100 came back Inf. But WHERE exactly does MATLAB fall off
% the edge? Somewhere between these two:

disp(2 ^ 1000)      % huge... but still a real number
disp(2 ^ 2000)      % Inf — past the edge

% ⭐ CLASS GAME — trap the edge: the class calls out powers between 1000 and
%    2000, you type   disp(2 ^ their_number)   live in the Command Window.
%    Number or Inf? Each answer shrinks the hiding zone:
%
%       1500?  Inf     → the edge is BELOW 1500
%       1200?  Inf     → below 1200
%       1100?  Inf     → below 1100  (we knew that from the demo)
%       1050?  ...keep squeezing! Halve the gap each time.
%
%    (Sneak preview: this halving strategy is EXACTLY how the computer will
%     guess any number from 1 to 100 in 7 tries — week 7.)
%
% When the class has it cornered, run the reveal:

disp('The reveal — drumroll...')
disp(2 ^ 1023)      % the LAST power of 2 that fits: about 9 x 10^307
disp(2 ^ 1024)      % Inf — one step past the edge
disp('The edge is between 2^1023 and 2^1024. You just found the biggest')
disp('kind of number this computer can hold. It only took 11 guesses.')
disp(' ')

% SNEAK PEEK · WEEK 6 — in four weeks, one tiny LOOP will print all 30 penny
% days in a single breath, like this (don't explain it — just run it and
% walk away):

disp('Days 1 to 8, computed by a loop from the future:')
for day = 1:8
    disp(['  day ', num2str(day), ': ', num2str(2 ^ (day - 1)), ' cents'])
end

disp(' ')
disp('See you next week — the computer is going to start asking questions.')
