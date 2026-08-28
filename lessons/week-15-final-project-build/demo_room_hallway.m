function demo_room_hallway()
% ROOM 2 · THE HALLWAY

disp(' ')
disp(repmat('-', 1, 44))
disp('You burst into the HALLWAY, phone in hand.')
disp('Principal Ortega stands at the far end, reading')
disp('a clipboard. A fire-drill door is to your left.')
disp(' ')
disp('  A) Walk past casually. Be cool. BE COOL.')
disp('  B) Slip out the fire-drill door')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not a door. A or B: ', 's'));
end

if strcmp(choice, 'A')
    disp(' ')
    disp('You are extremely cool for nine entire steps.')
    disp('Then your left shoe squeaks like a fire alarm.')
    demo_ending_caught()
else
    demo_ending_free()
end
end
