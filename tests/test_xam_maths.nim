# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam maths":

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

  test "test floatRound":
    check(floatRound(1.2345, 2) == 1.23)

  test "test floatIsNaN":
    let x: float = 1.2345
    let y: float = NaN
    check(not floatIsNaN(x))
    check(floatIsNaN(y))

  test "test add":
    check(add(1) == 1)
    check(add(40, 2) == 42)
    check(add(1, 0, -1) == 0)
    check(add(1.1, 2.2, 3.3) == 6.6)

  test "test subtract":
    check(subtract(1) == -1)
    check(subtract(40, 2) == 38)
    check(subtract(1, 1, 1) == -1)
    check(subtract(1.1, 2.2, 3.3) == -4.4)
    check(subtract(3, 2, 1) == 0)
    check(subtract(4, 3, -2, 1) == 2)

  test "test minimum":
    check(minimum(1, 2) == 1)
    check(minimum(2, 1) == 1)
    check(minimum(3, 2, 1) == 1)
    check(minimum(1, 2, 3) == 1)
    check(minimum(1.1, 2.2, 3.3) == 1.1)

  test "test maximum":
    check(maximum(1, 2) == 2)
    check(maximum(2, 1) == 2)
    check(maximum(3, 2, 1) == 3)
    check(maximum(1, 2, 3) == 3)
    check(maximum(1.1, 2.2, 3.3) == 3.3)

  test "test isEven":
    check(not isEven(1))
    check(not isEven(-1))
    check(isEven(-2))
    check(isEven(2))
    check(isEven(0))

  test "test isOdd":
    check(isOdd(1))
    check(isOdd(-1))
    check(not isOdd(-2))
    check(not isOdd(2))
    check(not isOdd(0))

  test "test isDivisibleBy":
    check(isDivisibleBy(4, 2))
    check(isDivisibleBy(9, 3))
    check(isDivisibleBy(100, 10))
    check(not isDivisibleBy(100, 3))
    check(not isDivisibleBy(9, 2))
    check(not isDivisibleBy(4, 10))
