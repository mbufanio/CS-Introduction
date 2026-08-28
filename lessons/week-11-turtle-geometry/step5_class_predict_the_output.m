% ==============================================================================
%
%   WEEK 11 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   NOTE: there is NO turtle in this file — on purpose. Shape rounds reveal
%   a text sketch of what the turtle WOULD draw, so the whole game stays in
%   the Command Window. (The real drawings live in step3_class_demo.m and
%   step7_class_challenge.m.)
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     forward(100)
%     right(90)
%     forward(100)
%
%   The turtle starts facing right (east). What has it drawn so far?
%     A)  One straight line, 200 steps long
%     B)  A corner — two sides of a square
%     C)  A letter V
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp('It drew a CORNER — across, then down. Like a 7:')
disp(' ')
disp('   #########')
disp('           #')
disp('           #')
disp('           #')
disp(' ')
disp('(right(90) only SPINS the turtle — the second forward walks the new way.)')
disp(' ')


%% ══ ROUND 2 · the recipe ═════════════════════════════════════════════════════
%
%     for side = 1:4
%         forward(100)
%         right(90)
%     end
%
%   What does this draw?
%     A)  A square
%     B)  A rectangle, wider than it is tall
%     C)  Four separate lines scattered around
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp('A SQUARE — the floor recipe: 4 x (forward, turn right 90).')
disp(' ')
disp('   ##########')
disp('   #        #')
disp('   #        #')
disp('   #        #')
disp('   ##########')
disp(' ')
disp('(All four sides are forward(100) — same length every time. That''s what')
disp(' makes it a square and not just any rectangle.)')
disp(' ')


%% ══ ROUND 3 · triangle, take two ═════════════════════════════════════════════
%
%     for side = 1:3
%         forward(100)
%         right(120)
%     end
%
%   Turning 120 at each corner... what appears?
%     A)  A triangle
%     B)  A hexagon
%     C)  Nothing closes — the turtle wanders off
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp('A TRIANGLE — 120 is the EXTERIOR angle (180 - 60).')
disp(' ')
disp('   #############')
disp('    #         #')
disp('     #       #')
disp('      #     #')
disp('       #   #')
disp('        # #')
disp('         #')
disp(' ')
disp('(3 turns x 120 = 360: one full spin, so the shape closes perfectly.)')
disp(' ')


%% ══ ROUND 4 · the 360 rule ═══════════════════════════════════════════════════
%
%     disp(5 * 72)
%
%   A turtle walks a full pentagon: five turns of 72 degrees each.
%   How many degrees did it turn IN TOTAL?
%     A)  360
%     B)  500
%     C)  72
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
disp(5 * 72)
disp(' ')
disp('(360 — one full spin. Triangle: 3 x 120 = 360. Square: 4 x 90 = 360.')
disp(' EVERY polygon: 360. That''s why the master formula is turn = 360 / n.)')
disp(' ')


%% ══ ROUND 5 · the invisible walk ═════════════════════════════════════════════
%
%     forward(100)
%     penup
%     forward(100)
%     pendown
%     forward(100)
%
%   The turtle walked 300 steps in a straight line. What got DRAWN?
%     A)  One 300-step line
%     B)  Two 100-step lines with a gap between them
%     C)  Nothing — the pen was up
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp('Two lines with a gap — a giant dash-dash:')
disp(' ')
disp('   ##########          ##########')
disp('             ^^^^^^^^^^')
disp('             the middle 100 steps: walked, but the pen was UP')
disp(' ')
disp('(penup doesn''t stop the turtle from moving — it stops it from DRAWING.)')
disp(' ')


%% ══ FINAL ROUND · for all the glory (sneaky!) ════════════════════════════════
%
%     for side = 1:4
%         forward(100)
%         right(100)
%     end
%
%   Four sides, four turns... but look CLOSELY at the turn. What appears?
%     A)  A square, just slightly tilted
%     B)  An open zigzag — the shape never closes
%     C)  An error — 100 degrees isn't allowed
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
disp('An OPEN zigzag — it never comes home! (rough sketch:)')
disp(' ')
disp('   ########')
disp('           #')
disp('            #')
disp('      ######## ...and off it goes, never closing.')
disp(' ')
disp('Why: 4 turns x 100 = 400 degrees, but closing a shape takes EXACTLY 360.')
disp('Those extra 40 degrees make every corner over-rotate, so the path drifts.')
disp('(Next week we do this ON PURPOSE — tiny angle changes make amazing art.)')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
