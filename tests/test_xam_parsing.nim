# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam parsing":

  test "test tryParseFloat":
    check(tryParseFloat("1.2345", 0.0) == 1.2345)
    check(tryParseFloat("blah", 9.9) == 9.9)

  test "test tryParseInt":
    check(tryParseInt("-12345", 0) == -12345)
    check(tryParseInt("blah", -9) == -9)

  test "test tryParseUInt":
    check(tryParseUInt("12345", 0) == 12345)
    check(tryParseUInt("blah", 9) == 9)

  test "test tryParseBool":
    check(tryParseBool("true", false) == true)
    check(tryParseBool("false", true) == false)
    check(tryParseBool("TRUE", false) == true)
    check(tryParseBool("FALSE", true) == false)
    check(tryParseBool("True", false) == true)
    check(tryParseBool("False", true) == false)
    check(tryParseBool("blah", false) == false)
    check(tryParseBool("blah", true) == true)
