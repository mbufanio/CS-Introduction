function haunted_entrance(has_key)
% THE FRONT HALL — the game starts here.
% Every room takes has_key as an INPUT (week 10): the player's backpack,
% handed from room to room. true or false — that's the entire inventory
% system of this game (and in the Workspace it shows up as a 1 or a 0).

disp(' ')
disp(repmat('-', 1, 50))
disp('You''re the last student in HAWTHORNE MIDDLE after')
disp('dark. The front doors just locked THEMSELVES.')
disp('Lightning flashes. Somewhere, a locker slams.')
disp(' ')
disp('  A) Follow a flickering light into the library')
disp('  B) Take the dark stairs to the upstairs hallway')

choice = upper(input('Type A or B: ', 's'));           % input — week 3
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')     % while — week 7; strcmp — week 5
    choice = upper(input('The dark is patient. A or B: ', 's'));
end

if strcmp(choice, 'A')                                 % if/else — week 4
    haunted_library(has_key)
else
    haunted_hallway(has_key)
end
end
