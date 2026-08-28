function demo_room_lounge()
% ROOM 1 · THE TEACHERS' LOUNGE  (the game starts here)
% A room leading to a room: the whole game is functions calling
% functions (week 10). Follow the calls and you've drawn the map.

disp(' ')
disp(repmat('-', 1, 44))
disp('You''ve snuck into the forbidden TEACHERS'' LOUNGE')
disp('to rescue your confiscated phone. There it is —')
disp('in the snack cupboard, guarded by the world''s')
disp('oldest coffee machine. Footsteps approach!')
disp(' ')
disp('  A) Grab the phone and SPRINT for the hallway')
disp('  B) Grab the phone and dive into the floor vent')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('Quick, they''re coming! A or B: ', 's'));
end

if strcmp(choice, 'A')
    demo_room_hallway()
else
    demo_room_closet()
end
end
