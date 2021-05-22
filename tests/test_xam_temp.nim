# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  strutils,
  os,
  xam

suite "test xam temp":

  test "test getNewTempFilename":
    var s1 = getNewTempFilename()
    check(s1.startsWith(TMP_DIRECTORY) and s1.endsWith(TMP_EXTENSION))
    var s2 = getNewTempFilename(".")
    check(s2.startsWith(".") and s2.endsWith(TMP_EXTENSION))

  test "test makeTempFile":
    var s1 = makeTempFile()
    check(s1.startsWith(TMP_DIRECTORY) and s1.endsWith(TMP_EXTENSION) and existsFile(s1))
    removeFile(s1)
    var s2 = makeTempFile(".")
    check(s2.startsWith(".") and s2.endsWith(TMP_EXTENSION) and existsFile(s2))
    removeFile(s2)
