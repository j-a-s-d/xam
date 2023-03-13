# xam
# ===
# MULTIPLATFORM CONVERTERS

converter integerToString*(x: SomeInteger): string {.used.} =
  ## Javascript/PHP/C#/Java/etc-like integer to string converter
  result.addInt(int64(x)) # NOTE: don't use dollars

converter floatToString*(x: SomeFloat): string {.used.} =
  ## Javascript/PHP/C#/Java/etc-like float to string converter
  result.addFloat(float64(x)) # NOTE: don't use dollars

converter numberToBoolean*(x: SomeNumber): bool {.used.} =
  ## C/Cpp/Javascript/PHP/etc-like number to boolean converter
  ## NOTE: this is more idomatic than the 'x != 0' present at https://nim-lang.org/docs/manual.html#converters
  bool(x)

converter booleanToInteger*(b: bool): int {.used.} =
  ## Cpp/Javascript/PHP/etc-like boolean to integer converter
  int(b)

converter booleanToFloat*(b: bool): float {.used.} =
  ## Cpp/Javascript/PHP/etc-like boolean to float converter
  float(b)
