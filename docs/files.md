# files

This is the documentation of the files related routines module of the Xam library.

## ROUTINES

### MAKEEMPTYFILE

**SIGNATURE**

`proc makeEmptyFile*(filename: string): bool`

**DESCRIPTION**

*Creates the specified new empty file and returns true if it had success (after closing the file), or false otherwise.*

**USAGE**

```nim
  if makeEmptyFile("test.txt"):
    echo "created!"
```

### READFROMFILE

**SIGNATURE**

`proc readFromFile*[T](filename: string, content: var T): bool`

**DESCRIPTION**

*Reads the specified file content and assign it to the passed variable and returns true if it had success (after closing the file), or false otherwise..*

**USAGE**

```nim
  var content: string = ""
  if readFromFile("test.txt", content):
    echo "read! the content is: " & content
```

### WRITETOFILE

**SIGNATURE**

`proc writeToFile*[T](filename: string, content: T): bool`

**DESCRIPTION**

*Writes the specified file with the provided content and returns true if it had success (after closing the file), or false otherwise.*

*NOTE: if the file does not exists, it is created.*

**USAGE**

```nim
  if writeToFile("test.txt", "hello world!"):
    echo "wrote!"
```

### APPENDTOFILE

**SIGNATURE**

`proc appendToFile*[T](filename: string, content: T): bool`

**DESCRIPTION**

*Appends the specified file with the provided content and returns true if it had success (after closing the file), or false otherwise.*

*NOTE: if the file does not exists, it is created.*

**USAGE**

```nim
  if appendToFile("test.txt", "lorem ipsum"):
    echo "appended!"
```

### REMOVEFILES

**SIGNATURE**

`proc removeFiles*(files: varargs[string])`

**DESCRIPTION**

*Removes the provided files.*

**USAGE**

```nim
  removeFiles("file1.txt", "file2.txt")
```

### FILESEXIST

**SIGNATURE**

`proc filesExist*(files: varargs[string]): bool`

**DESCRIPTION**

*Checks if all of the provided files exist.*

**USAGE**

```nim
  if filesExist("foo.txt", "bar.txt"):
    echo "exist!"
```

### FILESDONTEXIST

**SIGNATURE**

`proc filesDontExist*(files: varargs[string]): bool`

**DESCRIPTION**

*Checks if all of the provided files do not exist.*

**USAGE**

```nim
  if filesDontExist("foo.txt", "bar.txt"):
    echo "dont exist!"
```

### EXTRACTFILEEXTENSION

**SIGNATURE**

`func extractFileExtension*(fileName: string): string`

**DESCRIPTION**

*Returns the file extension part of the provided file name if any. Otherwise it returns an empty string.*

**USAGE**

```nim
  if extractFileExtension("file.nim") == ".nim":
    echo "extracted!"
```

### CHECKFILEEXTENSION

**SIGNATURE**

`func checkFileExtension*(fileName, fileExtension: string): bool`

**DESCRIPTION**

*Determines if the provided file name has the specified file extension.*

**USAGE**

```nim
  if checkFileExtension("file.nim", ".nim"):
    echo "extracted!"
```
