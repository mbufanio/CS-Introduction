% ==============================================================================
%
%   WEEK 12 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C,
%       THEN you click the Command Window and press Enter to reveal.
%     · Ask someone who got it right to explain WHY.
%
%   NOTE: there is NO turtle in this file — on purpose. Number rounds run
%   for real; drawing rounds reveal a text sketch, so the whole game stays
%   in the Command Window.
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · closing time ═══════════════════════════════════════════════════
%
%     disp(360 / 20)
%
%   A spirograph tilts 20 degrees after each shape. How many repeats until
%   the tilts total 360 and the pattern closes perfectly?
%     A)  18
%     B)  20
%     C)  36
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(360 / 20)
disp(' ')
disp('(18 repeats of 20 degrees = 360 — one full spin, pattern closed.')
disp(' You''re computing 360 ÷ tilt. Divisors of 360 make the neat mandalas.)')
disp(' ')


%% ══ ROUND 2 · the growing side ═══════════════════════════════════════════════
%
%     for i = 1:5
%         fprintf('this side is %d steps long\n', i * 10)
%     end
%
%   This is a spiral's diary. What does its LAST line say?
%     A)  this side is 40 steps long
%     B)  this side is 50 steps long
%     C)  this side is 60 steps long
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
for i = 1:5
    fprintf('this side is %d steps long\n', i * 10)
end
disp(' ')
disp('(MATLAB''s colon is INCLUSIVE — 1:5 goes all the way to 5, so the')
disp(' last side is 5 × 10 = 50. Sides 10, 20, 30, 40, 50 — an arithmetic')
disp(' sequence = a spiral.)')
disp(' ')


%% ══ ROUND 3 · the cycle ══════════════════════════════════════════════════════
%
%     for i = 1:6
%         disp(mod(i, 3))
%     end
%
%   What sequence prints (top to bottom)?
%     A)  1 2 0 1 2 0
%     B)  1 2 3 4 5 6
%     C)  0 1 2 0 1 2
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
for i = 1:6
    disp(mod(i, 3))
end
disp(' ')
disp('(mod(i, 3) wraps the count around at 3, like a 3-hour clock: it keeps')
disp(' the REMAINDER. 1→1, 2→2, 3→0, 4→1, 5→2, 6→0.')
disp(' THIS wheel is how a short color string paints a long drawing.)')
disp(' ')


%% ══ ROUND 4 · which paint? ═══════════════════════════════════════════════════
%
%     colors = 'rgb';
%     disp(colors(mod(7, 3) + 1))
%
%   Shape number 7 is about to be painted. Which pen comes out?
%     A)  r
%     B)  g
%     C)  b
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
colors = 'rgb';
disp(colors(mod(7, 3) + 1))
disp(' ')
disp('(mod(7, 3) = 1... then + 1 = 2, and MATLAB counts from ONE — week 8')
disp(' flashback! — so colors(2) is the SECOND pen: g for green.')
disp(' ''r'' is the trap for anyone who forgot the + 1.)')
disp(' ')


%% ══ ROUND 5 · star or polygon? ═══════════════════════════════════════════════
%
%     for i = 1:5
%         forward(200)
%         right(144)
%     end
%
%   Five sides, turning 144 each time. What appears?
%     A)  A pentagon
%     B)  A five-pointed star
%     C)  It never closes — the turtle wanders off
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp('A five-pointed STAR:')
disp(' ')
disp('          /\')
disp('         /  \')
disp('  ______/    \______')
disp('  \                /')
disp('   \              /')
disp('    \    /\      /')
disp('     \  /  \    /')
disp('      \/    \  /')
disp('       \     \/')
disp(' ')
disp('Why it closes: 5 × 144 = 720 = TWO full spins. Pentagon = one lap of')
disp('turning (5 × 72 = 360); star = two. Turn 72 → pentagon. Turn 144 → star.')
disp(' ')


%% ══ FINAL ROUND · one degree of chaos (sneaky!) ══════════════════════════════
%
%     for i = 1:150
%         forward(i)
%         right(91)
%     end
%
%   A square spiral turns 90... but this one turns 91. What appears?
%     A)  A square spiral, identical to the 90 version
%     B)  A square spiral that slowly twists into a whirlpool
%     C)  An error — spirals need exactly 90
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
disp('The WHIRLPOOL — the demo''s gasp moment, and now you know why:')
disp(' ')
disp('Every corner over-rotates by just 1 degree. One degree × 150 corners')
disp('= 150 degrees of extra twist, spread smoothly through the picture.')
disp('The squares stop stacking and start swirling. Tiny change, huge art —')
disp('in code, ONE number can be the whole difference.')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
