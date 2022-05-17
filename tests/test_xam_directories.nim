# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  os,
  xam

suite "test xam directories":

  createDir("foo")
  createDir("test")
  createDir("test2")
  createDir("test3")

  test "test dirsExist":
    check(dirsExist())
    check(dirsExist("test"))
    check(dirsExist("test", "test2", "test3"))
  
  test "test removeDirs":
    removeDirs()
    removeDirs("test", "test2", "test3")

  test "test dirsDontExist":
    check(dirsDontExist())
    check(not dirsDontExist("foo"))
    check(dirsDontExist("test", "test2", "test3"))

  test "test ensureDir":
    check(ensureDir("bar"))
    check(not ensureDir(""))

  removeDir("foo")
  removeDir("bar")

