# xam
# ===
# MATH ROUTINES

from math import pow, round

# NOTE: use it wisely, see https://forum.nim-lang.org/t/4402
proc floatRound*[T: SomeFloat](x: T, places: int): T =
  let m = (if places == 0: 1.0 else: pow(10.0, places.T))
  round(x * m) / m

# NOTE: most of the following routines are adaptations from the Java Ace Toolkit

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

proc isEven*(x: SomeInteger): bool =
  x mod 2 == 0

proc isOdd*(x: SomeInteger): bool =
  x mod 2 != 0

proc isDivisibleBy*(number, factor: SomeInteger): bool =
  number mod factor == 0
