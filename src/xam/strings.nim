# xam
# ===
# STRINGS CONSTANTS AND ROUTINES

# CONSTANTS

const
  STRINGS_EMPTY*: string = ""
  STRINGS_EOL*: string = "\p" # see https://nim-lang.org/docs/manual.html#lexical-analysis-string-literals

  # SYMBOLS
  STRINGS_TAB*: string = "\t"
  STRINGS_LF*: string = "\n"
  STRINGS_CR*: string = "\r"
  STRINGS_SPACE*: string = " "
  STRINGS_EQUAL*: string = "="
  STRINGS_NUMERAL*: string = "#"
  STRINGS_PIPE*: string = "|"
  STRINGS_MINUS*: string = "-"
  STRINGS_PLUS*: string = "+"
  STRINGS_PERCENT*: string = "%"
  STRINGS_DOLLAR*: string = "$"
  STRINGS_SLASH*: string = "/"
  STRINGS_BACKSLASH*: string = "\\"
  STRINGS_AMPERSAND*: string = "&"
  STRINGS_ASTERISK*: string = "*"
  STRINGS_UNDERSCORE*: string = "_"
  STRINGS_COLON*: string = ":"
  STRINGS_SEMICOLON*: string = ";"
  STRINGS_COMMA*: string = ","
  STRINGS_PERIOD*: string = "."
  STRINGS_APOSTROPHE*: string = "'"
  STRINGS_QUOTE*: string = "\""
  STRINGS_CARET*: string = "^"
  STRINGS_TILDE*: string = "~"
  STRINGS_AT*: string = "@"
  STRINGS_EXCLAMATION*: string = "!"
  STRINGS_QUESTION*: string = "?"
  STRINGS_INVERTED_EXCLAMATION*: string = "¡"
  STRINGS_INVERTED_QUESTION*: string = "¿"
  STRINGS_DEGREE*: string = "°"
  STRINGS_COPYRIGHT*: string = "©"
  STRINGS_REGISTERED*: string = "®"
  STRINGS_TRADEMARK*: string = "™"
  STRINGS_BULLET*: string = "•"
  STRINGS_PILCROW*: string = "¶"
  STRINGS_SECTION*: string = "§"
  STRINGS_MINOR*: string = "<"
  STRINGS_MAJOR*: string = ">"
  STRINGS_BRACES_OPEN*: string = "{"
  STRINGS_BRACES_CLOSE*: string = "}"
  STRINGS_BRACKETS_OPEN*: string = "["
  STRINGS_BRACKETS_CLOSE*: string = "]"
  STRINGS_PARENTHESES_OPEN*: string = "("
  STRINGS_PARENTHESES_CLOSE*: string = ")"
  
  # NUMBERS
  STRINGS_NUMBER_ZERO*: string = "0"
  STRINGS_NUMBER_ONE*: string = "1"
  STRINGS_NUMBER_TWO*: string = "2"
  STRINGS_NUMBER_THREE*: string = "3"
  STRINGS_NUMBER_FOUR*: string = "4"
  STRINGS_NUMBER_FIVE*: string = "5"
  STRINGS_NUMBER_SIX*: string = "6"
  STRINGS_NUMBER_SEVEN*: string = "7"
  STRINGS_NUMBER_EIGHT*: string = "8"
  STRINGS_NUMBER_NINE*: string = "9"
  
  # UPPERCASE LETTERS
  STRINGS_UPPERCASE_A*: string = "A"
  STRINGS_UPPERCASE_B*: string = "B"
  STRINGS_UPPERCASE_C*: string = "C"
  STRINGS_UPPERCASE_D*: string = "D"
  STRINGS_UPPERCASE_E*: string = "E"
  STRINGS_UPPERCASE_F*: string = "F"
  STRINGS_UPPERCASE_G*: string = "G"
  STRINGS_UPPERCASE_H*: string = "H"
  STRINGS_UPPERCASE_I*: string = "I"
  STRINGS_UPPERCASE_J*: string = "J"
  STRINGS_UPPERCASE_K*: string = "K"
  STRINGS_UPPERCASE_L*: string = "L"
  STRINGS_UPPERCASE_M*: string = "M"
  STRINGS_UPPERCASE_N*: string = "N"
  STRINGS_UPPERCASE_O*: string = "O"
  STRINGS_UPPERCASE_P*: string = "P"
  STRINGS_UPPERCASE_Q*: string = "Q"
  STRINGS_UPPERCASE_R*: string = "R"
  STRINGS_UPPERCASE_S*: string = "S"
  STRINGS_UPPERCASE_T*: string = "T"
  STRINGS_UPPERCASE_U*: string = "U"
  STRINGS_UPPERCASE_V*: string = "V"
  STRINGS_UPPERCASE_W*: string = "W"
  STRINGS_UPPERCASE_X*: string = "X"
  STRINGS_UPPERCASE_Y*: string = "Y"
  STRINGS_UPPERCASE_Z*: string = "Z"

  # LOWERCASE LETTERS
  STRINGS_LOWERCASE_A*: string = "a"
  STRINGS_LOWERCASE_B*: string = "b"
  STRINGS_LOWERCASE_C*: string = "c"
  STRINGS_LOWERCASE_D*: string = "d"
  STRINGS_LOWERCASE_E*: string = "e"
  STRINGS_LOWERCASE_F*: string = "f"
  STRINGS_LOWERCASE_G*: string = "g"
  STRINGS_LOWERCASE_H*: string = "h"
  STRINGS_LOWERCASE_I*: string = "i"
  STRINGS_LOWERCASE_J*: string = "j"
  STRINGS_LOWERCASE_K*: string = "k"
  STRINGS_LOWERCASE_L*: string = "l"
  STRINGS_LOWERCASE_M*: string = "m"
  STRINGS_LOWERCASE_N*: string = "n"
  STRINGS_LOWERCASE_O*: string = "o"
  STRINGS_LOWERCASE_P*: string = "p"
  STRINGS_LOWERCASE_Q*: string = "q"
  STRINGS_LOWERCASE_R*: string = "r"
  STRINGS_LOWERCASE_S*: string = "s"
  STRINGS_LOWERCASE_T*: string = "t"
  STRINGS_LOWERCASE_U*: string = "u"
  STRINGS_LOWERCASE_V*: string = "v"
  STRINGS_LOWERCASE_W*: string = "w"
  STRINGS_LOWERCASE_X*: string = "x"
  STRINGS_LOWERCASE_Y*: string = "y"
  STRINGS_LOWERCASE_Z*: string = "z"

