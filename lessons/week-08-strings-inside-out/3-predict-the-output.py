# ==============================================================================
#
#   WEEK 8 · PREDICT THE OUTPUT  —  the voting game
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


# ══ ROUND 1 · the address trap ═══════════════════════════════════════════════
#
#     word = "PYTHON"
#     print(word[1])
#
#   What appears?
#     A)  P
#     B)  Y
#     C)  PY
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
word = "PYTHON"
print(word[1])
print()


# ══ ROUND 2 · the measuring tape ═════════════════════════════════════════════
#
#     print(len("hello"))
#
#   What appears?
#     A)  4
#     B)  5
#     C)  6
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print(len("hello"))
print()


# ══ ROUND 3 · the fence ══════════════════════════════════════════════════════
#
#     word = "COMPUTER"
#     print(word[0:3])
#
#   What appears?
#     A)  COM
#     B)  COMP
#     C)  CO
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
word = "COMPUTER"
print(word[0:3])
print()


# ══ ROUND 4 · text arithmetic ════════════════════════════════════════════════
#
#     print("ha" * 3)
#
#   Multiplying... TEXT? What appears?
#     A)  hahaha
#     B)  ha3
#     C)  Nothing — it's an error, you can't multiply words
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print("ha" * 3)
print()


# ══ ROUND 5 · secret-number arithmetic ═══════════════════════════════════════
#
#     print(chr(ord("A") + 1))
#
#   Work from the inside out. What appears?
#     A)  A1
#     B)  B
#     C)  66
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print(chr(ord("A") + 1))
print()


# ══ FINAL ROUND · the sneaky one — for all the glory ═════════════════════════
#
#     word = "whisper"
#     print(word.upper())
#     print(word)
#
#   TWO lines print. What are they?
#     A)  WHISPER  then  WHISPER
#     B)  WHISPER  then  whisper
#     C)  whisper  then  whisper
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
word = "whisper"
print(word.upper())
print(word)
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
