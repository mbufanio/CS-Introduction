function haunted_science_lab(has_key)
% THE SCIENCE LAB — where the secret item enters the backpack

disp(' ')
disp(repmat('-', 1, 50))
disp('The science lab. LARRY, the anatomy skeleton,')
disp('has something new: a BRASS KEY on a string around')
disp('his neck, and a sticky note: ''FRONT DOOR. -L''')
disp(' ')
disp('  A) Take the key and sprint for the front door')
disp('  B) Leave it (it''s Larry''s) and slip into the gym')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('Larry waits politely. A or B: ', 's'));
end

if strcmp(choice, 'A')
    disp(' ')
    disp('You lift the key. Larry''s jaw drops. Rude.')
    haunted_front_door(true)               % the backpack now holds the key!
else                                       % (we pass true, not has_key — week 10)
    haunted_gym(has_key)
end
end
