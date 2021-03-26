# xam
# ===
# MATHS ROUTINES

# PARSING

from strutils import parseFloat, parseInt, parseUInt, parseBool

proc tryParseFloat*(s: string, default: float): float =
  ## Tries to parse a float value from the provided string,
  ## otherwise it returns the provided default value.
  try: parseFloat(s) except: default

proc tryParseInt*(s: string, default: int): int =
  ## Tries to parse an integer value from the provided string,
  ## otherwise it returns the provided default value.
  try: parseInt(s) except: default

proc tryParseUInt*(s: string, default: uint): uint =
  ## Tries to parse an unsigned integer value from the provided string,
  ## otherwise it returns the provided default value.
  try: parseUInt(s) except: default

proc tryParseBool*(s: string, default: bool): bool =
  ## Tries to parse a boolean value from the provided string,
  ## otherwise it returns the provided default value.
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
  ## Returns true if the provided integer value is even.
  x mod 2 == 0

proc isOdd*(x: SomeInteger): bool {.inline.} =
  ## Returns true if the provided integer value is odd.
  x mod 2 != 0

proc isDivisibleBy*(number, factor: SomeInteger): bool {.inline.} =
  ## Returns true if the provided integer value is divisible by the provided integer factor.
  number mod factor == 0

# NUMBERS

proc add*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  ## Returns the result of adding all the provided numbers.
  for number in numbers:
    result += number

proc subtract*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  ## Returns the result of subtracting all the provided numbers.
  if numbers.len >= 2:
    result = numbers[0] * 2
  for number in numbers:
    result -= number

proc minimum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  ## Returns the minimum value in the provided numbers.
  result = high(SomeNumber)
  for number in numbers:
    result = min(result, number)

proc maximum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber =
  ## Returns the maximum value in the provided numbers.
  result = low(SomeNumber)
  for number in numbers:
    result = max(result, number)
