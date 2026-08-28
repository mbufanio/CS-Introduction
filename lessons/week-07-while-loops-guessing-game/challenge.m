% ==============================================================================
%
%   WEEK 7 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three encores for the while loop.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
% ==============================================================================


%% CHALLENGE 1 · THE GUESSING GAME WITH 7 LIVES ❤️
% Today's game, but now the class can LOSE. Seven lives, one secret.
% ⭐ Ask before playing: is 7 lives ENOUGH to always win — or a trap?
%    (The class proved it today: 2^7 = 128 > 100, so seven middle-aimed
%     guesses ALWAYS win. If they lose, the math didn't fail — the aim did.)
%
% New trick inside: 'playing' is a FLAG variable — a light switch.
% 1 means the switch is on; any ending flips it to 0 and the loop stops.
% ⭐ point at the Workspace — watch lives count down and playing flip.

secret = randi([1 100]);
lives = 7;
playing = 1;

while playing == 1
    fprintf('Lives left: %d\n', lives)
    guess = input('Your guess (1-100): ');
    if guess == secret
        fprintf('WIN! The number was %d\n', secret)
        playing = 0;                        % flip the switch — game over
    elseif lives == 1
        fprintf('That was your last life. It was %d — the machine survives.\n', secret)
        playing = 0;                        % flip the switch — game over
    elseif guess < secret
        disp('Higher!')
        lives = lives - 1;
    else
        disp('Lower!')
        lives = lives - 1;
    end
end
disp(' ')


%% CHALLENGE 2 · THE DOUBLING PENNY 🪙 — a while loop gets rich
% The classic offer: one penny today, doubled every day. Take it?
% ⭐ Ask for bets FIRST: how many days until the penny passes $1,000,000?
%    A year? A decade? Write guesses on the board, then unleash the loop.
%    (Halving crushed 100 in 7 steps — doubling is the same monster,
%     climbing instead of crushing.)

money = 0.01;
day = 0;
while money < 1000000
    day = day + 1;
    money = money * 2;
    fprintf('Day %d -> $%.2f\n', day, money)
end
disp(' ')
disp('Under a month. Doubling is not polite growth — it''s an explosion.')
disp(' ')


%% CHALLENGE 3 · THE AUTO-GUESSER 🤖 — the computer plays itself
% No humans needed: one line of code hides a secret, and the middle-aiming
% strategy from THE FLIP hunts it down. Re-run this section over and over
% (Ctrl+Enter) and watch the tries column.
% ⭐ Challenge to the class: catch it needing MORE than 7. (It never will —
%    and now they know exactly why. 2^7 = 128 > 100.)

secret = randi([1 100]);
low = 1;
high = 100;
tries = 0;
guess = 0;

while guess ~= secret
    guess = floor((low + high) / 2);
    tries = tries + 1;
    fprintf('try %d -> I guess %d\n', tries, guess)
    if guess < secret
        low = guess + 1;
    elseif guess > secret
        high = guess - 1;
    end
end
fprintf('Secret was %d — found in %d tries. Never more than 7.\n', secret, tries)
disp(' ')

% 🔮 SNEAK PEEK OF WEEK 10: soon you'll wrap this hunter in a single
%    reusable command — a function, living in its own file — and fire it
%    at ANY range: 1 to 1000 (10 tries), 1 to 1,000,000 (just 20!).
%    Same halving magic.
