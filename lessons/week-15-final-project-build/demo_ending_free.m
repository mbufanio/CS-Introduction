function demo_ending_free()
% THE WIN ENDING — a room where the game stops: no choice, no next room.
% An ending is just a function that displays a scene... and calls nobody.

disp(' ')
disp(repmat('*', 1, 44))                             % the repeater — week 6
disp('You shove the door open into glorious daylight')
disp('just as the bell rings. Phone: rescued.')
disp('Dignity: mostly intact.   >>> YOU WIN! <<<')
disp(repmat('*', 1, 44))
end
