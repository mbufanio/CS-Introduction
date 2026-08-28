% ==============================================================================
%
%   WEEK 10 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%       ⚠ Current Folder must be this week's folder — rounds 1-3 call the
%         machine files double_it.m and rectangle_area.m.
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · press the button ═══════════════════════════════════════════════
%
%     The file double_it.m contains:
%         function out = double_it(x)
%             out = x * 2;
%         end
%
%     disp(double_it(4))
%
%   What appears?
%     A)  8
%     B)  4
%     C)  x * 2
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(double_it(4))
disp(' ')


%% ══ ROUND 2 · machine feeding machine ════════════════════════════════════════
%
%     disp(double_it(double_it(3)))
%
%   Inside out! What appears?
%     A)  6
%     B)  12
%     C)  9
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp(double_it(double_it(3)))
disp(' ')


%% ══ ROUND 3 · two slots, order check ═════════════════════════════════════════
%
%     The file rectangle_area.m contains:
%         function a = rectangle_area(width, height)
%             a = width * height;
%         end
%
%     disp(rectangle_area(3, 4))
%     disp(rectangle_area(4, 3))
%
%   TWO numbers print. What are they?
%     A)  12  then  12
%     B)  12  then  7
%     C)  34  then  43
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp(rectangle_area(3, 4))
disp(rectangle_area(4, 3))
disp(' ')


%% ══ ROUND 4 · order strikes back ═════════════════════════════════════════════
%
%     gap = @(a, b) a - b;
%
%     disp(gap(9, 2))
%     disp(gap(2, 9))
%
%   Same swap as round 3... what appears?
%     A)  7  then  7
%     B)  7  then  -7
%     C)  7  then  0
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
gap = @(a, b) a - b;
disp(gap(9, 2))
disp(gap(2, 9))
disp(' ')


%% ══ ROUND 5 · the sneaky classic ═════════════════════════════════════════════
%
%     The file cheer.m contains:
%         function cheer(name)              ← look VERY carefully at this line
%             disp(['Gimme a ', upper(name), '!'])
%             disp(['    ', name, ' is unstoppable! WOOO!'])
%         end
%
%     result = cheer('Ada')
%
%   What happens?
%     A)  The two cheer lines print, and result holds the chant
%     B)  An ERROR — cheer has no output slot, so there is nothing
%         to hand to result
%     C)  result quietly becomes 0
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
% (Reveal simulated so the game can keep running — this is exactly what
%  MATLAB prints. Dare the class to try the real thing after the game!)
disp('Error using cheer')
disp('Too many output arguments.')
disp('      ...the machine cheers, but it hands NOTHING back to catch.')
disp(' ')


%% ══ FINAL ROUND · machine on a conveyor belt ═════════════════════════════════
%
%     triple = @(x) x * 3;
%
%     for i = 1:3
%         disp(triple(i))
%     end
%
%   What appears?
%     A)  3  6  9   (one per line)
%     B)  3  3  3   (one per line)
%     C)  1  2  3   (one per line)
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
triple = @(x) x * 3;
for i = 1:3
    disp(triple(i))
end
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
