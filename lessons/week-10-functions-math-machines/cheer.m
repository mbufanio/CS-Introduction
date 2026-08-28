% ==============================================================================
%   cheer.m  ·  WEEK 10  —  a machine with NO output slot
%
%   Look at the function line: there is no  out =  before the name!
%
%       function cheer(name)
%
%   This machine PERFORMS instead of handing back a number — its insides
%   are disp lines. (double_it CALCULATES and hands back; cheer PERFORMS
%   and hands back NOTHING. Machines can do either.)
%
%   That's why  result = cheer('Ada')  is an ERROR: there is nothing on
%   the chute to catch. MATLAB says: "Too many output arguments."
%
%   ⭐ LIVE-EDIT MOMENT (from the demo): change the second disp line —
%      the class writes the new chant, keep it kind — save, and re-run
%      the demo section. Every call updates. Fix the machine once,
%      every cheer improves.
% ==============================================================================

function cheer(name)
    disp(['Gimme a ', upper(name), '!'])
    disp(['    ', name, ' is unstoppable! WOOO!'])
end
