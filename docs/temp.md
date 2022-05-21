# temp

This is the documentation of the temporary files related constants and routines module of the Xam library.

## CONSTANTS

- `const TMP_EXTENSION*: string`
- `let TMP_DIRECTORY*: string`

## ROUTINES

### GETNEWTEMPFILENAME

**SIGNATURE**

`proc getNewTempFilename*(directory: string = ""): string`

**DESCRIPTION**

*Returns an string containing a new temporary filename available in the specified directory (if none is specified, TMP.DIRECTORY will be used).*

*NOTE: it does not create any file in the process.*

**USAGE**

```nim
  echo getNewTempFilename()
```

### MAKETEMPFILE

**SIGNATURE**

`proc makeTempFile*(directory: string = ""): string`

**DESCRIPTION**

*Creates a new empty temporary file in the specified directory (if none is specified, TMP.DIRECTORY will be used) and returns an string containing it's name (after closing the file).*

**USAGE**

```nim
  echo makeTempFile()
```
