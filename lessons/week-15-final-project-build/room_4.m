function room_4()
% ROOM 4 — fill from the Room 4 design sheet

disp(' ')
disp(repmat('-', 1, 50))
disp(____)          % ← Room 4 sheet: 'what the player sees', sentence 1 (in quotes!)
disp(____)          % ← sentence 2
disp(' ')
disp(____)          % ← choice A text — type it starting with 'A) '
disp(____)          % ← choice B text — starting with 'B) '

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    % ← TYPE IT LIVE: the room the Room 4 sheet says choice A leads to —
    %   e.g.  room_2()  — one of: room_2() room_3() room_4() room_5()
    %                             ending_good() ending_bad()
else
    % ← TYPE IT LIVE: where the sheet says choice B leads
end
end