# ROUTINES

from strutils import Digits, Letters, strip

func concat*(strings: varargs[string]): string {.inline.} =
  ## Concatenates the specified string values.
  result = STRINGS_EMPTY
  for s in strings:
    result &= s

func enclose*(s: string, chr: char): string {.inline.} =
  ## Encloses the specified string between the specified char.
  $chr & s & $chr

func enclose*(s: string, borders: string): string {.inline.} =
  ## Encloses the specified string between the specified borders string.
  borders & s & borders

func apostrophe*(s: string): string {.inline.} =
  ## Encloses the specified string between apostrophes.
  STRINGS_APOSTROPHE & s & STRINGS_APOSTROPHE

func quote*(s: string): string {.inline.} =
  ## Encloses the specified string between quotes.
  STRINGS_QUOTE & s & STRINGS_QUOTE

func brace*(s: string): string {.inline.} =
  ## Encloses the specified string between braces.
  concat(STRINGS_BRACES_OPEN, s, STRINGS_BRACES_CLOSE)

func bracketize*(s: string): string {.inline.} =
  ## Encloses the specified string between brackets.
  concat(STRINGS_BRACKETS_OPEN, s, STRINGS_BRACKETS_CLOSE)

func parenthesize*(s: string): string {.inline.} =
  ## Encloses the specified string between parenthesis.
  concat(STRINGS_PARENTHESES_OPEN, s, STRINGS_PARENTHESES_CLOSE)

func chevronize*(s: string): string {.inline.} =
  ## Encloses the specified string between chevrons.
  concat(STRINGS_MINOR, s, STRINGS_MAJOR)

func hasContent*(s: string): bool {.inline.} =
  ## Determines if the specified string is not empty.
  s.len > 0

func haveContent*(strings: varargs[string]): bool {.inline.} =
  ## Determines if the specified strings are not empty.
  result = strings.len > 0
  for s in strings:
    result = result and hasContent(s)

func hasText*(s: string): bool {.inline.} =
  ## Determines if the specified string has text.
  ## NOTE: white space is ignored.
  strip(s).len > 0

func haveText*(strings: varargs[string]): bool {.inline.} =
  ## Determines if the specified strings have text.
  ## NOTE: white space is ignored.
  result = strings.len > 0
  for s in strings:
    result = result and hasText(s)

func leftCount*(s: string, sub: char): int {.inline.} =
  ## Count the occurrences of the character `sub` in the left size (head) of the string `s`.
  ## NOTE: specialized version of the strutils.count.
  result = 0
  for c in s:
    if c == sub:
      inc result
    else:
      break

func rightCount*(s: string, sub: char): int {.inline.} =
  ## Count the occurrences of the character `sub` in the right side (trail) of the string `s`.
  ## NOTE: specialized version of the strutils.count.
  result = 0
  for x in countdown(s.len - 1, 0):
    if s[x] == sub:
      inc result
    else:
      break

func dropLeft*(s: string, amount: int): string {.inline.} =
  ## Drops the specified `amount` of characters from the left side (head) of the string `s`.
  if amount < s.len:
    s[amount..^1]
  else:
    STRINGS_EMPTY

func dropRight*(s: string, amount: int): string {.inline.} =
  ## Drops the specified `amount` of characters from the right side (trail) of the string `s`.
  if amount < s.len:
    s[0..^(amount + 1)]
  else:
    STRINGS_EMPTY

func dropBoth*(s: string, amount: int): string {.inline.} =
  ## Drops the specified `amount` of characters from the both sides (head and trail) of the string `s`.
  if amount * 2 <= s.len:
    s[amount..^(amount + 1)]
  else:
    STRINGS_EMPTY

proc isNumericString*(s: string, additional: set[char] = {}, leading: set[char] = {}): bool =
  ## Determines if the specified string is numeric.
  ## NOTE: it allows an optional set of chars to be tested (useful to add math symbols for example).
  if s.len == 0 or s[0] notin Digits + leading:
    return false
  let legal = Digits + additional
  for x in 1..s.len - 1:
    if s[x] notin legal:
      return false
  return true

proc isAlphaNumericString*(s: string, additional: set[char] = {}, leading: set[char] = {}): bool =
  ## Determines if the specified string is alphanumeric.
  ## NOTE: it allows an optional set of chars to be tested (useful to add math symbols for example).
  isNumericString(s, Letters + additional, leading)
