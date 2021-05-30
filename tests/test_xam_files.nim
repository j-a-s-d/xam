# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  os,
  xam

suite "test xam files":

  test "test makeFile":
    check(makeEmptyFile("test.file"))

  test "test writeToFile":
    check(writeToFile("test2.file", "hey"))
    check(writeToFile("test2.file", "hello"))

  test "test readFromFile":
    var content = ""
    check(readFromFile("test2.file", content))
    check("hello" == content)

  test "test appendToFile":
    check(appendToFile("test2.file", " world!"))
    var content = ""
    check(readFromFile("test2.file", content))
    check("hello world!" == content)
    check(appendToFile("test3.file", "hey!"))

  # suite teardown

  "test.file".removeFile()
  "test1.file".removeFile()
  "test2.file".removeFile()
  "test3.file".removeFile()
