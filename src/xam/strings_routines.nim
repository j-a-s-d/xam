# xam
# ===
# STRINGS ROUTINES

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

func isEmpty*(s: string): bool =
  ## Determines if the specified string is empty.
  s.len == 0

func areEmpty*(strings: varargs[string]): bool =
  ## Determines if the specified strings are empty.
  result = strings.len > 0
  for s in strings:
    result = result and isEmpty(s)

func hasContent*(s: string): bool =
  ## Determines if the specified string is not empty.
  s.len > 0

func haveContent*(strings: varargs[string]): bool =
  ## Determines if the specified strings are not empty.
  result = strings.len > 0
  for s in strings:
    result = result and hasContent(s)

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

proc csv*(strings: varargs[string], separator: char, quoted: bool): string =
  ## Generates a CSV string with the provided strings, the specified separator char and with quoted values if specified.
  result = STRINGS_EMPTY
  let sep = $separator
  for s in strings:
    if result != STRINGS_EMPTY:
      result &= sep
    if quoted:
      result &= quote s
    else:
      result &= s

proc csv*(strings: varargs[string], separator: char): string =
  ## Generates a CSV string with the provided strings and the specified separator char.
  csv(strings, separator, false)

proc csv*(strings: varargs[string]): string =
  ## Generates a CSV string with the provided strings.
  ## NOTE: a comma will be used as separator.
  csv(strings, ',', false)

proc csv*(strings: varargs[string], quoted: bool): string =
  ## Generates a CSV string with the provided strings and quoted values if specified.
  ## NOTE: a comma will be used as separator.
  csv(strings, ',', quoted)

proc piped*(strings: varargs[string]): string =
  ## Generates a string with the provided strings using a pipe ('|') as separator.
  csv(strings, '|', false)

proc tabbed*(strings: varargs[string]): string =
  ## Generates a string with the provided strings using a tab as separator.
  csv(strings, '\t', false)

proc spaced*(strings: varargs[string]): string =
  ## Generates a string with the provided strings using a space as separator.
  csv(strings, ' ', false)

proc lined*(strings: varargs[string]): string =
  ## Generates a string with the provided strings using a pipe '|' as separator.
  result = STRINGS_EMPTY
  for s in strings:
    if result != STRINGS_EMPTY:
      result &= STRINGS_EOL
    result &= s

{.pop.}

from strutils import find, rfind

proc between*(s, start, ending: string, firstEnding: bool = false): string =
  ## Returns the string contained between the specified start string
  ## and the specified ending string, which can be the first match
  ## of it if specified, otherwise is the last match by default.
  ## NOTE: if matching fails, empty string an will be returned.
  let sl = start.len()
  let el = ending.len()
  if sl > 0 and el > 0:
    let st = s.find(start)
    if st > -1:
      let ss = st + sl
      let en = if firstEnding: s.find(ending) else: s.rfind(ending)
      if en > -1 and ss <= en:
        result = s[ss..<en]

from strutils import Digits, Letters

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

from strutils import strip

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

func stripLeft*(s: string): string =
  ## Strips leading whitespace characters from s and returns the resulting string.
  s.strip(trailing = false)

func stripRight*(s: string): string =
  ## Strips trailing whitespace characters from s and returns the resulting string.
  s.strip(leading = false)

