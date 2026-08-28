% ==============================================================================
%
%   WEEK 16 · PREDICT THE OUTPUT  —  THE GRAND FINALE TRIVIA
%
%   Six throwback rounds, each straight outta the week that taught it,
%   ending with a final boss and a trophy. The last voting game of the
%   course — keep score, crown a champion.
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C,
%       THEN you click the Command Window and press Enter to reveal.
%     · Ask someone who got it right to explain WHY — champions have duties.
%
%   ⭐ Before class: in the trophy banner at the very bottom, type this
%     year over the ____ (it's inside quotes — safe to edit). The ____ is
%     four characters and the year is four digits: a perfect swap that
%     keeps the banner's border aligned at 50 characters.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · straight outta WEEK 1 — where it all began ═════════════════════
%
%     disp('9 + 10')
%     disp(9 + 10)
%
%   What appears?
%     A)  19       then  19
%     B)  9 + 10   then  19
%     C)  9 + 10   then  9 + 10
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp('9 + 10')
disp(9 + 10)
disp(' ')


%% ══ ROUND 2 · straight outta WEEK 2 — the operator nobody trusted ════════════
%
%     disp(mod(2026, 10))
%
%   What appears?
%     A)  202.6
%     B)  202
%     C)  6
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp(mod(2026, 10))
disp(' ')


%% ══ ROUND 3 · straight outta WEEK 6 — the colon, one last time ═══════════════
%
%     for i = 2:6
%         fprintf('%d ', i)
%     end
%
%   What appears?
%     A)  2 3 4 5
%     B)  2 3 4 5 6
%     C)  1 2 3 4 5 6
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
for i = 2:6
    fprintf('%d ', i)
end
fprintf('\n')
disp(' ')


%% ══ ROUND 4 · straight outta WEEK 8 — counting like a human ══════════════════
%
%     word = 'MATLAB';
%     disp([word(2), word(1)])
%
%   What appears?
%     A)  MA
%     B)  AM
%     C)  AT
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
word = 'MATLAB';
disp([word(2), word(1)])
disp(' ')


%% ══ ROUND 5 · straight outta WEEK 10 — the machine that keeps its answer ═════
%
%   Suppose cheer.m contains this machine — it DISPLAYS, but look closely:
%   it never hands anything back (no output variable before the = sign):
%
%       function cheer(word)
%           disp([word, '!!!'])
%       end
%
%   Now we run:
%
%       result = cheer('GRADUATION');
%
%   What happens?
%     A)  GRADUATION!!!  appears, and result holds 'GRADUATION!!!'
%     B)  GRADUATION!!!  appears... then RED TEXT — there's nothing
%         for result to catch
%     C)  Nothing at all — the function refuses to run
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp('GRADUATION!!!')
disp('Error using cheer')
disp('Too many output arguments.')
disp('   (simulated reveal — that''s the red text MATLAB prints. cheer')
disp('    displays its cheer, but with no output in its function line,')
disp('    there is nothing for  result  to catch. Displaying is not')
disp('    handing back — the week 10 classic.)')
disp(' ')


%% ══ FINAL BOSS · weeks 6 + 8 + 9 walk into a loop ════════════════════════════
%
%     secret = 'CODER';
%     out = '';
%     for i = 1:5
%         if mod(i, 2) == 1
%             out = [out, secret(i)];
%         end
%     end
%     disp(out)
%
%   A loop, a remainder test, and text indexing — all at once. What appears?
%     A)  CDR
%     B)  OE
%     C)  CODER
%
input('FINAL BOSS — vote A/B/C... then press Enter to reveal: ', 's');
secret = 'CODER';
out = '';
for i = 1:5
    if mod(i, 2) == 1
        out = [out, secret(i)];
    end
end
disp(out)
disp(' ')


%% ══ THE TROPHY ═══════════════════════════════════════════════════════════════

input('And now... the trophy. Press Enter one last time: ', 's');
disp('             ___________')
disp('            ''._==_==_=_.''')
disp('            .-\:      /-.')
disp('           | (|:.     |) |')
disp('            ''-|:.     |-''')
disp('              \::.    /')
disp('               ''::. .''')
disp('                 ) (')
disp('               _.'' ''._')
disp('              ''-------''')
disp(' ')
disp(repmat('*', 1, 50))
disp('*    CLASS OF ____  -  YOU SPEAK MATLAB          *')
disp(repmat('*', 1, 50))
