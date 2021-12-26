# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam nimlang":

  test "test isValidNimIdentifier":
    check(isValidNimIdentifier("test"))
    check(not isValidNimIdentifier(""))
    check(not isValidNimIdentifier("!test"))
    check(not isValidNimIdentifier("test_"))
    check(not isValidNimIdentifier("te__st"))
    check(not isValidNimIdentifier("discard"))
