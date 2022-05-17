# files

This is the documentation of the directories related routines module of the Xam library.

## ROUTINES

### REMOVEDIRS

**SIGNATURE**

`proc removeDirs*(dirs: varargs[string])`

**DESCRIPTION**

*Removes the provided directories.*

**USAGE**

```nim
  removeDirs("somedir1", "somedir2")
```

### DIRSEXIST

**SIGNATURE**

`proc dirsExist*(dirs: varargs[string]): bool`

**DESCRIPTION**

*Checks if all of the provided directories exist.*

**USAGE**

```nim
  if dirsExist("foo", "bar"):
    echo "exist!"
```

### DIRSDONTEXIST

**SIGNATURE**

`proc dirsDontExist*(dirs: varargs[string]): bool`

**DESCRIPTION**

*Checks if all of the provided directories do not exist.*

**USAGE**

```nim
  if dirsDontExist("foo", "bar"):
    echo "dont exist!"
```

### ENSUREDIR

**SIGNATURE**

`proc ensureDir*(directoryName: string): bool`

**DESCRIPTION**

*If the provided directory name does not exist it tries to create it and returns true if finally the directory exists.*

*NOTE: this is an alternative (with a different implementation) for existsOrCreateDir.*

**USAGE**

```nim
  if ensureDir("bar"):
    echo "ensured!"
```
