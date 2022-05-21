# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  sets,
  xam

suite "test xam set":

  test "test concrete-type hash set constructor":
    check(newStringHashSet() == toHashSet[string]([]))
    var abc = newStringHashSet("a", "b", "c")
    check(abc.len == 3)
    check(abc.pop in ["a", "b", "c"])
    check(abc.pop in ["a", "b", "c"])
    check(abc.pop in ["a", "b", "c"])

  test "test concrete-type ordered set constructor":
    check(newFloatOrderedSet() == toOrderedSet[float]([]))
    var nnn = newFloatOrderedSet(1.1, 2.2, 3.3)
    check(nnn.len == 3)
    check(nnn == toOrderedSet[float]([1.1, 2.2, 3.3]))

