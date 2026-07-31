# ==============================================================================
#
#   WEEK 2 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C
#       (hands up, fingers, or shouting — your call), THEN you press Enter
#       in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     x = 5
#     print(x)
#
#   What appears on the screen?
#     A)  5
#     B)  x
#     C)  x = 5
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
x = 5
print(x)
print()


# ══ ROUND 2 · the sneaky twin ════════════════════════════════════════════════
#
#     x = 5
#     print("x")
#
#   Almost the same... but LOOK CLOSELY. What appears?
#     A)  5
#     B)  x
#     C)  "x"
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
x = 5
print("x")
print()


# ══ ROUND 3 · PEMDAS showdown ════════════════════════════════════════════════
#
#     print(2 + 3 * 4)
#
#   What appears?
#     A)  20   (left to right: 2+3 is 5, times 4)
#     B)  14   (multiply first, like math class)
#     C)  2 + 3 * 4
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print(2 + 3 * 4)
print()


# ══ ROUND 4 · the box gets updated ═══════════════════════════════════════════
#
#     score = 10
#     score = score + 5
#     score = score + 5
#     print(score)
#
#   What appears?
#     A)  10
#     B)  15
#     C)  20
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
score = 10
score = score + 5
score = score + 5
print(score)
print()


# ══ ROUND 5 · pizza flashback ════════════════════════════════════════════════
#
#     print(17 // 5)
#     print(17 % 5)
#
#   What appears (two lines)?
#     A)  3  then  2
#     B)  2  then  3
#     C)  3.4  then  0
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print(17 // 5)
print(17 % 5)
print()


# ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
#
#     a = 2
#     b = a ** 3
#     a = 10
#     print(b)
#
#   The trap of traps. What appears?
#     A)  8     (b was filled when a was 2 — and a box remembers VALUES)
#     B)  1000  (b updates itself when a changes)
#     C)  Error — you can't change a after using it
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
a = 2
b = a ** 3
a = 10
print(b)
print()

print("========================================")
print("Game over! Count up your points, class.")
print("A box stores a VALUE, not a formula.")
print("========================================")
