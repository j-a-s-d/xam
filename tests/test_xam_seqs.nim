# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  json,
  times,
  unittest,
  xam

suite "test xam seqs":

  test "test push":
    var k: stack[int] = @[]
    k.push(1)
    check(k == @[1])
    k.push(2)
    check(k == @[1, 2])

  test "test pop":
    var k: stack[int] = @[1]
    check(k.pop(123) == 1)
    check(k.pop(123) == 123)

  test "test peek":
    var k: stack[int] = @[1]
    check(k.peek(123) == 1)
    discard k.pop()
    check(k.peek(123) == 123)

  test "test slice":
    var k: stack[int] = @[1, 2, 3, 4, 5]
    check(k.slice() == @[1, 2, 3, 4, 5])
    check(k.slice(0) == @[1, 2, 3, 4, 5])
    check(k.slice(3) == @[4, 5])
    check(k.slice(5).len == 0)
    check(k.slice(-1) == @[5])
    check(k.slice(-5) == @[1, 2, 3, 4, 5])
    check(k.slice(-6) == @[1, 2, 3, 4, 5])
    check(k.slice(3, -3).len == 0)
    check(k.slice(3, -2).len == 0)
    check(k.slice(3, -1) == @[4])
    check(k.slice(3, 0).len == 0)
    check(k.slice(3, 1).len == 0)
    check(k.slice(3, 2).len == 0)
    check(k.slice(3, 3).len == 0)
    check(k.slice(3, 4) == @[4])
    check(k.slice(3, 5) == @[4, 5])
    check(k.slice(2, -1) == @[3, 4])
    check(k.slice(2, -2) == @[3])
    check(k.slice(2, -3).len == 0)
    check(k.slice(2, -4).len == 0)
    check(k.slice(2, -5).len == 0)
    check(k.slice(2, -6).len == 0)

  test "test shift":
    var k: stack[int] = @[1, 2, 3, 4, 5]
    let x = k.shift(123)
    check(x == 1)
    check(k == @[2, 3, 4, 5])

  test "test unshift":
    var k: stack[int] = @[1, 2, 3]
    let l = k.unshift(@[4, 5])
    check(l == 5)
    check(k == @[4, 5, 1, 2, 3])

  test "test reverse":
    var k: stack[int] = @[1, 2, 3, 4, 5]
    check(k.reverse() == @[5, 4, 3, 2, 1])

  test "test clear":
    var k: stack[int] = @[1, 2, 3, 4, 5]
    k.clear()
    check(k.len == 0)

  test "test drop":
    var k = @[1, 2, 3, 4, 5]
    k.drop(2)
    check(k == @[1, 2, 3])
    k.drop(4)
    check(k.len == 0)
    k.drop(1)
    check(k.len == 0)
  
  test "test extract":
    var k = @[1, 2, 3, 4, 5]
    var x = k.extract(2, 0)
    check(x == 3)
    check(k == @[1, 2, 4, 5])
    var y = k.extract(-1, 0)
    check(y == 0)
    var z = k.extract(4, -1)
    check(z == -1)

  test "test append":
    var k = @[1, 2, 3, 4, 5]
    let l = @[6, 7, 8]
    append(k, l)
    check(k == @[1, 2, 3, 4, 5, 6, 7, 8])
    append(k, [9])
    check(k == @[1, 2, 3, 4, 5, 6, 7, 8, 9])
    append(k, @[])
    check(k == @[1, 2, 3, 4, 5, 6, 7, 8, 9])

  test "test prepend":
    var k = @[1, 2, 3, 4, 5]
    let l = @[6, 7, 8]
    prepend(k, l)
    check(k == @[6, 7, 8, 1, 2, 3, 4, 5])
    prepend(k, 9)
    check(k == @[9, 6, 7, 8, 1, 2, 3, 4, 5])
    prepend(k, @[])
    check(k == @[9, 6, 7, 8, 1, 2, 3, 4, 5])
    prepend(k, [0])
    check(k == @[0, 9, 6, 7, 8, 1, 2, 3, 4, 5])

  test "test isEmpty":
    let k: seq[int] = @[]
    let l: seq[int] = @[1, 2, 3]
    check(isEmpty(k))
    check(not isEmpty(l))

  test "test hasContent":
    let k: seq[int] = @[]
    let l: seq[int] = @[1, 2, 3]
    check(not hasContent(k))
    check(hasContent(l))

  test "test fromCsvLine (char)":
    let k = fromCsvLine("a,b,c")
    check(k == @["a", "b", "c"])
    let x = fromCsvLine("x;y;z", ';')
    check(x == @["x", "y", "z"])

  test "test fromCsvLine (set of chars)":
    let k = fromCsvLine("a,b,c", {','})
    check(k == @["a", "b", "c"])
    let x = fromCsvLine("x,y;z", {',', ';'})
    check(x == @["x", "y", "z"])

  test "test toCsvLine (char)":
    let k = toCsvLine(@["a", "b", "c"])
    check(k == "a,b,c")
    let x = toCsvLine(@["x", "y", "z"], ';')
    check(x == "x;y;z")

  test "test toCsvLine (string)":
    let k = toCsvLine(@["a", "b", "c"], "|")
    check(k == "a|b|c")

  test "test remove":
    var a = @["1", "2", "3", "4", "5"]
    a.remove(["2", "4"])
    check(a == @["1", "3", "5"])
    a.remove(@["5"])
    check(a == @["1", "3"])
    a.remove(@["5"])
    check(a == @["1", "3"])
    var b = @["1", "2", "3", "2"]
    b.remove("2")
    check(b == @["1", "3"])
    b.remove("2")
    check(b == @["1", "3"])

  test "test concrete-type constructor":
    check(newStringSeq() == newSeq[string]())
    check(newStringSeq("a", "b", "c") == @["a", "b", "c"])

  test "test other-types constructor":
    check(newJsonNodeSeq() == newSeq[JsonNode]())
    let node: JsonNode = %* { "a": "blah", "b": true, "c": 123 }
    check(newJsonNodeSeq(node) == @[node])
    check(newDateTimeSeq() == newSeq[DateTime]())
    let now: DateTime = now()
    check(newDateTimeSeq(now) == @[now])

  test "test treat":
    let increment: Treater[uint8] = proc (p: uint8): uint8 = p + 1
    var bytes: UInt8Seq = @[BYTES_12, BYTES_34, BYTES_56, BYTES_78, BYTES_90]
    treat(bytes, increment)
    check(bytes == @[BYTES_13, BYTES_35, BYTES_57, BYTES_79, BYTES_91])
