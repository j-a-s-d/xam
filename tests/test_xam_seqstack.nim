# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam seqstack":

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
    check(k.slice(3) == @[4, 5])

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
    var k: stack[int] = @[1, 2, 3, 4, 5]
    k.drop(2)
    check(k == @[1, 2, 3])
    k.drop(4)
    check(k.len == 0)
    k.drop(1)
    check(k.len == 0)
  
  test "test extract":
    var k: stack[int] = @[1, 2, 3, 4, 5]
    var x = k.extract(2, 0)
    check(x == 3)
    check(k == @[1, 2, 4, 5])
    var y = k.extract(-1, 0)
    check(y == 0)
    var z = k.extract(4, -1)
    check(z == -1)

