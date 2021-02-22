# xam
# ===
# MATHS ROUTINES

# PARSING

from strutils import parseFloat, parseInt, parseUInt, parseBool

proc tryParseFloat*(s: string, default: float): float =
  try: parseFloat(s) except: default

proc tryParseInt*(s: string, default: int): int =
  try: parseInt(s) except: default

proc tryParseUInt*(s: string, default: uint): uint =
  try: parseUInt(s) except: default

proc tryParseBool*(s: string, default: bool): bool =
  try: parseBool(s) except: default

# FLOATS

proc floatRound*[T: SomeFloat](x: T, places: int): T =
  ## Alternative float round routine.
  ## NOTE: use it wisely, see https://forum.nim-lang.org/t/4402
  let m = (if places == 0: 1.0 else: pow(10.0, places.T))
  round(x * m) / m

func floatIsNaN*(x: SomeFloat): bool {.inline.} =
  ## Tests if the specified float is NaN (not-a-number).
  x.classify == fcNaN

# NOTE: most of the following routines are adaptations from the Java Ace Toolkit

# INTEGERS

proc isEven*(x: SomeInteger): bool {.inline.} =
  x mod 2 == 0

proc isOdd*(x: SomeInteger): bool {.inline.} =
  x mod 2 != 0

proc isDivisibleBy*(number, factor: SomeInteger): bool {.inline.} =
  number mod factor == 0

# NUMBERS

proc add*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  for number in numbers:
    result += number

proc subtract*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  if numbers.len >= 2:
    result = numbers[0] * 2
  for number in numbers:
    result -= number

proc minimum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  result = high(SomeNumber)
  for number in numbers:
    result = min(result, number)

proc maximum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  result = low(SomeNumber)
  for number in numbers:
    result = max(result, number)
