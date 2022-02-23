# xam
# ===
# SEMANTIC VERSION
# ----------------
# NOTE: this is inspired in the Java Ace Toolkit's SemanticVersion class
# following what is specified at http://semver.org/

from strutils import split
from strings import STRINGS_PERIOD, isNumericString
from maths import tryParseInt

const
  DEFAULT_MAJOR: int = 0
  DEFAULT_MINOR: int = 0
  DEFAULT_PATCH: int = 0

type
  TSemanticVersion = object
    major: int
    minor: int
    patch: int

  SemanticVersion* = ref TSemanticVersion

proc newSemanticVersion*(maj: int = DEFAULT_MAJOR, min: int = DEFAULT_MINOR, pat: int = DEFAULT_PATCH): SemanticVersion =
  ## Makes a new semantic version object instance from the passed integer values.
  result = new TSemanticVersion
  result.major = maj
  result.minor = min
  result.patch = pat

proc newSemanticVersion*(value: string): SemanticVersion =
  ## Makes a new semantic version object instance from the passed string value.
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

func compareVersionsAsStrings(version1, version2: string): tuple[r: int, i: int] {.inline.} =
  result.r = 0
  result.i = 0
  let a1 = version1.split(STRINGS_PERIOD)
  let a2 = version2.split(STRINGS_PERIOD)
  let l1 = len(a1)
  let l2 = len(a2)
  var i1l = result.i < l1
  var i2l = result.i < l2
  while i1l or i2l:
    let x1 = tryParseInt(a1[result.i], 0)
    let x2 = tryParseInt(a2[result.i], 0)
    if i1l and i2l:
      if x1 < x2:
        result.r = -1
        break
      if x1 > x2:
        result.r = 1
        break
    elif i1l:
      if x1 != 0:
        result.r = 1
        break
    elif i2l:
      if x2 != 0:
        result.r = -1
        break
    inc(result.i)
    i1l = result.i < len(a1)
    i2l = result.i < len(a2)

proc equalsTo*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if they are equal.
  compareVersionsAsStrings($sv, $other).r == 0

proc equalsTo*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if they are equal.
  compareVersionsAsStrings($sv, other).r == 0

proc isOlderThan*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if it is older.
  compareVersionsAsStrings($sv, $other).r == -1

proc isOlderThan*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if it is older.
  compareVersionsAsStrings($sv, other).r == -1

proc isNewerThan*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if it is newer.
  compareVersionsAsStrings($sv, $other).r == 1

proc isNewerThan*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if it is newer.
  compareVersionsAsStrings($sv, other).r == 1

template isLevelNewerThan(sv: SemanticVersion, other: string, level: int): bool =
  let c = compareVersionsAsStrings($sv, other)
  c.r == 1 and c.i == level

proc isMajorNewerThan*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if it is newer at major level.
  sv.isLevelNewerThan($other, 0)

proc isMajorNewerThan*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if it is newer at major level.
  sv.isLevelNewerThan(other, 0)

proc isMinorNewerThan*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if it is newer at minor level.
  sv.isLevelNewerThan($other, 1)

proc isMinorNewerThan*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if it is newer at minor level.
  sv.isLevelNewerThan(other, 1)

proc isPatchNewerThan*(sv, other: SemanticVersion): bool =
  ## Compares the first semantic version against the second and returns
  ## true if it is newer at patch level.
  sv.isLevelNewerThan($other, 2)

proc isPatchNewerThan*(sv: SemanticVersion, other: string): bool =
  ## Compares the semantic version against the provided version number and returns
  ## true if it is newer at patch level.
  sv.isLevelNewerThan(other, 2)

func isValidSemanticVersionString*(value: string): bool =
  ## Determines if the passed string value is a valid semantic version value.
  let p = value.split(STRINGS_PERIOD)
  p.len == 3 and isNumericString(p[0]) and isNumericString(p[1]) and isNumericString(p[2])

