% ==============================================================================
%
%   WEEK 15  ·  FINAL PROJECT  —  'ESCAPE THE TEACHERS'' LOUNGE'
%
%   A complete text adventure. Play it FIRST (the class shouts the
%   choices), explain it SECOND. Because here's the secret:
%
%       THERE IS NOTHING NEW IN THIS LESSON.
%
%   Every single technique has a week number next to it. This is the
%   course's greatest-hits album — and next week the class plays THEIR OWN.
%
%   The shape of a text adventure:
%     · each ROOM is a function IN ITS OWN FILE      (functions — week 10)
%     · each room DISPLAYS a scene                   (disp — week 1)
%     · each room ASKS for a choice                  (input(...,'s') — week 3)
%     · the choice DECIDES the next room             (if/else — week 4)
%     · ...and the next room is just a function call (week 10 again)
%
%   The whole game, file by file (look at the Current Folder pane —
%   the game's map is sitting right there as a list of files):
%
%       lesson_demo.m         ← this script: title screen + play-again loop
%       demo_room_lounge.m    ← room 1: the teachers' lounge (start here)
%       demo_room_hallway.m   ← room 2: the hallway
%       demo_room_closet.m    ← room 3: the supply closet
%       demo_ending_free.m    ← the WIN ending
%       demo_ending_caught.m  ← the LOSE ending
%
%   TEACHER: MATLAB's rule — one named function per file, named after
%   itself — means "each room lives in its own file." Keep the Current
%   Folder set to this folder so MATLAB can find every room. Run this
%   script (F5) to play; type the class's shouted A/B votes.
%
% ==============================================================================


%% THE GAME ITSELF — a title screen and a play-again loop. That's it.

disp(repmat('*', 1, 44))                       % the repeater — week 6
disp('*      ESCAPE THE TEACHERS'' LOUNGE         *')
disp('*      a text adventure by this class      *')
disp(repmat('*', 1, 44))

playing = 'Y';
while strcmp(playing, 'Y')                     % the game loop — week 7
    demo_room_lounge()                         % start the story (room 1's file)
    disp(' ')
    playing = upper(input('Play again? (Y/N): ', 's'));
    % ⭐ Workspace moment: watch the playing box flip between Y and N —
    %    the single letter holding the whole game open.
end

disp(' ')
disp('Thanks for playing. Next week: YOUR story runs here.')
