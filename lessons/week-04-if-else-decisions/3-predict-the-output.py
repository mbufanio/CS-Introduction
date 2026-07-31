# ==============================================================================
#
#   WEEK 4 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C
#       (hands up, fingers, or shouting — your call), THEN you press Enter
#       in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#     · Round 4 is the trap of the week — let them argue BEFORE the reveal.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     print(10 > 9)
#
#   What appears on the screen?
#     A)  True
#     B)  yes
#     C)  10 > 9
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print(10 > 9)
print()


# ══ ROUND 2 · the skipped block ══════════════════════════════════════════════
#
#     x = 5
#     if x > 100:
#         print("HUGE number!")
#     print("done")
#
#   What appears?
#     A)  HUGE number!  then  done
#     B)  only:  done
#     C)  Nothing at all
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
x = 5
if x > 100:
    print("HUGE number!")
print("done")
print()


# ══ ROUND 3 · boundary patrol ════════════════════════════════════════════════
#
#     age = 13
#     if age >= 13:
#         print("Teenager!")
#     else:
#         print("Not yet!")
#
#   Exactly ON the boundary. What appears?
#     A)  Teenager!     (>= includes 13 — closed circle)
#     B)  Not yet!      (13 isn't MORE than 13)
#     C)  Both lines
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
age = 13
if age >= 13:
    print("Teenager!")
else:
    print("Not yet!")
print()


# ══ ROUND 4 · the elif trap ══════════════════════════════════════════════════
#
#     score = 95
#     if score >= 50:
#         print("You pass!")
#     elif score >= 90:
#         print("AMAZING SCORE!")
#
#   95 is bigger than BOTH numbers... so what appears?
#     A)  You pass!  then  AMAZING SCORE!
#     B)  only:  AMAZING SCORE!
#     C)  only:  You pass!
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
score = 95
if score >= 50:
    print("You pass!")
elif score >= 90:
    print("AMAZING SCORE!")
print()


# ══ ROUND 5 · one asks, two puts... wait, which? ═════════════════════════════
#
#     x = 7
#     print(x == 10)
#
#   What appears?
#     A)  True — x is a number and 10 is a number
#     B)  False
#     C)  10 — the box gets replaced
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
x = 7
print(x == 10)
print()


# ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
#
#     x = 5
#     if x = 5:
#         print("five!")
#
#   LOOK VERY closely at line 2. What happens?
#     A)  five!
#     B)  True
#     C)  It won't even start — SyntaxError (and Python suggests the fix)
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
# That 'if x = 5:' line would REALLY refuse to run — a file containing it
# never starts at all. So the reveal below is a SIMULATION — a print() of
# the genuine error text, so the game can go on:
print('  File "3-predict-the-output.py", line 118')
print('    if x = 5:')
print('       ^^^^^')
print("SyntaxError: invalid syntax. Maybe you meant '==' or ':=' instead of '='?")
print()

print("========================================")
print("Game over! Count up your points, class.")
print("One equals PUTS. Two equals ASKS.")
print("========================================")
