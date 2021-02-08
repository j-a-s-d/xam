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
