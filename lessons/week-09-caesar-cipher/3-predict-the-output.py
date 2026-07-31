# ==============================================================================
#
#   WEEK 9 · PREDICT THE OUTPUT  —  the voting game
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


# ══ ROUND 1 · clock warm-up ══════════════════════════════════════════════════
#
#     print((25 + 3) % 26)
#
#   What appears?
#     A)  28
#     B)  2
#     C)  0
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print((25 + 3) % 26)
print()


# ══ ROUND 2 · the edge of the clock ══════════════════════════════════════════
#
#     print(27 % 26)
#     print(26 % 26)
#
#   TWO numbers print. What are they?
#     A)  1  then  0
#     B)  1  then  1
#     C)  27  then  26
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print(27 % 26)
print(26 % 26)
print()


# ══ ROUND 3 · secret-number subtraction ══════════════════════════════════════
#
#     print(ord("B") - ord("A"))
#
#   What appears?
#     A)  0
#     B)  1
#     C)  66
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print(ord("B") - ord("A"))
print()


# ══ ROUND 4 · Z meets the formula ════════════════════════════════════════════
#
#     position = ord("Z") - ord("A")
#     new_position = (position + 1) % 26
#     print(chr(new_position + ord("A")))
#
#   Z, shifted by 1. What appears?
#     A)  A
#     B)  Z
#     C)  [
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
position = ord("Z") - ord("A")
new_position = (position + 1) % 26
print(chr(new_position + ord("A")))
print()


# ══ ROUND 5 · the sneaky one ═════════════════════════════════════════════════
#
#     position = ord("Y") - ord("A")
#     new_position = (position + 3) % 26
#     print(chr(new_position + ord("A")))
#
#   Y, shifted by 3. Careful — count on the clock, not the ruler...
#     A)  B
#     B)  \
#     C)  Z
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
position = ord("Y") - ord("A")
new_position = (position + 3) % 26
print(chr(new_position + ord("A")))
print()


# ══ FINAL ROUND · a real encode, start to finish ═════════════════════════════
#
#     secret = ""
#     for letter in "A B":
#         if letter == " ":
#             secret = secret + " "
#         else:
#             position = ord(letter) - ord("A")
#             new_position = (position + 1) % 26
#             secret = secret + chr(new_position + ord("A"))
#     print(secret)
#
#   The message "A B", shift 1. What appears?
#     A)  B C
#     B)  BC
#     C)  B!C
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
secret = ""
for letter in "A B":
    if letter == " ":
        secret = secret + " "
    else:
        position = ord(letter) - ord("A")
        new_position = (position + 1) % 26
        secret = secret + chr(new_position + ord("A"))
print(secret)
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
