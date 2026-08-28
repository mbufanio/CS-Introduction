% ==============================================================================
%
%   WEEK 4 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%     · Round 4 is the trap of the week — let them argue BEFORE the reveal.
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     disp(10 > 9)
%
%   What appears on the screen?
%     A)  1
%     B)  yes
%     C)  10 > 9
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(10 > 9)
disp(' ')


%% ══ ROUND 2 · the skipped block ══════════════════════════════════════════════
%
%     x = 5;
%     if x > 100
%         disp('HUGE number!')
%     end
%     disp('done')
%
%   What appears?
%     A)  HUGE number!  then  done
%     B)  only:  done
%     C)  Nothing at all
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
x = 5;
if x > 100
    disp('HUGE number!')
end
disp('done')
disp(' ')


%% ══ ROUND 3 · boundary patrol ════════════════════════════════════════════════
%
%     age = 13;
%     if age >= 13
%         disp('Teenager!')
%     else
%         disp('Not yet!')
%     end
%
%   Exactly ON the boundary. What appears?
%     A)  Teenager!     (>= includes 13 — closed circle)
%     B)  Not yet!      (13 isn't MORE than 13)
%     C)  Both lines
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
age = 13;
if age >= 13
    disp('Teenager!')
else
    disp('Not yet!')
end
disp(' ')


%% ══ ROUND 4 · the elseif trap ════════════════════════════════════════════════
%
%     score = 95;
%     if score >= 50
%         disp('You pass!')
%     elseif score >= 90
%         disp('AMAZING SCORE!')
%     end
%
%   95 is bigger than BOTH numbers... so what appears?
%     A)  You pass!  then  AMAZING SCORE!
%     B)  only:  AMAZING SCORE!
%     C)  only:  You pass!
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
score = 95;
if score >= 50
    disp('You pass!')
elseif score >= 90
    disp('AMAZING SCORE!')
end
disp(' ')


%% ══ ROUND 5 · one asks, two puts... wait, which? ═════════════════════════════
%
%     x = 7;
%     disp(x == 10)
%
%   What appears?
%     A)  1 — x is a number and 10 is a number
%     B)  0
%     C)  10 — the box gets replaced
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
x = 7;
disp(x == 10)
disp(' ')


%% ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
%
%     x = 5;
%     if x = 5
%         disp('five!')
%     end
%
%   LOOK VERY closely at line 2. What happens?
%     A)  five!
%     B)  1
%     C)  It won't even start — red text, and MATLAB suggests the fix
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
% That 'if x = 5' line would REALLY refuse to run — a file containing it
% never starts at all. So the reveal below is a SIMULATION — a disp() of
% the genuine error text, so the game can go on:
disp('Incorrect use of ''='' operator. To assign a value to a variable,')
disp('use ''=''. To compare values for equality, use ''==''.')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp('One equals PUTS. Two equals ASKS.')
disp(repmat('=', 1, 40))
