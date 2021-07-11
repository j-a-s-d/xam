# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam strings":

  test "test concat":
    check(concat("a", "b", "c") == "abc")
    check(concat("") == "")

  test "test enclose with string":
    check(enclose("text", "|") == "|text|")
  test "test enclose with char":
    check(enclose("text", '|') == "|text|")

  test "test apostrophe":
    check(apostrophe("hello") == "'hello'")
  test "test quote":
    check(quote("hello") == "\"hello\"")
  test "test parenthesize":
    check(parenthesize("hello") == "(hello)")
  test "test bracketize":
    check(bracketize("hello") == "[hello]")
  test "test brace":
    check(brace("hello") == "{hello}")
  test "test chevronize":
    check(chevronize("hello") == "<hello>")

  test "test haveContent":
    check(haveContent("1", "22", " "))
    check(not haveContent("1", "22", ""))
  test "test haveText":
    check(haveText("1", "22"))
    check(not haveText("1", "22", " "))
    check(not haveText("1", "22", ""))

  test "test leftCount":
    check(leftCount("00123", '0') == 2)
    check(leftCount("123", '0') == 0)
    check(leftCount("", '0') == 0)
  test "test rightCount":
    check(rightCount("12300", '0') == 2)
    check(rightCount("123", '0') == 0)
    check(rightCount("", '0') == 0)

  test "test dropLeft":
    check(dropLeft("12345", 1) == "2345")
    check(dropLeft("12345", 10) == "")
    check(dropLeft("12345", 0) == "12345")
  test "test dropRight":
    check(dropRight("12345", 1) == "1234")
    check(dropRight("12345", 10) == "")
    check(dropRight("12345", 0) == "12345")
  test "test dropBoth":
    check(dropBoth("12345", 1) == "234")
    check(dropBoth("12345", 10) == "")
    check(dropBoth("12345", 0) == "12345")

  test "test isNumericString":
    check(isNumericString("12345") == true)
    check(isNumericString("-123.45") == false)
    check(isNumericString("+123,45") == false)
    check(isNumericString("-123.45", {',', '.'}, {'+', '-'}) == true)
    check(isNumericString("+123,45", {',', '.'}, {'+', '-'}) == true)
    check(isNumericString("-123.45", {',', '.'}, {'*'}) == false)
    check(isNumericString("+123,45", {',', '.'}, {'*'}) == false)
    check(isNumericString("-123.45", {}, {'+', '-'}) == false)
    check(isNumericString("+123,45", {}, {'+', '-'}) == false)
    check(isNumericString("12345ABC") == false)
  test "test isAlphaNumericString":
    check(isAlphaNumericString("12345ABC") == true)
    check(isAlphaNumericString("12345-ABC") == false)
    check(isAlphaNumericString("+12345,A.BC", {',', '.'}, {'+', '-'}) == true)
    check(isAlphaNumericString("+12345,A.BC", {',', '.'}, {'*'}) == false)

  test "test csv":
    check(csv("abc", "def", "ghi") == "abc,def,ghi")
    check(csv("abc", "def", "ghi", '|') == "abc|def|ghi")
    check(csv("abc", "def", "ghi", true) == "\"abc\",\"def\",\"ghi\"")
    check(csv("abc", "def", "ghi", ';', true) == "\"abc\";\"def\";\"ghi\"")
