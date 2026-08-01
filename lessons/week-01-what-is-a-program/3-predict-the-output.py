# ==============================================================================
#
#   WEEK 1 · PREDICT THE OUTPUT  —  the voting game
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
#     print("Hello, class!")
#
#   What appears on the screen?
#     A)  Hello, class!
#     B)  print("Hello, class!")
#     C)  Nothing — it's an error
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print("Hello, class!")
print()


# ══ ROUND 2 · order matters ══════════════════════════════════════════════════
#
#     print("banana")
#     print("apple")
#
#   What appears?
#     A)  apple  then  banana   (alphabetical order — computers are tidy!)
#     B)  banana  then  apple   (top to bottom, always)
#     C)  Both on one line
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print("banana")
print("apple")
print()


# ══ ROUND 3 · math or string? ════════════════════════════════════════════════
#
#     print(5 + 5)
#
#   What appears?
#     A)  5 + 5
#     B)  10
#     C)  55
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print(5 + 5)
print()


# ══ ROUND 4 · the sneaky twin ════════════════════════════════════════════════
#
#     print("5 + 5")
#
#   Same as round 3... but LOOK CLOSELY. What appears?
#     A)  5 + 5
#     B)  10
#     C)  Error — you can't put math in quotes
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print("5 + 5")
print()


# ══ ROUND 5 · comments ═══════════════════════════════════════════════════════
#
#     # print("I am first!")
#     print("I am second!")
#
#   What appears?
#     A)  I am first!  then  I am second!
#     B)  Only:  I am second!
#     C)  Error — the first line is broken
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
# print("I am first!")
print("I am second!")
print()


# ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
#
#     print("The answer is")
#     print(10 + 4)
#     print("...not")
#     print("10 + 4")
#
#   How many LINES print, and does '14' appear in any of them?
#     A)  4 lines, and yes — 14 appears
#     B)  4 lines, and no — it prints '10 + 4' every time
#     C)  2 lines only
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
print("The answer is")
print(10 + 4)
print("...not")
print("10 + 4")
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
