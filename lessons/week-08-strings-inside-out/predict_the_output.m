% ==============================================================================
%
%   WEEK 8 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · the address check ══════════════════════════════════════════════
%
%     word = 'MATLAB';
%     disp(word(2))
%
%   What appears?
%     A)  M
%     B)  A
%     C)  MA
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
word = 'MATLAB';
disp(word(2))
disp(' ')


%% ══ ROUND 2 · the measuring tape ═════════════════════════════════════════════
%
%     disp(length('hello'))
%
%   What appears?
%     A)  4
%     B)  5
%     C)  6
%
%   ⭐ Bonus question after the reveal: which address does the final o
%      live at? (Same number! In MATLAB, length and last address MATCH.)
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp(length('hello'))
disp(' ')


%% ══ ROUND 3 · both ends included ═════════════════════════════════════════════
%
%     word = 'COMPUTER';
%     disp(word(1:4))
%
%   What appears?
%     A)  COM
%     B)  COMP
%     C)  C
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
word = 'COMPUTER';
disp(word(1:4))
disp(' ')


%% ══ ROUND 4 · the repeater vs text ═══════════════════════════════════════════
%
%     disp(repmat('ha', 1, 3))
%
%   Week 6's repeater — but fed a TWO-letter string. What appears?
%     A)  hahaha
%     B)  ha3
%     C)  hhhaaa
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
disp(repmat('ha', 1, 3))
disp(' ')


%% ══ ROUND 5 · secret-number arithmetic ═══════════════════════════════════════
%
%     disp(char(double('A') + 1))
%
%   Work from the inside out. What appears?
%     A)  A1
%     B)  B
%     C)  66
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp(char(double('A') + 1))
disp(' ')


%% ══ FINAL ROUND · the sneaky one — for all the glory ═════════════════════════
%
%     word = 'whisper';
%     disp(upper(word))
%     disp(word)
%
%   TWO lines print. What are they?
%     A)  WHISPER  then  WHISPER
%     B)  WHISPER  then  whisper
%     C)  whisper  then  whisper
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
word = 'whisper';
disp(upper(word))
disp(word)
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
