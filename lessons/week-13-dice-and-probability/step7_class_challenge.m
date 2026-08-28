% ==============================================================================
%
%   WEEK 13 · CHALLENGE  —  the casino back room
%
%   Four experiments you could never run with real dice before lunch.
%   Run the whole file (F5): it pauses in the COMMAND WINDOW between
%   experiments. Every number changes every run — perfect. Re-run
%   anything on request.
%
% ==============================================================================


%% EXPERIMENT 1 · ROLL UNTIL DOUBLES  (week 7's while loop rides again)
% Keep rolling two dice until they match. How many tries does it take?
% ⭐ ASK THE CLASS FIRST: guess the average. (Theory: doubles are 6/36 =
%    1 in 6, so ABOUT 6 tries — but watch the wild swings between runs.)

input('EXPERIMENT 1 — press Enter to roll until doubles (3 rounds): ', 's');

for round_number = 1:3
    tries = 1;
    die_a = randi([1 6]);
    die_b = randi([1 6]);
    while die_a ~= die_b
        tries = tries + 1;
        die_a = randi([1 6]);
        die_b = randi([1 6]);
    end
    fprintf('round %d  →  doubles (%d and %d) after %d tries\n', ...
        round_number, die_a, die_b, tries)
end

disp('Same experiment, three very different answers. Small samples are wild.')


%% EXPERIMENT 2 · THE LONGEST HEADS STREAK
% 10,000 coin flips. Track the CURRENT run of heads and the BEST run so far.
% ⭐ ASK THE CLASS FIRST: in 10,000 flips, how long is the longest streak
%    of heads in a row? Take guesses. (Most people guess 5-ish. Ha.)

input('EXPERIMENT 2 — press Enter to flip 10,000 coins: ', 's');

current_streak = 0;
best_streak = 0;
for flip = 1:10000
    coin = randi([1 2]);               % 1 = heads, 2 = tails
    if coin == 1
        current_streak = current_streak + 1;
        if current_streak > best_streak
            best_streak = current_streak;
        end
    else
        current_streak = 0;            % tails snaps the streak
    end
end

fprintf('longest heads streak in 10,000 flips: %d\n', best_streak)
disp('(Usually 11–15. If a friend flipped 13 heads in a row, you''d swear the')
disp(' coin was rigged — but in a big enough experiment, streaks are NORMAL.)')


%% EXPERIMENT 3 · THE GREAT DICE DERBY  —  first face to 20 wins
% Six faces enter. One leaves (first to be rolled 20 times).
% The track is drawn in text — repmat turns each counter into a bar of #s.
% ⭐ Before running: every student picks a horse (a face, 1–6). Winners
%    get bragging rights. Then ask: is any face ACTUALLY more likely?

input('EXPERIMENT 3 — pick your horses, then press Enter to start the race: ', 's');

count1 = 0; count2 = 0; count3 = 0;
count4 = 0; count5 = 0; count6 = 0;
rolls = 0;
winner = 0;                            % 0 = no winner yet (the while's exit flag)

while winner == 0
    roll = randi([1 6]);
    rolls = rolls + 1;
    if roll == 1
        count1 = count1 + 1;
    elseif roll == 2
        count2 = count2 + 1;
    elseif roll == 3
        count3 = count3 + 1;
    elseif roll == 4
        count4 = count4 + 1;
    elseif roll == 5
        count5 = count5 + 1;
    else
        count6 = count6 + 1;
    end

    if mod(rolls, 10) == 0             % print the track every 10 rolls
        fprintf('\n--- after %d rolls ---\n', rolls)
        fprintf('face 1: %s\n', repmat('#', 1, count1))
        fprintf('face 2: %s\n', repmat('#', 1, count2))
        fprintf('face 3: %s\n', repmat('#', 1, count3))
        fprintf('face 4: %s\n', repmat('#', 1, count4))
        fprintf('face 5: %s\n', repmat('#', 1, count5))
        fprintf('face 6: %s\n', repmat('#', 1, count6))
        pause(0.4)                     % a heartbeat between updates — drama!
    end

    if count1 == 20
        winner = 1;
    end
    if count2 == 20
        winner = 2;
    end
    if count3 == 20
        winner = 3;
    end
    if count4 == 20
        winner = 4;
    end
    if count5 == 20
        winner = 5;
    end
    if count6 == 20
        winner = 6;
    end
end

fprintf('\n*** FACE %d WINS after %d total rolls! ***\n', winner, rolls)
disp('(Every face had the same 1-in-6 chance — today was just its day.')
disp(' Re-run the race and the crown probably moves.)')


%% EXPERIMENT 4 · IS THIS DIE LOADED?  —  a mystery for the class
% A stranger hands you a die and swears it's fair. The class now owns the
% perfect lie detector: today's fairness test. A fair die gives about
% 16.7% sixes... let's run 10,000 rolls and check.
%
% ⭐ Run the test FIRST, read the verdict, THEN scroll to the spoiler.

input('EXPERIMENT 4 — press Enter to test the stranger''s die: ', 's');

count = 0;
for i = 1:10000
    secret = randi([1 8]);             % (the stranger's 'die'... see spoiler)
    if secret >= 7
        secret = 6;
    end
    if secret == 6
        count = count + 1;
    end
end

percent = count / 10000 * 100;
fprintf('10,000 rolls of the stranger''s die  →  %.1f%% sixes\n', percent)
fprintf('a fair die would give about 16.7%%...\n')
if percent > 25
    disp('VERDICT: LOADED! Nobody is that lucky. Nice try, stranger.')
else
    disp('VERDICT: seems fair... (which would be shocking — re-run this!)')
end

%
%  ~~~~~~~~~~~~~~~~~~~~  SPOILER — THE RIGGING  ~~~~~~~~~~~~~~~~~~~~
%  (Don't read aloud until the verdict lands!)
%
%  The "die" secretly rolls 1–8 with randi([1 8]), then relabels 7 and 8
%  as 6. So six gets THREE chances out of eight: 3/8 = 37.5%, not 16.7.
%  The class just caught a cheater using experimental probability —
%  no X-ray needed, only enough trials. THAT is why this math matters.
%
%  ⚡ SNEAK PEEK OF WEEK 14: casinos rig nothing so crudely — they tilt
%  games by a whisper (a 5.3 percent house edge) and let the law of
%  large numbers collect the money. Next week we simulate it.
%
