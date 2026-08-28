% ==============================================================================
%
%   WEEK 16 · POLISH TASKS  —  finishing touches for the class game
%
%   HOW THIS WORKS (teacher):
%     · Five standalone mini-sections, each a finishing touch the class can
%       vote onto their game. Each one RUNS right here (fill its blanks,
%       click in the section, Ctrl+Enter) — then graft it into the class
%       game per the note at the end of the section.
%     · Every blank looks like ____ ; kids call out what goes in it, you
%       type — wrong answers included. Running an unfilled blank stops with
%       "Unrecognized function or variable '____'" — that just means you
%       haven't gotten there yet.
%     · Short on time? TASK 5 (the credits roll) is the one that matters.
%
%   New-but-tiny today: pause(seconds) = "computer, hold this pause."
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1 · THE TITLE SCREEN
% Every great game opens with its name in lights. The class's game deserves
% the same. Both blanks are STRINGS (quotes!): the game's title, then a
% subtitle with swagger.

disp(repmat('*', 1, 50))     % the repeater builds the marquee — week 6
disp(____)          % ← the class game's name — add spaces in front to center it
disp(____)          % ← a subtitle, e.g. '   the director''s cut' or '   now with 100% more ghost'
disp(repmat('*', 1, 50))

% GRAFT: paste (filled) at the very top of the class game's script,
% replacing its plain title banner.


%% TASK 2 · THE PLAY-AGAIN LOOP
% A game that ends after one play is a demo. The while loop keeps the game
% alive as long as the player keeps saying yes. What answer — in quotes,
% and remember the upper()! — keeps this loop going?

again = 'Y';
while strcmp(again, ____)
    disp('(pretend one entire playthrough happens here)')
    again = upper(input('Play again? (Y/N): ', 's'));
end
disp('Thanks for playing!')

% GRAFT: the class game already has this loop at the bottom of its script —
% point at it and let the class recognize it. If their game somehow lost it,
% this is the replacement part.


%% TASK 3 · THE GAMES-PLAYED COUNTER
% Week 6's accumulator, working the door. First blank: what number does a
% counter start at? Second blank: how much does one playthrough add?
% ⭐ While it runs: watch the games_played box climb in the Workspace —
%    the box-office ticker, live.

games_played = ____;
again = 'Y';
while strcmp(again, 'Y')
    disp('(one playthrough!)')
    games_played = games_played + ____;
    again = upper(input('Play again? (Y/N): ', 's'));
end
fprintf('Games played today: %d\n', games_played)

% GRAFT: games_played = 0 goes above the class game's loop; the + line goes
% INSIDE the loop; the fprintf goes after it. Announce the total at the
% end of class like a box-office number.


%% TASK 4 · THE SUSPENSE PAUSE
% pause(seconds) makes the computer hold its breath. How many seconds
% of silence before the reveal? (1 is drama. 3 is agony. 10 is a nap.)

disp('You reach for the doorknob...')
pause(____)
disp('...it is ALREADY TURNING.')

% GRAFT: drop a pause(1) before any ending's first line in the class
% game. One second of silence on a smartboard is LOUD.


%% TASK 5 · THE CREDITS ROLL
% The paycheck. Every blank is a STRING naming real designers from the
% design sheets — read the names off the sheets and type them in. Nobody
% gets left out; check every sheet got a line.

disp(repmat('=', 1, 50))
disp('                C R E D I T S')
disp(repmat('=', 1, 50))
pause(1)
disp(____)          % ← 'Room 1 designed by: ' plus the real names from that sheet
pause(1)
disp(____)          % ← Room 2's designers
pause(1)
disp(____)          % ← Room 3's designers
pause(1)
disp(____)          % ← Room 4's designers
pause(1)
disp(____)          % ← Room 5's designers
pause(1)
disp(____)          % ← the endings + secret-room designers
pause(1)
disp(repmat('=', 1, 50))
disp('        Directed by: THIS ENTIRE CLASS')
disp(repmat('=', 1, 50))

% GRAFT: paste (filled) at the very bottom of the class game's script,
% AFTER the play-again loop ends — the credits roll once, when the player
% finally says N. Roll it during the last minute of class. Let it land.
