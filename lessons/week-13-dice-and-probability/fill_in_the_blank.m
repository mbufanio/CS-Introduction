% ==============================================================================
%
%   WEEK 13 · FILL IN THE BLANK  —  the class writes the code, you type it
%
%   HOW THIS WORKS (teacher):
%     · Every blank looks like this:  ____
%     · Read the task aloud. Kids call out what goes in the blank.
%     · Type their answer — even wrong ones! — and run that task's section
%       (Ctrl+Enter). Wrong answers stop with red text, the class reads
%       the error, everyone debugs.
%     · Run after EACH task. (Running a task with an unfilled blank stops
%       with "Unrecognized function or variable '____'" — that just means
%       you have not gotten there yet.)
%     · TASK 3 has NO blank — you type three lines live while the class
%       supplies the operator. Instructions are at the task.
%     · Numbers will differ every run. Randomness is the lesson.
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1
% One digital die roll: a whole number from 1 to 6, BOTH ends included,
% all equally likely. Which random command does that?
% (Week 5 veterans, this is your moment.)

roll = ____([1 6]);
fprintf('the computer rolled: %d\n', roll)


%% TASK 2
% Now TEN rolls. What does the loop counter run up to?

for i = 1:____
    roll = randi([1 6]);
    fprintf('roll %2d  →  %d\n', i, roll)
end


%% TASK 3 · TYPE-IT-LIVE — THE COUNTER
% This loop rolls 100 dice... but counts NOTHING. Run it once and look:
% "sixes counted: 0". The counter is missing!
%
% TEACHER: type these THREE lines at the marked spot, inside the loop:
%
%         if roll ?? 6
%             count = count + 1;
%         end
%
% ...but DON'T type the '??' — the class supplies the operator that asks
% "is roll EQUAL to 6?"  (Someone will offer a single = — type it, savor
% the error, let the week 4 veterans fix it.)
% Watch the Workspace while it runs: count's box fills up in real time.

count = 0;
trials = 100;
for i = 1:trials
    roll = randi([1 6]);
    % ← type the three counting lines HERE (don't forget the end)
end

fprintf('sixes counted: %d out of %d rolls\n', count, trials)


%% TASK 4 · THE PERCENT LINE
% Turn the count into a percentage:  hits ÷ trials × 100.
% Which variable holds the number of sixes we just counted?
% (Spot the %% in the fprintf below: % starts a comment in MATLAB, so a
%  printed percent sign has to be typed twice. Two on the way in, one on
%  the way out.)

percent = ____ / trials * 100;
fprintf('that is %.2f%% — theory says about 16.67%%\n', percent)


%% TASK 5 · GO BIG
% The law of large numbers says: bigger experiment → closer to 16.67.
% The class picks a BIG number of trials — thousands! (Six digits is fine;
% a million takes a couple of seconds. Narrate the suspense.)

big_trials = ____;
count = 0;
for i = 1:big_trials
    roll = randi([1 6]);
    if roll == 6
        count = count + 1;
    end
end

fprintf('out of %d rolls: %.2f%% sixes\n', big_trials, count / big_trials * 100)
% (%.2f trims the decimal to 2 places — that's the .2 doing it)


%% TASK 6 · TWO DICE
% Roll two dice and add them. The total needs BOTH rolls — what completes it?

roll_a = randi([1 6]);
roll_b = randi([1 6]);
total = roll_a + ____;
fprintf('two dice: %d and %d  →  total: %d\n', roll_a, roll_b, total)


%% TASK 7 · HUNT THE KING
% One sum rules all two-dice rolls — the grid gave it SIX ways to happen.
% Which total should the counter hunt for?

kings = 0;
for i = 1:1000
    total = randi([1 6]) + randi([1 6]);
    if total == ____
        kings = kings + 1;
    end
end

fprintf('the king came up %d times in 1000  →  %.1f%%\n', kings, kings / 1000 * 100)
fprintf('theory: 6 ways out of 36 = 16.7%%. Long live the king.\n')
