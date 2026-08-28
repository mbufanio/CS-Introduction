% ==============================================================================
%
%   WEEK 13 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C,
%       THEN you click the Command Window and press Enter to reveal.
%     · Ask someone who got it right to explain WHY.
%     · Random rounds ask which result COULD happen — so there's a definite
%       right answer even though the exact number changes. Two reveals run
%       real simulations; the last-but-one rolls a million dice (give it a
%       couple of seconds and narrate).
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     disp(randi([1 6]) + randi([1 6]))
%
%   Two dice, added together. Which of these COULD it print?
%     A)  1
%     B)  7
%     C)  13
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(randi([1 6]) + randi([1 6]))
disp(' ')
disp('(Whatever it just printed is between 2 and 12 — the smallest sum is')
disp(' 1+1 = 2 and the biggest is 6+6 = 12. So 1 and 13 are IMPOSSIBLE,')
disp(' but 7 could absolutely happen. Only B was ever in the running.)')
disp(' ')


%% ══ ROUND 2 · be the counter ═════════════════════════════════════════════════
%
%     count = 0;
%     for n = 1:8
%         if mod(n, 2) == 0
%             count = count + 1;
%         end
%     end
%     disp(count)
%
%   No randomness here — a rigged loop, so there IS one right answer.
%   What prints?
%     A)  4
%     B)  8
%     C)  0
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
count = 0;
for n = 1:8
    if mod(n, 2) == 0
        count = count + 1;
    end
end
disp(count)
disp(' ')
disp('(n runs 1 through 8 — the colon includes both ends — and the if')
disp(' catches the evens: 2, 4, 6, 8. Four hits. mod(n, 2) == 0 is the')
disp(' classic "is it even?" test, and this exact counting pattern has')
disp(' been counting our sixes all class.)')
disp(' ')


%% ══ ROUND 3 · the percent line (sneaky) ══════════════════════════════════════
%
%     disp(25 / 100 * 100)
%
%   25 hits out of 100 trials, as a percentage. What EXACTLY prints?
%     A)  25
%     B)  0.25
%     C)  25.00
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp(25 / 100 * 100)
disp(' ')
disp('(25 ÷ 100 = 0.25, times 100 = 25 — and disp shows a whole number')
disp(' plainly, no trailing zeros. C is the trap: the two decimals only')
disp(' appear when fprintf is ORDERED to print them with %.2f.')
disp(' B forgot the × 100 entirely.)')
disp(' ')


%% ══ ROUND 4 · the king of sums ═══════════════════════════════════════════════
%
%     twos = 0;  sevens = 0;  twelves = 0;
%     for i = 1:10000
%         total = randi([1 6]) + randi([1 6]);
%         if total == 2
%             twos = twos + 1;
%         end
%         if total == 7
%             sevens = sevens + 1;
%         end
%         if total == 12
%             twelves = twelves + 1;
%         end
%     end
%
%   10,000 double-rolls. Which sum gets the BIGGEST count?
%     A)  2
%     B)  7
%     C)  12
%
input('ROUND 4 — vote A/B/C... then press Enter to run the simulation: ', 's');
twos = 0;
sevens = 0;
twelves = 0;
for i = 1:10000
    total = randi([1 6]) + randi([1 6]);
    if total == 2
        twos = twos + 1;
    end
    if total == 7
        sevens = sevens + 1;
    end
    if total == 12
        twelves = twelves + 1;
    end
end
fprintf('sum 2: %d    sum 7: %d    sum 12: %d\n', twos, sevens, twelves)
disp(' ')
disp('(7 wins in a landslide — six ways to make it on the grid; 2 and 12')
disp(' get one way each. Expect roughly 280, 1670, 280.)')
disp(' ')


%% ══ ROUND 5 · a million rolls ════════════════════════════════════════════════
%
%     count = 0;
%     for i = 1:1000000
%         if randi([1 6]) == 6
%             count = count + 1;
%         end
%     end
%     fprintf('%.2f\n', count / 1000000 * 100)
%
%   One MILLION rolls, percent of sixes. The result will be closest to:
%     A)  16.7
%     B)  exactly 16.66667, every single time
%     C)  impossible to say — it's random!
%
input('ROUND 5 — vote A/B/C... then press Enter (give it a couple of seconds): ', 's');
count = 0;
for i = 1:1000000
    if randi([1 6]) == 6
        count = count + 1;
    end
end
fprintf('%.2f\n', count / 1000000 * 100)
disp(' ')
disp('(The law of large numbers: a million trials hug the theory, so A.')
disp(' But not B — it still wobbles a little, run to run. And not C —')
disp(' "random" does NOT mean "anything goes". Worth a class debate!)')
disp(' ')


%% ══ FINAL ROUND · for all the glory (very sneaky!) ═══════════════════════════
%
%     count = 0;
%     for i = 1:10
%         if randi([1 6]) == 6
%             count = count + 1;
%         end
%     end
%     fprintf('%g percent sixes\n', count / 10 * 100)
%
%   Only TEN rolls this time. Which percentage is IMPOSSIBLE to see?
%     A)  0 percent
%     B)  20 percent
%     C)  16.7 percent
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
count = 0;
for i = 1:10
    if randi([1 6]) == 6
        count = count + 1;
    end
end
fprintf('%g percent sixes\n', count / 10 * 100)
disp(' ')
disp('(With 10 rolls, count is a whole number 0–10, so the percent is')
disp(' always a multiple of 10: 0, 10, 20, 30... You can NEVER see 16.7%')
disp(' in ten rolls — tiny experiments can''t even LAND on the theory.')
disp(' That''s why my lumpy tally never stood a chance.)')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
