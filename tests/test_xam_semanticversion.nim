# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam semanticversion":

  test "test isValidSemanticVersionString":
    check(isValidSemanticVersionString("1.2.3"))
    check(not isValidSemanticVersionString("1.2"))
    check(not isValidSemanticVersionString("1.2.3.4"))
    check(not isValidSemanticVersionString("1,2,3"))
    check(not isValidSemanticVersionString("blah"))
    check(not isValidSemanticVersionString(""))

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
  test "test isOlderThan":
    check(newSemanticVersion(1, 0, 0).isOlderThan(newSemanticVersion(1, 1, 0)))
    check(not newSemanticVersion(1, 0, 0).isOlderThan(newSemanticVersion(0, 1, 0)))
    check(newSemanticVersion(1, 0, 0).isOlderThan("1.1.0"))
    check(not newSemanticVersion(1, 0, 0).isOlderThan("0.1.0"))
  test "test isNewerThan":
    check(newSemanticVersion(1, 0, 0).isNewerThan(newSemanticVersion(0, 1, 0)))
    check(not newSemanticVersion(1, 0, 0).isNewerThan(newSemanticVersion(1, 1, 0)))
    check(newSemanticVersion(1, 0, 0).isNewerThan("0.1.0"))
    check(not newSemanticVersion(1, 0, 0).isNewerThan("1.1.0"))
  test "test isMajorNewerThan":
    check(newSemanticVersion(1, 0, 0).isMajorNewerThan(newSemanticVersion(0, 1, 0)))
    check(not newSemanticVersion(1, 0, 0).isMajorNewerThan(newSemanticVersion(1, 1, 0)))
    check(newSemanticVersion(1, 0, 0).isMajorNewerThan("0.1.0"))
    check(not newSemanticVersion(1, 0, 0).isMajorNewerThan("1.1.0"))
  test "test isMinorNewerThan":
    check(newSemanticVersion(1, 1, 0).isMinorNewerThan(newSemanticVersion(1, 0, 0)))
    check(not newSemanticVersion(1, 1, 0).isMinorNewerThan(newSemanticVersion(0, 0, 0)))
    check(not newSemanticVersion(1, 1, 0).isMinorNewerThan(newSemanticVersion(2, 0, 0)))
    check(not newSemanticVersion(1, 0, 0).isMinorNewerThan("0.1.0"))
    check(newSemanticVersion(1, 1, 0).isMinorNewerThan("1.0.0"))
    check(not newSemanticVersion(1, 1, 0).isMinorNewerThan("0.0.0"))
    check(not newSemanticVersion(1, 1, 0).isMinorNewerThan("2.0.0"))
  test "test isPatchNewerThan":
    check(newSemanticVersion(1, 0, 1).isPatchNewerThan("1.0.0"))
    check(newSemanticVersion(1, 0, 2).isPatchNewerThan("1.0.0"))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan("0.1.0"))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan("0.1.1"))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan("1.1.0"))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan("1.1.1"))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan("1.0.1"))
    check(not newSemanticVersion(1, 0, 0).isPatchNewerThan(newSemanticVersion(0, 0, 1)))
    check(not newSemanticVersion(1, 0, 0).isPatchNewerThan(newSemanticVersion(1, 0, 1)))
    check(not newSemanticVersion(1, 0, 1).isPatchNewerThan(newSemanticVersion(1, 0, 1)))
