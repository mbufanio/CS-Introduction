% ==============================================================================
%
%   WEEK 16  ·  'THE HAUNTED SCHOOL'  —  a complete text adventure
%
%   TO ANY STUDENT READING THIS AT HOME: everything in these files, you
%   learned. Every line. Here's the map of which week taught which trick:
%
%       disp() and strings ................. week 1
%       variables & the Workspace .......... week 2
%       input() and fprintf ................ week 3
%       if / elseif / else, true/false ..... week 4
%       randi — the randomness machine ..... week 5
%       for loops and repmat ............... week 6
%       while loops ........................ week 7
%       text indexing, double()/char() ..... week 8
%       the mod() wraparound (Caesar) ...... week 9
%       functions, one per file, inputs .... week 10
%
%   Show these files to your family. Then tell them YOU can read them —
%   because you can. (Free ways to RUN them at home are on the graduation
%   handout — GNU Octave runs this exact code.)
%
%   FOR THE TEACHER: this is (a) the emergency backup if the class game
%   isn't playable, and (b) the going-away gift. 8 rooms, 3 endings, a
%   secret key, a ciphered clue, and a ghost who appears 25% of the time.
%
%   The game, file by file (the Current Folder pane is the map):
%
%       lesson_demo.m             ← this script: title + play-again loop
%       haunted_entrance.m        ← the front hall (start here)
%       haunted_library.m         ← the ciphered clue lives here
%       haunted_science_lab.m     ← Larry has the key
%       haunted_hallway.m         ← 25% ghost encounter
%       haunted_gym.m             ← the crossroads
%       haunted_detention.m       ← the ghost's office
%       haunted_boiler_room.m     ← the suspicious wall
%       haunted_front_door.m      ← checks the has_key flag
%       haunted_ending_escape.m   ← ending 1: the key escape
%       haunted_ending_secret.m   ← ending 2: the legendary ending
%       haunted_ending_forever.m  ← ending 3: gym class forever
%       haunted_decode.m          ← the Caesar cipher machine (week 9)
%
%   The player's backpack — has_key, true or false — rides between rooms
%   as a function INPUT. Watch a room hand it to the next room like a
%   hall pass. That's the whole inventory system.
%
%   Keep the Current Folder set to this folder and run this script (F5).
%
% ==============================================================================


%% TITLE SCREEN + THE GAME LOOP

disp(repmat('*', 1, 50))                       % the repeater — week 6
disp('*            THE HAUNTED SCHOOL                  *')
disp('*     sixteen weeks of MATLAB, one ghost         *')
disp(repmat('*', 1, 50))

playing = 'Y';
while strcmp(playing, 'Y')                     % the game loop — week 7
    haunted_entrance(false)                    % every run starts with NO key:
    disp(' ')                                  % false rides in as has_key
    playing = upper(input('Play again? (Y/N): ', 's'));
end

disp(' ')
disp('The school powers down. It knows you''ll be back.')
disp('(You speak MATLAB now. Schools can tell.)')
