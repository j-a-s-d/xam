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
