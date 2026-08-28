% ==============================================================================
%   double_it.m  ·  WEEK 10  —  a named machine lives in its OWN file
%
%   MATLAB's rule: one named machine per file, and the file is named after
%   the machine. This file IS the machine.
%
%   The function line, decoded:
%
%       function out = double_it(x)
%                ↑          ↑      ↑
%          output slot    name   input slot
%
%   The machine's whole job is to FILL THE out BOX. Whatever is in out
%   when the machine finishes is what comes down the chute.
%
%   (Why not call it double? MATLAB already owns a machine named double —
%    week 8's letter x-ray! Names must be unique, so ours is double_it.)
% ==============================================================================

function out = double_it(x)
    out = x * 2;
end
