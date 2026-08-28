% ==============================================================================
%
%   WEEK 15 · THE CLASS GAME SKELETON  —  the class designs it, you type it
%
%   HOW THIS WORKS (teacher):
%     · This is not an exercise file — it's THE actual class game, empty.
%     · The engine is already built and spread across this folder the
%       MATLAB way — one room per file, exactly like the demo:
%
%           fill_in_the_blank.m   ← this script: title + play-again loop
%           room_1.m ... room_5.m ← the five rooms (blanks inside!)
%           ending_good.m         ← the WIN ending (blanks inside)
%           ending_bad.m          ← the LOSE ending (blanks inside)
%
%     · The BLANKS are where the class's STORY goes. Every blank looks
%       like ____ and its comment names the design-sheet field to read
%       from. Type the group's words (in quotes!) and run.
%     · Fill the title below first, then open room files in whatever order
%       design sheets arrive. Running past an unfilled blank stops with
%       "Unrecognized function or variable '____'" — that's just the game
%       telling you which room isn't written yet.
%     · WIRING THE MAP: each room file ends with an if/else whose branches
%       are empty except for a comment — that's where you TYPE the call to
%       whatever room the class's map says the choice leads to, one of:
%           room_2()   room_3()   room_4()   room_5()
%           ending_good()   ending_bad()
%       (Type it live — function name, parentheses, no quotes.)
%     · Keep the Current Folder set to THIS folder, or MATLAB can't find
%       the rooms.
%
%   A complete sample filling (in case designs stall): answer-key.md
%
% ==============================================================================


%% TITLE SCREEN + GAME LOOP — already wired; only the title is a blank

disp(repmat('*', 1, 50))
disp(____)              % ← THE GAME'S NAME, in quotes — the class's first decision!
disp(repmat('*', 1, 50))

playing = 'Y';
while strcmp(playing, 'Y')
    room_1()             % every playthrough starts at Room 1 (room_1.m)
    disp(' ')
    playing = upper(input('Play again? (Y/N): ', 's'));
end

disp(' ')
disp('Designed by this class. See you next week for the grand opening.')
