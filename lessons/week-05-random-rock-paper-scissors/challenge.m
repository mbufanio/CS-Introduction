% ==============================================================================
%
%   WEEK 5 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three encores for the electronic dice.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
% ==============================================================================


%% CHALLENGE 1 · THE MAGIC 8-BALL 🎱
% A fortune teller built from today's two tricks: roll a number, map it to
% an answer. The class asks a yes/no question out loud, you type it in,
% and randi(8) picks the universe's reply — through the biggest mapping
% we've built yet.
% ⭐ Ask before the reveal: how many different answers COULD it give?
%    (Eight — one per branch, each equally likely: 1 chance in 8.)

question = input('Ask the Magic 8-Ball a yes/no question: ', 's');
a = randi(8);
if a == 1
    answer = 'Definitely yes.';
elseif a == 2
    answer = 'No chance.';
elseif a == 3
    answer = 'Ask again louder.';
elseif a == 4
    answer = 'The signs point to maybe.';
elseif a == 5
    answer = 'Obviously.';
elseif a == 6
    answer = 'Only on a Tuesday.';
elseif a == 7
    answer = 'The 8-ball is asleep.';
else
    answer = 'My sources say: homework first.';
end
fprintf('You asked: %s\n', question)
fprintf('The 8-ball says: %s\n', answer)
disp(' ')

% Re-run this section (Ctrl+Enter) for every question the class has.
% The 8-ball is never wrong. It is also never right. It's random.


%% CHALLENGE 2 · THE STREAK HUNTER  —  🔮 SNEAK PEEK OF WEEK 7
% How many coin flips does it take to get 3 HEADS IN A ROW?
% This uses a WHILE LOOP — a week 7 tool that repeats code until a goal
% is reached. Don't explain the machinery; just read the goal line aloud
% ("WHILE the streak is under 3... keep flipping") and let it rip.
% ⭐ Ask for guesses first! Kids guess 5 or 6 flips. Reality: often 10+.
%    Run it a few times — streaks are rarer than human brains expect.

streak = 0;
flips = 0;
while streak < 3                        % ← week 7 magic: repeat until 3 in a row
    flips = flips + 1;
    coin = randi([1 2]);                % 1 means heads, 2 means tails
    if coin == 1
        streak = streak + 1;
        fprintf('Flip %d -> HEADS!  Streak: %d\n', flips, streak)
    else
        streak = 0;
        fprintf('Flip %d -> tails.  Streak resets to 0.\n', flips)
    end
end
disp(' ')
fprintf('3 heads in a row! It took %d flips.\n', flips)
disp(' ')


%% CHALLENGE 3 · ROCK, PAPER, SCISSORS, LIZARD, SPOCK 🖖
% The famous 5-throw upgrade. TEN rules instead of three:
%
%   scissors cut paper       paper covers rock        rock crushes lizard
%   lizard poisons Spock     Spock smashes scissors   scissors decapitate lizard
%   lizard eats paper        paper disproves Spock    Spock vaporizes rock
%   rock crushes scissors
%
% The computer picks below with a 5-way mapping — but writing if/elseif
% for all TEN winning matchups would take an afternoon. So today the
% CLASS is the judge: read the rules and rule the round out loud.
% ⭐ Tease: in week 10 we'll learn a tool (functions) that makes big rule
%    sets like this way less painful.

v = randi(5);
if v == 1
    computer_throw = 'rock';
elseif v == 2
    computer_throw = 'paper';
elseif v == 3
    computer_throw = 'scissors';
elseif v == 4
    computer_throw = 'lizard';
else
    computer_throw = 'Spock';
end
throw = input('Class throw (rock/paper/scissors/lizard/Spock): ', 's');
fprintf('Class threw   : %s\n', throw)
fprintf('Computer threw: %s\n', computer_throw)
disp('Judges! Check the rules above. Who won?')
disp(' ')

% ⭐ Fairness bonus question: 5 throws, each with chance 1 in 5.
%    Every throw beats exactly 2 others and loses to exactly 2 others.
%    25 matchups: 10 class wins, 10 computer wins, 5 ties. Still perfectly fair!
