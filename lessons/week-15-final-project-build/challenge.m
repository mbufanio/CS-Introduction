% ==============================================================================
%
%   WEEK 15 · CHALLENGE — UPGRADE MODULES for the class game
%
%   Four bolt-on upgrades, each a tiny self-contained demo that runs right
%   here, right now — plus graft instructions for wiring it into the class
%   game next week. Demo one or two and let the class VOTE on which upgrade
%   their game deserves.
%
%   Run the whole file (F5), or one module at a time (Ctrl+Enter).
%
% ==============================================================================


%% MODULE 1 · HEALTH POINTS — give the player something to lose
% A health counter is just an accumulator (week 6) counting DOWN.
% ⭐ Watch the health box shrink in the Workspace as the dungeon does its work.

health = 3;
fprintf('You enter the dungeon with %d health.\n', health)

disp('A ceiling fan clips you! (-1)')
health = health - 1;
fprintf('   health: %d\n', health)

disp('You trip over a mop bucket! (-1)')
health = health - 1;
fprintf('   health: %d\n', health)

disp('A textbook falls on your head! (-1)')
health = health - 1;
fprintf('   health: %d\n', health)

if health == 0
    disp('Zero health! In the class game, this is where you''d')
    disp('call ending_bad() — no matter which room you''re in.')
end

% HOW TO GRAFT IT: rooms are functions, so the health number must be HANDED
% to each room like a hall pass — make rooms take it as an input
% (week 10):   function room_2(health)   ...and pass it on:  room_3(health - 1)
% Then any room can start with:
%     if health == 0
%         ending_bad()
%         return          ← return = leave this function right now (week 10)
%     end


%% MODULE 2 · THE RANDOM EVENT — a 10% chance the janitor appears
% One randi (week 5) + one if (week 4) = a game that's different every
% playthrough. Watch ten doors get opened:

disp('Testing the janitor alarm on 10 doors...')
for door = 1:10
    if randi(10) == 1                          % 1 out of 10 → 10% chance
        fprintf('  Door %d: THE JANITOR APPEARS! Everybody act natural!\n', door)
    else
        fprintf('  Door %d: ...all clear.\n', door)
    end
end

% HOW TO GRAFT IT: drop this right at the top of any room's function file —
%     if randi(10) == 1
%         disp('The janitor rounds the corner! You dive into Room 4!')
%         room_4()
%         return          ← return (week 10) stops the rest of the room
%     end
% Suddenly the same game plays differently every time. (Week 13 vocabulary
% bonus: ask the class how they'd TEST that it really fires 10% of the time.)


%% MODULE 3 · THE SECRET ITEM — a true/false flag that unlocks a door
% A flag variable rides along with the player: found the key or not?
% true and false are how programmers write 1 and 0 (week 4's logicals with
% names on) — watch has_key sit in the Workspace as a 1 or a 0.
% The same door behaves differently depending on the flag:

has_key = false;
disp('Without the key:')
if has_key
    disp('  CLICK. The golden key turns. The door swings open!')
else
    disp('  Locked. Solid. You need a key for this one.')
end

has_key = true;                                % the player found it in Room 3!
disp('After finding the key in Room 3:')
if has_key
    disp('  CLICK. The golden key turns. The door swings open!')
else
    disp('  Locked. Solid. You need a key for this one.')
end

% HOW TO GRAFT IT: same trick as health — hand the flag from room to room
% as a function input:
%     function room_3(has_key)   ...
%     room_4(true)      ← the player found the key here!
%     room_4(has_key)   ← just passing through, no key found
% Then one choice in a later room checks it:   if has_key, ending_good() ...
% (Week 16's demo game does exactly this — sneak preview.)


%% MODULE 4 · THE CIPHERED CLUE — week 9 rides again
% Scrawl a Caesar-shifted message (week 9) on a wall in one room; let the
% players decode it out loud, or let another room reveal the shift.
% The tiny decode loop, rebuilt from week 8 and 9 parts:

clue = 'WKH MDQLWRU KDV WKH NHB';
shift = 3;
message = '';
for i = 1:length(clue)                         % loop over the letters — week 8
    letter = clue(i);
    if letter == ' '                           % == is fine on a single character
        message = [message, ' '];              % spaces pass through untouched
    else
        spot = double(letter) - double('A');   % letter → number — week 8
        new_spot = mod(spot - shift, 26);      % shift back, wrap with mod — week 9!
        message = [message, char(new_spot + double('A'))];
    end
end

fprintf('A note on the closet wall reads:  %s\n', clue)
disp('The class decodes it (shift 3)...')
fprintf('  %s\n', message)

% HOW TO GRAFT IT: disp the scrambled clue in an early room. Hide the
% shift number in another room's description ('locker number 3, huh...').
% The class decoding it together on the smartboard IS the puzzle — the
% game never has to check their answer. Cruel bonus: make the clue hint
% at which final door is safe.

disp(' ')
disp('Four upgrades demoed. The class votes; the game levels up next week.')
