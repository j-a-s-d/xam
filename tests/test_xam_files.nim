# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
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

  test "test filesExist":
    check(filesExist())
    check(filesExist("test.file"))
    check(filesExist("test.file", "test2.file", "test3.file"))
  
  test "test removeFiles":
    removeFiles("test.file", "test2.file", "test3.file")

  test "test filesDontExist":
    check(filesDontExist())
    check(filesDontExist("blah.txt"))
    check(filesDontExist("foo.txt", "bar.txt"))
    check(filesDontExist("test.file", "test2.file", "test3.file"))

  test "test extractFileExtension":
    check(extractFileExtension("test.nim") == ".nim")
    check(extractFileExtension("test.") == ".")
    check(extractFileExtension("test") == "")
    check(extractFileExtension(".") == "")
    check(extractFileExtension("") == "")

  test "test checkFileExtension":
    check(checkFileExtension("test.nim", ".nim"))
    check(checkFileExtension("test.xyz.nim", ".nim"))
    check(not checkFileExtension("test", ".nim"))
    check(checkFileExtension("test", ""))
    check(not checkFileExtension("", ".nim"))
    check(checkFileExtension("", ""))

  test "test stripFileExtension":
    check(stripFileExtension("test.nim") == "test")
    check(stripFileExtension("dir/test.nim") == "dir/test")
    check(stripFileExtension("dir/test") == "dir/test")
    check(stripFileExtension("") == "")

  test "test extractFilenameWithoutExtension":
    check(extractFilenameWithoutExtension("test.nim") == "test")
    check(extractFilenameWithoutExtension("dir/test.nim") == "test")
    check(extractFilenameWithoutExtension("dir/test") == "test")
    check(extractFilenameWithoutExtension("dir/") == "")
    check(extractFilenameWithoutExtension("") == "")
