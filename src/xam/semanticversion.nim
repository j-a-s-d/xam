# xam
# ===
# SEMANTIC VERSION
# ----------------
# NOTE: this is inspired in the Java Ace Toolkit's SemanticVersion class
# following what is specified at http://semver.org/

from strutils import split
from strings import STRINGS_PERIOD
from maths import tryParseInt

const
  DEFAULT_MAJOR: int = 0
  DEFAULT_MINOR: int = 0
  DEFAULT_PATCH: int = 0

type
  XamSemanticVersion = object
    major: int
    minor: int
    patch: int

  SemanticVersion* = ref XamSemanticVersion

proc newSemanticVersion*(maj: int = DEFAULT_MAJOR, min: int = DEFAULT_MINOR, pat: int = DEFAULT_PATCH): SemanticVersion =
  ## Makes a new semantic version object instance from the passed integer values.
  result = new XamSemanticVersion
  result.major = maj
  result.minor = min
  result.patch = pat

proc newSemanticVersion*(value: string): SemanticVersion =
  ## Makes a new semantic version object instance from the passed string value.
  ##
  ## NOTE: it returns the semantic version object instance created from
  ## the passed string value or an instance equivalent to "0.0.0" if it
  ## fails to convert the passed string.
  let numbers = value.split(STRINGS_PERIOD)
  newSemanticVersion(
    if numbers.len > 0: tryParseInt(numbers[0], DEFAULT_MAJOR) else: DEFAULT_MAJOR,
    if numbers.len > 1: tryParseInt(numbers[1], DEFAULT_MINOR) else: DEFAULT_MINOR,
    if numbers.len > 2: tryParseInt(numbers[2], DEFAULT_PATCH) else: DEFAULT_PATCH
  )

proc getMajor*(sv: SemanticVersion): int {.inline.} =
  ## Returns the major version number of the current semantic version.
  sv.major

proc getMinor*(sv: SemanticVersion): int {.inline.} =
  ## Returns the minor version number of the current semantic version.
  sv.minor

proc getPatch*(sv: SemanticVersion): int {.inline.} =
  ## Returns the patch version number of the current semantic version.
  sv.patch

proc `$`*(sv: SemanticVersion): string {.inline.} =
  ## Returns the string representation of the current semantic version.
  $sv.major & STRINGS_PERIOD & $sv.minor & STRINGS_PERIOD & $sv.patch

func compareVersionsAsStrings(version1, version2: string): int {.inline.} =
  result = 0
  let arr1 = version1.split(STRINGS_PERIOD)
  let arr2 = version2.split(STRINGS_PERIOD)
  var i = 0
  var i1l = i < arr1.len
  var i2l = i < arr2.len
  while i1l or i2l:
    let x1 = tryParseInt(arr1[i], 0)
    let x2 = tryParseInt(arr2[i], 0)
    if i1l and i2l:
      if x1 < x2:
        result = -1
        break
      if x1 > x2:
        result = 1
        break
    elif i1l:
      if x1 != 0:
        result = 1
        break
    elif i2l:
      if x2 != 0:
        result = -1
        break
    inc i
    i1l = i < arr1.len
    i2l = i < arr2.len

proc equalsTo*(sv, other: SemanticVersion): bool =
  # Compares the first semantic version against the second and returns
  # true if they are equal.
  compareVersionsAsStrings($sv, $other) == 0

proc isNewerThan*(sv, other: SemanticVersion): bool =
  # Compares the first semantic version against the second and returns
  # true if it is newer.
  compareVersionsAsStrings($sv, $other) == 1

proc isOlderThan*(sv, other: SemanticVersion): bool =
  # Compares the first semantic version against the second and returns
  # true if it is older.
  compareVersionsAsStrings($sv, $other) == -1
