# ==============================================================================
#
#   WEEK 10 · PREDICT THE OUTPUT  —  the voting game
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


# ══ ROUND 1 · press the button ═══════════════════════════════════════════════
#
#     def double(x):
#         return x * 2
#
#     print(double(4))
#
#   What appears?
#     A)  8
#     B)  4
#     C)  x * 2
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
def double(x):
    return x * 2

print(double(4))
print()


# ══ ROUND 2 · machine feeding machine ════════════════════════════════════════
#
#     def double(x):
#         return x * 2
#
#     print(double(double(3)))
#
#   Inside out! What appears?
#     A)  6
#     B)  12
#     C)  9
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
def double(x):
    return x * 2

print(double(double(3)))
print()


# ══ ROUND 3 · two slots, order check ═════════════════════════════════════════
#
#     def area(width, height):
#         return width * height
#
#     print(area(3, 4))
#     print(area(4, 3))
#
#   TWO numbers print. What are they?
#     A)  12  then  12
#     B)  12  then  7
#     C)  34  then  43
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
def area(width, height):
    return width * height

print(area(3, 4))
print(area(4, 3))
print()


# ══ ROUND 4 · order strikes back ═════════════════════════════════════════════
#
#     def gap(a, b):
#         return a - b
#
#     print(gap(9, 2))
#     print(gap(2, 9))
#
#   Same swap as round 3... what appears?
#     A)  7  then  7
#     B)  7  then  -7
#     C)  7  then  0
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
def gap(a, b):
    return a - b

print(gap(9, 2))
print(gap(2, 9))
print()


# ══ ROUND 5 · the sneaky classic ═════════════════════════════════════════════
#
#     def mystery(x):
#         return x + 100
#
#     mystery(5)
#
#   Look VERY carefully. What appears?
#     A)  105
#     B)  Nothing at all
#     C)  Error — you can't call a function without print
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
def mystery(x):
    return x + 100

mystery(5)
# (the line below is not part of the round — it just narrates the emptiness)
print("           ...silence. The 105 was handed back, and nobody caught it.")
print()


# ══ FINAL ROUND · machine on a conveyor belt ═════════════════════════════════
#
#     def triple(x):
#         return x * 3
#
#     for i in range(1, 4):
#         print(triple(i))
#
#   What appears?
#     A)  3  6  9   (one per line)
#     B)  3  3  3   (one per line)
#     C)  1  2  3   (one per line)
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
def triple(x):
    return x * 3

for i in range(1, 4):
    print(triple(i))
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
