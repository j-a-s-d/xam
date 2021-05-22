# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam semanticversion":

  test "test newSemanticVersion":
    check(newSemanticVersion() != nil)
    check(newSemanticVersion(1) != nil)
    check(newSemanticVersion(1, 0) != nil)
    check(newSemanticVersion(1, 0, 0) != nil)
    check(newSemanticVersion("1") != nil)
    check(newSemanticVersion("1.0") != nil)
    check(newSemanticVersion("1.0.0") != nil)

  test "test toString":
    check($newSemanticVersion() == "0.0.0")
    check($newSemanticVersion(1) == "1.0.0")
    check($newSemanticVersion(1, 0) == "1.0.0")
    check($newSemanticVersion(1, 0, 0) == "1.0.0")
    check($newSemanticVersion("1") == "1.0.0")
    check($newSemanticVersion("1.0") == "1.0.0")
    check($newSemanticVersion("1.0.0") == "1.0.0")

  test "test getMajor":
    check(newSemanticVersion(1, 2, 3).getMajor() == 1)
  test "test getMinor":
    check(newSemanticVersion(1, 2, 3).getMinor() == 2)
  test "test getPatch":
    check(newSemanticVersion(1, 2, 3).getPatch() == 3)

  test "test equalsTo":
    check(newSemanticVersion(1, 0, 0).equalsTo(newSemanticVersion(1, 0, 0)))
    check(not newSemanticVersion(1, 0, 0).equalsTo(newSemanticVersion(1, 1, 1)))
    check(newSemanticVersion(1, 0, 0).equalsTo("1.0.0"))
    check(not newSemanticVersion(1, 0, 0).equalsTo("1.1.1"))
  test "test isNewerThan":
    check(newSemanticVersion(1, 0, 0).isNewerThan(newSemanticVersion(0, 1, 0)))
    check(not newSemanticVersion(1, 0, 0).isNewerThan(newSemanticVersion(1, 1, 0)))
    check(newSemanticVersion(1, 0, 0).isNewerThan("0.1.0"))
    check(not newSemanticVersion(1, 0, 0).isNewerThan("1.1.0"))
  test "test isOlderThan":
    check(newSemanticVersion(1, 0, 0).isOlderThan(newSemanticVersion(1, 1, 0)))
    check(not newSemanticVersion(1, 0, 0).isOlderThan(newSemanticVersion(0, 1, 0)))
    check(newSemanticVersion(1, 0, 0).isOlderThan("1.1.0"))
    check(not newSemanticVersion(1, 0, 0).isOlderThan("0.1.0"))
