# ==============================================================================
#
#   WEEK 16 · PREDICT THE OUTPUT  —  THE GRAND FINALE TRIVIA
#
#   Six throwback rounds, each straight outta the week that taught it,
#   ending with a final boss and a trophy. The last voting game of the
#   course — keep score, crown a champion.
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C,
#       THEN you press Enter in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY — champions have duties.
#
#   ⭐ Before class: in the trophy banner at the very bottom, type this
#     year over the ____ (it's inside quotes — safe to edit).
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · straight outta WEEK 1 — where it all began ═════════════════════
#
#     print("9 + 10")
#     print(9 + 10)
#
#   What appears?
#     A)  19       then  19
#     B)  9 + 10   then  19
#     C)  9 + 10   then  9 + 10
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print("9 + 10")
print(9 + 10)
print()


# ══ ROUND 2 · straight outta WEEK 2 — the operator nobody trusted ════════════
#
#     print(2026 % 10)
#
#   What appears?
#     A)  202.6
#     B)  202
#     C)  6
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print(2026 % 10)
print()


# ══ ROUND 3 · straight outta WEEK 6 — the range() trap, one last time ════════
#
#     for i in range(2, 6):
#         print(i)
#
#   What appears?
#     A)  2  3  4  5  6
#     B)  2  3  4  5
#     C)  1  2  3  4  5  6
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
for i in range(2, 6):
    print(i)
print()


# ══ ROUND 4 · straight outta WEEK 8 — counting from zero, forever ════════════
#
#     word = "PYTHON"
#     print(word[1] + word[0])
#
#   What appears?
#     A)  PY
#     B)  YP
#     C)  YT
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
word = "PYTHON"
print(word[1] + word[0])
print()


# ══ ROUND 5 · straight outta WEEK 10 — return vs print, the classic ══════════
#
#     def cheer(word):
#         print(word + "!!!")
#
#     result = cheer("GRADUATION")
#     print(result)
#
#   What appears?
#     A)  GRADUATION!!!   then   None
#     B)  GRADUATION!!!   and nothing else
#     C)  None            and nothing else
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
def cheer(word):
    print(word + "!!!")
result = cheer("GRADUATION")
print(result)
print()


# ══ FINAL BOSS · weeks 6 + 8 + 9 walk into a loop ════════════════════════════
#
#     secret = "CODER"
#     out = ""
#     for i in range(5):
#         if i % 2 == 0:
#             out = out + secret[i]
#     print(out)
#
#   A loop, a remainder test, and string indexing — all at once. What appears?
#     A)  CDR
#     B)  OE
#     C)  CODER
#
input("FINAL BOSS — vote A/B/C... then press Enter to reveal: ")
secret = "CODER"
out = ""
for i in range(5):
    if i % 2 == 0:
        out = out + secret[i]
print(out)
print()


# ══ THE TROPHY ═══════════════════════════════════════════════════════════════

input("And now... the trophy. Press Enter one last time: ")
print(r"             ___________")
print(r"            '._==_==_=_.'")
print(r"            .-\:      /-.")
print(r"           | (|:.     |) |")
print(r"            '-|:.     |-'")
print(r"              \::.    /")
print(r"               '::. .'")
print(r"                 ) (")
print(r"               _.' '._")
print(r"              '-------'")
print()
print("*" * 50)
print("*    CLASS OF ____  —  YOU SPEAK PYTHON          *")
print("*" * 50)
