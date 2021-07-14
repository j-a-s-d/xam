# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  json,
  xam

suite "test xam looping":

  test "test forever":
    var l = 0
    forever:
      inc l
      if l == 10:
        break
    check(l == 10)

  test "test times":
    var l = 0
    10.times:
      inc l
    check(l == 10)

  test "test each":
    var s = newSeq[int]()
    [1,2,3].each(x):
      s.add(x)
    check(s.len == 3)
    check(s[0] == 1)
    check(s[1] == 2)
    check(s[2] == 3)

  test "test meach":
    var m = [1,2,3]
    m.meach(x):
      if x == 3:
        x = 4
    check(m[0] == 1)
    check(m[1] == 2)
    check(m[2] == 4)

  var a = newJArray()
  a.add 1.newJInt
  a.add "test".newJString
  a.add 2.newJInt
  a.add "testing".newJString
  a.add newJFloat(3.3)
  a.add newJBool(true)
  a.add newJFloat(4.4)
  a.add newJBool(false)
  var a1 = newJArray()
  a1.add newJNull()
  a.add a1
  var o1 = newJObject()
  o1["name"] = "object 1".newJString
  a.add o1
  a.add newJNull()
  var a2 = newJArray()
  a2.add newJNull()
  a2.add newJNull()
  a.add a2
  var o2 = newJObject()
  o2["name"] = "object 2".newJString
  a.add o2

  test "test json array each":
    var n = 0
    a.each(x):
      inc n
      case n:
      of 1:
        check(x.getInt() == 1)
      of 2:
        check(x.getStr() == "test")
      of 3:
        check(x.getInt() == 2)
      of 4:
        check(x.getStr() == "testing")
      of 5:
        check(x.getFloat() == 3.3)
      of 6:
        check(x.getBool() == true)
      of 7:
        check(x.getFloat() == 4.4)
      of 8:
        check(x.getBool() == false)
      else:
        discard
  test "test json array each array":
    var n = 0
    a.eachArray(x):
      inc n
      check(x.len == n)
  test "test json array each object":
    var n = 0
    a.eachObject(x):
      inc n
      check(x["name"].getStr() == "object " & $n)
  test "test json array each string":
    var n = 0
    a.eachString(x):
      inc n
      case n:
      of 1:
        check(x.getStr() == "test")
      of 2:
        check(x.getStr() == "testing")
      else:
        discard
  test "test json array each int":
    var n = 0
    a.eachInt(x):
      inc n
      case n:
      of 1:
        check(x.getInt() == 1)
      of 2:
        check(x.getInt() == 2)
      else:
        discard
  test "test json array each float":
    var n = 0
    a.eachFloat(x):
      inc n
      case n:
      of 1:
        check(x.getFloat() == 3.3)
      of 2:
        check(x.getFloat() == 4.4)
      else:
        discard
  test "test json array each bool":
    var n = 0
    a.eachBool(x):
      inc n
      case n:
      of 1:
        check(x.getBool() == true)
      of 2:
        check(x.getBool() == false)
      else:
        discard

  test "test json array meach":
    var b = copy(a)
    b.meach(x):
      if isJInt(x):
        x = newJInt(x.getInt() + 1)
    check(b[0].getInt() == 2)
    check(b[2].getInt() == 3)
  test "test json array meach array":
    var b = copy(a)
    b.meachArray(x):
      var y = copy(x)
      y.add newJNull()
      x = y
    check(b[8].len == 2)
    check(b[11].len == 3)
  test "test json array meach object":
    var b = copy(a)
    b.meachObject(x):
      var y = newJObject()
      y["name"] = newJString(x["name"].getStr() & "!")
      x = y
    check(b[9]["name"].getStr() == "object 1!")
    check(b[12]["name"].getStr() == "object 2!")
  test "test json array meach string":
    var b = copy(a)
    b.meachString(x):
      x = newJString(x.getStr() & "!")
    check(b[1].getStr() == "test!")
    check(b[3].getStr() == "testing!")
  test "test json array meach int":
    var b = copy(a)
    b.meachInt(x):
      x = newJInt(x.getInt() + 1)
    check(b[0].getInt() == 2)
    check(b[2].getInt() == 3)
  test "test json array meach float":
    var b = copy(a)
    b.meachFloat(x):
      x = newJFloat(x.getFloat() + 1.0)
    check(b[4].getFloat() == 4.3)
    check(b[6].getFloat() == 5.4)
  test "test json array meach bool":
    var b = copy(a)
    b.meachBool(x):
      x = newJBool(not x.getBool())
    check(b[5].getBool() == false)
    check(b[7].getBool() == true)
