% ==============================================================================
%
%   WEEK 7  ·  WHILE LOOPS  →  🎉 THE NUMBER GUESSING GAME
%
%   Last week: for loops — "repeat this N times."
%   This week: while loops — "repeat this UNTIL something happens."
%
%   A for loop knows when it will finish. A while loop finds out.
%
%   Today the class plays the computer's guessing game... and then the
%   tables turn, and the computer plays ours. It will not lose. By the
%   end of the file you'll know exactly why it CAN'T.
%
%   TEACHER: run one %% section at a time (Ctrl+Enter), top to bottom —
%   but STOP at the end of Section 4. Sections 5–6 are THE FLIP, played
%   after the voting game (see README). Type clc first to clean the board.
%
% ==============================================================================


%% SECTION 1 · YOUR FIRST WHILE LOOP
% A while loop repeats its block AS LONG AS a condition holds (says 1, yes):
%
%   while count > 0        ← the CONDITION — checked before every lap
%       ...                ← the block
%   end                    ← same end as for loops and if
%
% Every healthy while loop has three parts. Point at each one below:
%   1. a START value        (count = 5)
%   2. a CONDITION to check (count > 0)
%   3. an UPDATE inside     (count = count - 1)
%
% ⭐ ASK THE CLASS: how many lines will this print? What's the last one?

count = 5;
while count > 0
    fprintf('count is %d\n', count)
    count = count - 1;
end
disp('...and count is now 0, so the condition failed. Loop over.')
disp(' ')

