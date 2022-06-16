# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  json, tables, os,
  xam

suite "test xam json":

  test "test tryParseJson":
    var obj1 = tryParseJson("{\"test\":123}", nil)
    check(obj1 != nil)
    var obj2 = tryParseJson("hello", nil)
    check(obj2 == nil)
    var obj3 = tryParseJson("hello", JSON_NULL)
    check(obj3 == JSON_NULL)

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
    var arr3 = wrapInJArray(true)
    check(arr3 != nil)
    check(arr3.kind == JArray)
    check(arr3.len == 1)
    var arr4 = wrapInJArray(true, false, true)
    check(arr4 != nil)
    check(arr4.kind == JArray)
    check(arr4.len == 3)
    var arr5 = wrapInJArray(0)
    check(arr5 != nil)
    check(arr5.kind == JArray)
    check(arr5.len == 1)
    var arr6 = wrapInJArray(1, 2, 3)
    check(arr6 != nil)
    check(arr6.kind == JArray)
    check(arr6.len == 3)
    var arr7 = wrapInJArray(0.0)
    check(arr7 != nil)
    check(arr7.kind == JArray)
    check(arr7.len == 1)
    var arr8 = wrapInJArray(1.1, 2.2, 3.3)
    check(arr8 != nil)
    check(arr8.kind == JArray)
    check(arr8.len == 3)
    var arr9 = wrapInJArray("")
    check(arr9 != nil)
    check(arr9.kind == JArray)
    check(arr9.len == 1)
    var arr10 = wrapInJArray("bla1", "bla2", "bla3")
    check(arr10 != nil)
    check(arr10.kind == JArray)
    check(arr10.len == 3)

  test "test ensureJsonNode":
    let a = %* { "a": 1, "b": 2, "c": 3 }
    check(ensureJObject(a).len == 3)
    let b = ensureJsonNode(nil)
    check(b != nil)
    check(b == JSON_NULL)

  test "test ensureJObject":
    let a = %* { "a": 1, "b": 2, "c": 3 }
    check(ensureJObject(a).len == 3)
    check(ensureJObject(a)["c"].getInt() == 3)
    let b = newJNull()
    check(ensureJObject(b).len == 0)
    let c = newJString("blah")
    check(ensureJObject(c).len == 0)

  test "test ensureJArray":
    let a = %* ["hello", 123, true, nil, 456.789]
    check(ensureJArray(a).len == 5)
    let b = newJNull()
    check(ensureJArray(b).len == 0)
    let c = newJString("blah")
    check(ensureJArray(c).len == 0)

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

  test "test JArrayBuilder":
    let b = newJArrayBuilder()
    check(b != nil)
    check(b.len == 0)
    b.add("hello").add(123).add(true).add(nil).append(456.789)
    check(b.len == 5)
    check(b.getAsJArray() == %* ["hello", 123, true, nil, 456.789])
    check(b.getAsString() == """["hello",123,true,null,456.789]""")
    check(b.getAsPrettyString() == """[
  "hello",
  123,
  true,
  null,
  456.789
]""")
    check(b.getAsJsonNodeSequence() == @[
      newJString("hello"), newJInt(123), newJBool(true), newJNull(), newJFloat(456.789)
    ])
    check(b.reset().len == 0)
    b.add("hello again!").clear()
    check(b.len == 0)
    check(b == b.addAll())
    check(b.len == 0)
    check(b == b.addAll(newJString("hello"), newJInt(123)).addAll(newJBool(true), newJNull(), newJFloat(456.789)))
    check(b.getAsPrettyString() == """[
  "hello",
  123,
  true,
  null,
  456.789
]""")
    b.clear()
    b.appendAll()
    check(b.len == 0)
    b.appendAll(newJString("hello"), newJInt(123), newJBool(true), newJNull(), newJFloat(456.789))
    check(b.getAsPrettyString() == """[
  "hello",
  123,
  true,
  null,
  456.789
]""")
    var l: int = 0
    check(b.size(l) == b)
    check(l == 5)
    check(b.len == 5)
    let b2 = newJArrayBuilder()
    check(b2.addAll("foo").addAll("hello", "world").addAll(true).addAll(true, false).addAll(0).addAll(1, 2).addAll(0.0).addAll(1.1, 2.2).len == 12)
    b2.appendAll("bar")
    b2.appendAll("hello!", "world!", "!!")
    b2.appendAll(false)
    b2.appendAll(true, false, true)
    b2.appendAll(0)
    b2.appendAll(1, 2, 3)
    b2.appendAll(0.0)
    b2.appendAll(1.1, 2.2, 3.3)
    check(b2.len == 28)
    let b3 = newJArrayBuilder()
    b3.addValues(%* [1, 2, 3]).appendValues(%* [4, 5, 6])
    check(b3.len == 6)
    let b4 = newJArrayBuilder(%* [1, 2, 3, 4])
    check(b4.len == 4)
  
  test "test JObjectBuilder":
    let b = newJObjectBuilder()
    check(b != nil)
    check(b.len == 0)
    b.set("test1", "hello").set("test2", 123).set("test3", true).set("test4", nil)["test5"] = 456.789
    check(b.len == 5)
    check(b.getAsJObject() == %* { "test1": "hello", "test2": 123, "test3": true, "test4": nil, "test5": 456.789 })
    check(b.getAsString() == """{"test1":"hello","test2":123,"test3":true,"test4":null,"test5":456.789}""")
    check(b.getAsPrettyString() == """{
  "test1": "hello",
  "test2": 123,
  "test3": true,
  "test4": null,
  "test5": 456.789
}""")
    var l: int = 0
    check(b.size(l) == b)
    check(l == 5)
    check(b.len == 5)
    var t = initOrderedTable[string, JsonNode]()
    t.add("test1", newJString("hello"))
    t.add("test2", newJInt(123))
    t.add("test3", newJBool(true))
    t.add("test4", newJNull())
    t.add("test5", newJFloat(456.789))
    check(b.getAsNamedJsonNodeOrderedTable() == t)
    check(b.reset().len == 0)
    b.set("test6", "hello again!").clear()
    check(b.len == 0)
    b.put("test7", "and again!!")
    check(b.len == 1)
    let b2 = newJObjectBuilder(b)
    b2.putAll(%* { "a": 1, "b": 2 })
    check(b2.setAll(%* { "c": 3 }).len == 4)
    let b3 = newJObjectBuilder(%* { "a": 1, "b": 2 })
    check(b3.len == 2)

  test "test JsonModel":
    let m = newJsonModel()
    check(m != nil)
    let v = m.validate(newJNull())
    check(not v.success)
    check(v.errorKind == jmeInvalidNode)
    check(v.errorField == "")
    let v0 = m.validate(%* {})
    check(v0.success)
    check(v0.errorKind == jmeNoError)
    check(v0.errorField == "")
    m.registerMandatoryInteger("a")
    let v1 = m.validate(%* {})
    check(not v1.success)
    check(v1.errorKind == jmeNotExists)
    check(v1.errorField == "a")
    let v2 = m.validate(%* { "a": 456.789 })
    check(not v2.success)
    check(v2.errorKind == jmeBadKind)
    check(v2.errorField == "a")
    let v3 = m.validate(%* { "a": 123 })
    check(v3.success)
    check(v3.errorKind == jmeNoError)
    check(v3.errorField == "")
    m.registerOptionalNonEmptyString("b")
    let v4 = m.validate(%* { "a": 123 })
    check(v4.success)
    check(v4.errorKind == jmeNoError)
    check(v4.errorField == "")
    let v5 = m.validate(%* { "a": 123, "b": "hello" })
    check(v5.success)
    check(v5.errorKind == jmeNoError)
    check(v5.errorField == "")
    let v6 = m.validate(%* { "a": 123, "b": "" })
    check(not v6.success)
    check(v6.errorKind == jmeIsEmpty)
    check(v6.errorField == "b")
    m.registerOptionalNonEmptyArray("c")
    let v7 = m.validate(%* { "a": 123, "b": "hello" })
    check(v7.success)
    check(v7.errorKind == jmeNoError)
    check(v7.errorField == "")
    let v8 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123] })
    check(v8.success)
    check(v8.errorKind == jmeNoError)
    check(v8.errorField == "")
    let v9 = m.validate(%* { "a": 123, "b": "hello", "c": %* [] })
    check(not v9.success)
    check(v9.errorKind == jmeIsEmpty)
    check(v9.errorField == "c")
    m.registerOptionalNonEmptyObject("d")
    let v10 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123] })
    check(v10.success)
    check(v10.errorKind == jmeNoError)
    check(v10.errorField == "")
    let v11 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123], "d": %* { "x": 0 } })
    check(v11.success)
    check(v11.errorKind == jmeNoError)
    check(v11.errorField == "")
    let v12 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123], "d": %* {} })
    check(not v12.success)
    check(v12.errorKind == jmeIsEmpty)
    check(v12.errorField == "d")
    m.registerOptionalInteger("d/x")
    let v13 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123] })
    check(v13.success)
    check(v13.errorKind == jmeNoError)
    check(v13.errorField == "")
    let v14 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123], "d": %* { "x": 123 } })
    check(v14.success)
    check(v14.errorKind == jmeNoError)
    check(v14.errorField == "")
    let v15 = m.validate(%* { "a": 123, "b": "hello", "c": %* [123], "d": %* { "x": 456.789 } })
    check(not v15.success)
    check(v15.errorKind == jmeBadKind)
    check(v15.errorField == "d/x")
    m.clear()
    check(m.defineOptionalNonEmptyObject("d") != nil)
    m.defineOptionalInteger("d/x").registerMandatoryUntyped("e")
    let t = m.saveToJArray()
    check($t == """["optional nonempty object d","optional integer d/x","mandatory untyped e"]""")
    check($m.reset().saveToJArray() == "[]")
    m.loadFromJArray(t)
    check($m.saveToJArray() == """["optional nonempty object d","optional integer d/x","mandatory untyped e"]""")
    let v16 = m.validate(%* { "e": 123 })
    check(v16.success)
    check(v16.errorKind == jmeNoError)
    check(v16.errorField == "")
    let v17 = m.validate(%* { "e": "hello" })
    check(v17.success)
    check(v17.errorKind == jmeNoError)
    check(v17.errorField == "")
    let v18 = m.validate(%* { "e": newJNull() })
    check(v18.success)
    check(v18.errorKind == jmeNoError)
    check(v18.errorField == "")
    let v19 = m.validate(%* { "err": newJNull() })
    check(not v19.success)
    check(v19.errorKind == jmeNotExists)
    check(v19.errorField == "e")

  test "test saveJsonNodeToFile":
    let n = %* { "a": 123 }
    check(saveJsonNodeToFile("test.json", n))
    let s1 = readFile("test.json")
    check(s1 == "{\"a\":123}")
    check(saveJsonNodeToFile("test.json", n, true))
    let s2 = readFile("test.json")
    check(s2 == """{
  "a": 123
}""")
    removeFile("test.json")

  test "test loadJsonNodeFromFile":
    check(loadJsonNodeFromFile("blah.json") == nil)
    writeFile("test.json", "{}")
    check(isJObject(loadJsonNodeFromFile("test.json")))
    removeFile("test.json")
