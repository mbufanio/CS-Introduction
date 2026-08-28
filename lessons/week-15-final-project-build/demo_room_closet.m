function demo_room_closet()
% ROOM 3 · THE SUPPLY CLOSET
% Every room has the same skeleton: display the scene, ask for a choice,
% call the next room. Three moves. That's a whole game engine.

disp(' ')
disp(repmat('-', 1, 44))
disp('The floor vent spits you into the SUPPLY CLOSET —')     % disp — week 1
disp('a jungle of mops and a fort of paper towels.')
disp('Two doors: one marked EXIT, one marked')
disp('''ABSOLUTELY NOT AN EXIT''.')
disp(' ')
disp('  A) Take the door marked EXIT')
disp('  B) Take the door marked ABSOLUTELY NOT AN EXIT')

choice = upper(input('Type A or B: ', 's'));                  % input — week 3; upper forgives 'a'
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')            % while — week 7; strcmp — week 5
    choice = upper(input('That''s not a door. A or B: ', 's'));
end

if strcmp(choice, 'A')                                        % if/else — week 4
    disp(' ')
    disp('The EXIT opens directly into... the main office.')
    disp('Of course it does.')
    demo_ending_caught()                                      % calling a function — week 10
else
    disp(' ')
    disp('The janitor labels doors to keep kids out.')
    disp('This one leads straight outside.')
    demo_ending_free()
end
end