% ⭐ point at the Workspace — count's box just shrank 5, 4, 3, 2, 1, 0.
%    The loop watched that box the whole time.
% ⭐ ASK THE CLASS: which of the three parts could a FOR loop have done
%    for us? (All of them — for a countdown, for is fine. While shines
%    when you DON'T know the number of laps. Keep watching.)


%% SECTION 2 · THE INFINITE LOOP — the most famous bug in programming
% ⭐ ASK THE CLASS: what happens if the condition NEVER fails?
%
% The loop below is caged in comments. LIVE ACTIVITY:
%   1. Uncomment the three lines (remove the %).
%   2. Run this section. Enjoy the waterfall. The computer will happily
%      do this until the sun burns out.
%   3. Click in the Command Window and press  Ctrl+C  — the emergency
%      brake. MATLAB reports "Operation terminated by user" — that user
%      is you, and you just saved the machine.
%   4. Put the %'s back before moving on!
%
% while true
%     disp('HELP, I CANNOT STOP')
% end
%
% ('true' is a condition that never fails, so the check never says no.
%  No bug is more famous — every programmer has built one by accident.
%  Today you built one ON PURPOSE.)

disp('(The infinite loop stays caged in the comments above. Uncomment to feed it.)')
disp(' ')


%% SECTION 3 · BUILDING THE GUESSING GAME — rigged practice round
% The game: the computer hides a number, we guess, it answers
% "higher" or "lower" until we nail it. Four pieces, all old friends:
%
%   PIECE 1 · the secret        → a variable                    (week 2)
%   PIECE 2 · keep asking       → while + input()               (week 3 + today)
%   PIECE 3 · the hints         → if / elseif / else            (week 4)
%   PIECE 4 · count the guesses → an accumulator                (week 6)
%
% (Small gift from MATLAB: input() hands us a NUMBER directly —
%  nothing to convert. Type, done.)
%
% For this practice build the secret is RIGGED to 42 so we can watch the
% machinery. Teacher: guess wrong ON PURPOSE — try 10, then 60 — and have
% the class read which hint fires and why. Then let them steer you to 42.

secret = 42;                     % PIECE 1 — rigged, just for practice
guess = 0;                       % 0 is safely wrong, so the loop starts
guesses = 0;

while guess ~= secret            % PIECE 2 — "keep going UNTIL they match"
    guess = input('Practice round — your guess: ');
    guesses = guesses + 1;       % PIECE 4 — the guess counter ticks
    if guess < secret            % PIECE 3 — the hints
        disp('Higher!')
    elseif guess > secret
        disp('Lower!')
    else
        fprintf('GOT IT in %d guesses!\n', guesses)
    end
end
disp(' ')

% ⭐ ASK THE CLASS: why did the loop stop? (guess finally EQUALED secret,
%    so 'guess ~= secret' failed — same story as count hitting 0.)
% ⭐ ASK THE CLASS: could a FOR loop run this game? (No — nobody knows how
%    many guesses it'll take. That's exactly when you reach for while.)


%% SECTION 4 · 🎉 PAYOFF 1 — THE REAL GAME, 1 TO 100
% Same machine, one change: the secret comes from last week's dice.
% Now NOBODY in the room knows it — including the computer's owner (you).
%
% The class shouts guesses, you type them. Count the guesses out loud —
% and write the final count on the board. It matters in a minute.

disp('=== THE REAL GAME — I am thinking of a number from 1 to 100 ===')
secret = randi([1 100]);
guess = 0;
guesses = 0;

while guess ~= secret
    guess = input('The class guesses: ');
    guesses = guesses + 1;
    if guess < secret
        disp('Higher!')
    elseif guess > secret
        disp('Lower!')
    else
        fprintf('GOT IT! %d — in %d guesses!\n', secret, guesses)
    end
end
disp(' ')

% ⭐ ASK THE CLASS: what STRATEGY were you using? Random stabs, or...
%    was somebody aiming for the middle? Hold that thought.


%% SECTION 5 · 🎉 PAYOFF 2 — THE FLIP: the computer guesses YOUR number
% Revenge time. The class agrees on a secret number from 1 to 100 and
% writes it on paper (hold it up — no changing it mid-game, the computer
% has feelings... okay, it doesn't, but still).
%
% The computer's strategy is beautiful: it always guesses the MIDDLE of
% what's still possible. You answer with h (higher), l (lower), or c
% (correct) — words, so input(..., 's') and the word-matcher strcmp.
%
% ⭐ ASK BEFORE RUNNING: the class took ___ guesses (it's on the board).
%    How many will the machine need? Take bets. It will use SEVEN OR FEWER.

disp('=== THE FLIP — think of a number from 1 to 100. I WILL find it. ===')
low = 1;
high = 100;
tries = 0;
answer = '';

while strcmp(answer, 'c') == 0            % keep going until the answer is c
    middle = floor((low + high) / 2);     % the exact middle of what's left
    tries = tries + 1;
    fprintf('Guess %d — I say %d   (possible: %d to %d)\n', tries, middle, low, high)
    answer = input('   higher (h), lower (l), or correct (c)? ', 's');
    if strcmp(answer, 'h')
        low = middle + 1;                 % everything below the guess: eliminated
    elseif strcmp(answer, 'l')
        high = middle - 1;                % everything above the guess: eliminated
    end
end
disp(' ')
fprintf('Found it in %d guesses. Seven or fewer. Every. Single. Time.\n', tries)
disp(' ')

% ⭐ point at the Workspace during the game — low and high are the jaws
%    of a trap, closing in on the secret one answer at a time.
% (The computer trusts your h's and l's completely. Answer dishonestly and
%  it corners itself into nonsense — a fun thing to try with extra time.)


%% SECTION 6 · WHY THE COMPUTER CAN'T LOSE — the halving chain
% Every answer CUTS THE POSSIBILITIES IN HALF. Start with 100 suspects;
% one guess leaves at most 50, then 25, then 12... watch the collapse —
% and of course we'll watch it with a while loop:

suspects = 100;
step = 0;
while suspects >= 1
    step = step + 1;
    fprintf('guess %d -> numbers still possible: %d\n', step, suspects)
    suspects = floor(suspects / 2);
end
disp(' ')

% Seven guesses to get from 100 suspects down to 1. And the pincer proof:

fprintf('2^7 = %d — seven halvings handle up to 128 numbers.\n', 2^7)
disp('128 > 100, so seven guesses ALWAYS suffice. The computer cannot lose.')
disp(' ')

% 🏅 BONUS WORD for the class: this halving strategy is called BINARY SEARCH,
%    and it's one of the most famous ideas in all of computer science.
%    You just watched it beat the whole room. Say it once, sound smart forever.
