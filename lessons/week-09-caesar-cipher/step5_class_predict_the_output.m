% ==============================================================================
%
%   WEEK 9 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · clock warm-up ══════════════════════════════════════════════════
%
%     disp(mod(25 + 3, 26))
%
%   What appears?
%     A)  28
%     B)  2
%     C)  0
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(mod(25 + 3, 26))
disp(' ')


%% ══ ROUND 2 · the edge of the clock ══════════════════════════════════════════
%
%     disp(mod(27, 26))
%     disp(mod(26, 26))
%
%   TWO numbers print. What are they?
%     A)  1  then  0
%     B)  1  then  1
%     C)  27  then  26
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp(mod(27, 26))
disp(mod(26, 26))
disp(' ')


%% ══ ROUND 3 · secret-number subtraction ══════════════════════════════════════
%
%     disp(double('B') - double('A'))
%
%   What appears?
%     A)  0
%     B)  1
%     C)  66
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp(double('B') - double('A'))
disp(' ')


%% ══ ROUND 4 · Z meets the formula ════════════════════════════════════════════
%
%     pos = double('Z') - double('A');
%     newpos = mod(pos + 1, 26);
%     disp(char(newpos + double('A')))
%
%   Z, shifted by 1. What appears?
%     A)  A
%     B)  Z
%     C)  [
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
pos = double('Z') - double('A');
newpos = mod(pos + 1, 26);
disp(char(newpos + double('A')))
disp(' ')


%% ══ ROUND 5 · the sneaky one ═════════════════════════════════════════════════
%
%     pos = double('Y') - double('A');
%     newpos = mod(pos + 3, 26);
%     disp(char(newpos + double('A')))
%
%   Y, shifted by 3. Careful — count on the clock, not the ruler...
%     A)  B
%     B)  \
%     C)  Z
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
pos = double('Y') - double('A');
newpos = mod(pos + 3, 26);
disp(char(newpos + double('A')))
disp(' ')


%% ══ FINAL ROUND · a real encode, start to finish ═════════════════════════════
%
%     message = 'A B';
%     secret = '';
%     for i = 1:length(message)
%         letter = message(i);
%         if letter == ' '
%             secret = [secret, ' '];
%         else
%             pos = double(letter) - double('A');
%             newpos = mod(pos + 1, 26);
%             secret = [secret, char(newpos + double('A'))];
%         end
%     end
%     disp(secret)
%
%   The message 'A B', shift 1. Does the SPACE get shifted? What appears?
%     A)  B C
%     B)  BC
%     C)  B!C
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
message = 'A B';
secret = '';
for i = 1:length(message)
    letter = message(i);
    if letter == ' '
        secret = [secret, ' '];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + 1, 26);
        secret = [secret, char(newpos + double('A'))];
    end
end
disp(secret)
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
