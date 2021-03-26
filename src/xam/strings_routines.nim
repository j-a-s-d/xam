# xam
# ===
# STRINGS ROUTINES

from strutils import Digits, Letters, strip

{.push inline.}

func concat*(strings: varargs[string]): string =
  ## Concatenates the specified string values.
  result = STRINGS_EMPTY
  for s in strings:
    result &= s

func enclose*(s: string, chr: char): string =
  ## Encloses the specified string between the specified borders char.
  $chr & s & $chr

func enclose*(s: string, borders: string): string =
  ## Encloses the specified string between the specified borders string.
  borders & s & borders

func apostrophe*(s: string): string =
  ## Encloses the specified string between apostrophes.
  STRINGS_APOSTROPHE & s & STRINGS_APOSTROPHE

func quote*(s: string): string =
  ## Encloses the specified string between quotes.
  STRINGS_QUOTE & s & STRINGS_QUOTE

func brace*(s: string): string =
  ## Encloses the specified string between braces.
  concat(STRINGS_BRACES_OPEN, s, STRINGS_BRACES_CLOSE)

func bracketize*(s: string): string =
  ## Encloses the specified string between brackets.
  concat(STRINGS_BRACKETS_OPEN, s, STRINGS_BRACKETS_CLOSE)

func parenthesize*(s: string): string =
  ## Encloses the specified string between parenthesis.
  concat(STRINGS_PARENTHESES_OPEN, s, STRINGS_PARENTHESES_CLOSE)

func chevronize*(s: string): string =
  ## Encloses the specified string between chevrons.
  concat(STRINGS_MINOR, s, STRINGS_MAJOR)

func hasContent*(s: string): bool =
  ## Determines if the specified string is not empty.
  s.len > 0

func haveContent*(strings: varargs[string]): bool =
  ## Determines if the specified strings are not empty.
  result = strings.len > 0
  for s in strings:
    result = result and hasContent(s)

func hasText*(s: string): bool =
  ## Determines if the specified string has text.
  ## NOTE: white space is ignored.
  strip(s).len > 0

func haveText*(strings: varargs[string]): bool =
  ## Determines if the specified strings have text.
  ## NOTE: white space is ignored.
  result = strings.len > 0
  for s in strings:
    result = result and hasText(s)

func leftCount*(s: string, sub: char): int =
  ## Count the occurrences of the character `sub` in the left size (head) of the string `s`.
  ## NOTE: specialized version of the strutils.count.
  result = 0
  for c in s:
    if c == sub:
      inc result
    else:
      break

func rightCount*(s: string, sub: char): int =
  ## Count the occurrences of the character `sub` in the right side (trail) of the string `s`.
  ## NOTE: specialized version of the strutils.count.
  result = 0
  for x in countdown(s.len - 1, 0):
    if s[x] == sub:
      inc result
    else:
      break

func dropLeft*(s: string, amount: int): string =
  ## Drops the specified `amount` of characters from the left side (head) of the string `s`.
  if amount < s.len:
    s[amount..^1]
  else:
    STRINGS_EMPTY

func dropRight*(s: string, amount: int): string =
  ## Drops the specified `amount` of characters from the right side (trail) of the string `s`.
  if amount < s.len:
    s[0..^(amount + 1)]
  else:
    STRINGS_EMPTY

func dropBoth*(s: string, amount: int): string =
  ## Drops the specified `amount` of characters from the both sides (head and trail) of the string `s`.
  if amount * 2 <= s.len:
    s[amount..^(amount + 1)]
  else:
    STRINGS_EMPTY

{.pop.}

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
  
