# ==============================================================================
#
#   WEEK 3 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C
#       (hands up, fingers, or shouting — your call), THEN you press Enter
#       in the terminal to reveal the answer.
#     · NEW THIS WEEK: rounds 1 and 6 contain input() — after the reveal
#       Enter, the program will ask a question. Type EXACTLY the answer
#       written in the round's comment, so the whole class predicted the
#       same thing.
#     · Ask someone who got it right to explain WHY.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     name = input("Name? ")          ← the teacher will type:  Marcus
#     print(f"Hello, {name}!")
#
#   What appears after Marcus is typed?
#     A)  Hello, Marcus!
#     B)  Hello, name!
#     C)  Hello, {name}!
#
input("ROUND 1 — vote A/B/C... press Enter, then type Marcus when asked: ")
name = input("Name? ")
print(f"Hello, {name}!")
print()


# ══ ROUND 2 · the twins strike back ══════════════════════════════════════════
#
#     print("5" + "5")
#
#   What appears?
#     A)  10
#     B)  55
#     C)  Error — you can't add strings
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print("5" + "5")
print()


# ══ ROUND 3 · the missing f ══════════════════════════════════════════════════
#
#     name = "Zoe"
#     print("Hi, {name}! Welcome back!")
#
#   LOOK CLOSELY at the second line. What appears?
#     A)  Hi, Zoe! Welcome back!
#     B)  Hi, {name}! Welcome back!
#     C)  Error — braces need an f-string
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
name = "Zoe"
print("Hi, {name}! Welcome back!")
print()


# ══ ROUND 4 · the converter ══════════════════════════════════════════════════
#
#     print(int("10") + 5)
#
#   What appears?
#     A)  105
#     B)  15
#     C)  Error — "10" is a string
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print(int("10") + 5)
print()


# ══ ROUND 5 · double or glue? ════════════════════════════════════════════════
#
#     print(7 + 7)
#     print("7" + "7")
#
#   What appears (two lines)?
#     A)  14  then  14
#     B)  77  then  77
#     C)  14  then  77
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print(7 + 7)
print("7" + "7")
print()


# ══ FINAL ROUND · today's disaster, one more time ════════════════════════════
#
#     age = input("Age? ")            ← the teacher will type:  12
#     print(age + 1)
#
#   What appears after 12 is typed?
#     A)  13
#     B)  121
#     C)  It crashes — you can't glue a number onto a string
#
input("FINAL ROUND — vote A/B/C... press Enter, then type 12 when asked: ")
age = input("Age? ")
# The print(age + 1) line would REALLY crash, so the reveal below is a
# SIMULATION — a print() of the genuine error text, so the game can go on:
print('Traceback (most recent call last):')
print('  File "3-predict-the-output.py", line 106, in <module>')
print('    print(age + 1)')
print('TypeError: can only concatenate str (not "int") to str')
print()

print("========================================")
print("Game over! Count up your points, class.")
print("input() hands you a STRING. Always.")
print("========================================")
