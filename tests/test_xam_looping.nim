# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam looping":

  test "test each":
    var s = newSeq[int]()
    [1,2,3].each(x):
      s.add(x)
    check(s.len == 3)
    check(s[0] == 1)
    check(s[1] == 2)
    check(s[2] == 3)

  test "test meach":
    var a = [1,2,3]
    a.meach(x):
      if x == 3:
        x = 4
    check(a[0] == 1)
    check(a[1] == 2)
    check(a[2] == 4)

