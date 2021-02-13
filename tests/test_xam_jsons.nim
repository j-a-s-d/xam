# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  json,
  xam

suite "test xam json":

  test "test wrapInJObject":
    var obj1 = wrapInJObject("test", JSON_NULL)
    check(obj1 != nil)
    check(obj1.kind == JObject)
    check(obj1["test"].kind == JNull)
    var obj2 = wrapInJObject("testbool", true)
    check(obj2 != nil)
    check(obj2.kind == JObject)
    check(obj2["testbool"].kind == JBool)
    check(obj2["testbool"].getBool() == true)
    var obj3 = wrapInJObject("testint", 123)
    check(obj3 != nil)
    check(obj3.kind == JObject)
    check(obj3["testint"].kind == JInt)
    check(obj3["testint"].getInt() == 123)
    var obj4 = wrapInJObject("testfloat", 123.45)
    check(obj4 != nil)
    check(obj4.kind == JObject)
    check(obj4["testfloat"].kind == JFloat)
    check(obj4["testfloat"].getFloat() == 123.45)
    var obj5 = wrapInJObject("teststring", "hello")
    check(obj5 != nil)
    check(obj5.kind == JObject)
    check(obj5["teststring"].kind == JString)
    check(obj5["teststring"].getStr() == "hello")

  test "test wrapInJArray":
    var arr1 = wrapInJArray()
    check(arr1 != nil)
    check(arr1.kind == JArray)
    check(arr1.len == 0)
    var arr2 = wrapInJArray(%1, %"2", JSON_NULL)
    check(arr2 != nil)
    check(arr2.kind == JArray)
    check(arr2.len == 3)

  test "test isJArray":
    check(isJArray(newJArray()))
    check(not isJArray(JSON_NULL))

  test "test isJObject":
    check(isJObject(newJObject()))
    check(not isJObject(JSON_NULL))

  test "test isJNull":
    check(isJNull(JSON_NULL))
    check(not isJNull(newJObject()))

  test "test isJBool":
    check(isJBool(JSON_TRUE))
    check(not isJBool(JSON_NULL))

  test "test isJInt":
    check(isJInt(newJInt(I0)))
    check(not isJInt(JSON_NULL))

  test "test isJFloat":
    check(isJFloat(newJFloat(F0)))
    check(not isJFloat(JSON_NULL))

  test "test isJString":
    check(isJString(newJString(STRINGS_EMPTY)))
    check(not isJString(JSON_NULL))

  test "test hasKeys":
    let o = %* { "a": 1, "b": 2, "c": 3 }
    check(o.hasKeys(newSeq[string]()))
    check(o.hasKeys(@["a", "c"]))
    check(not o.hasKeys(@["a", "b", "d"]))

  test "test mix":
    const R = "{\"-\":0,\"a\":1,\"b\":3,\"c\":5}"
    let o0 = newJObject()
    let o1 = %* { "-": 0, "a": 1, "b": 2 }
    let o2 = %* { "a": 1, "b": 3, "c": 5 }
    check($mix(o1, o2) == R)
    check($mix(o0, o1, o2) == R)
    check($mix(o1, nil, o2) == R)
    check($mix(o1) == $o1)
    check($mix() == $JSON_EMPTY_OBJECT)

  test "test obtainBool":
    let o = %* { "a": %* { "b": %* { "c": true, "z": JSON_NULL } } }
    check(obtainBool(o, "a/b/c"))
    check(obtainBool(o, "/a//b/c/"))
    check(obtainBool(o, "a/b/d", true))
    check(not obtainBool(o, "a/b/d/z"))
    check(not obtainBool(o, "a/b"))
    check(not obtainBool(o, "a/"))
    check(not obtainBool(o, "/a"))
    check(not obtainBool(o, "/"))
    check(not obtainBool(o, ""))

  test "test obtainInt":
    let o = %* { "a": %* { "b": %* { "c": 123, "z": JSON_NULL } } }
    check(obtainInt(o, "a/b/c") == 123)
    check(obtainInt(o, "/a//b/c/") == 123)
    check(obtainInt(o, "a/b/d", 123) == 123)
    check(obtainInt(o, "a/b/d/z") == -1)
    check(obtainInt(o, "a/b") == -1)
    check(obtainInt(o, "a/") == -1)
    check(obtainInt(o, "/a") == -1)
    check(obtainInt(o, "/") == -1)
    check(obtainInt(o, "") == -1)

  test "test obtainFloat":
    let o = %* { "a": %* { "b": %* { "c": 123.45, "z": JSON_NULL } } }
    check(obtainFloat(o, "a/b/c") == 123.45)
    check(obtainFloat(o, "/a//b/c/") == 123.45)
    check(obtainFloat(o, "a/b/d", 123.45) == 123.45)
    check(obtainFloat(o, "a/b/d/z") == -1.0)
    check(obtainFloat(o, "a/b") == -1.0)
    check(obtainFloat(o, "a/") == -1.0)
    check(obtainFloat(o, "/a") == -1.0)
    check(obtainFloat(o, "/") == -1.0)
    check(obtainFloat(o, "") == -1.0)

  test "test obtainString":
    let o = %* { "a": %* { "b": %* { "c": "hello", "z": JSON_NULL } } }
    check(obtainString(o, "a/b/c") == "hello")
    check(obtainString(o, "/a//b/c/") == "hello")
    check(obtainString(o, "a/b/d", "hello") == "hello")
    check(obtainString(o, "a/b/d/z") == "")
    check(obtainString(o, "a/b") == "")
    check(obtainString(o, "a/") == "")
    check(obtainString(o, "/a") == "")
    check(obtainString(o, "/") == "")
    check(obtainString(o, "") == "")
