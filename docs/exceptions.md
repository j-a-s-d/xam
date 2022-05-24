# exceptions

This is the documentation of the exceptions related routines module of the Xam library.

## TYPES

- `ExceptionRef* = ref Exception`

## ROUTINES

### SANDBOXED

**SIGNATURE**

`proc sandboxed*(procedure: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil): bool {.inline.}`

**DESCRIPTION**

*Executes the provided proc into a try/except block and returns true if it executes successfully or false if it fails. On failure, if an error handler is provided, it will dispatch the current exception message to it.*

*NOTE: if the provided procedure is nil, a CatchcableError with message "Cannot invoke nil" will be dispatched to the error handler (if provided).*

**USAGE**

```nim
    proc failure() =
      raise newException(IOError, "Blah")

    proc capture(error: string) =
      if error == "Blah":
        echo "message captured"

    if not sandboxed(failure, capture):
      echo "the proc raised an exception"
```

### SILENT

**SIGNATURE**

`proc silent*(procedure: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil) {.inline.}`

**DESCRIPTION**

*Executes the provided proc into a try/except block. On failure, if an error handler is provided, it will dispatch the current exception message to it.*

*NOTE: this is a call to the sandboxed routine but discarding the result.*

**USAGE**

```nim
    proc failure() =
      raise newException(IOError, "Blah")

    proc capture(error: string) =
      if error == "Blah":
        echo "message captured"

    silent(failure, capture)
```

### CATCH

**SIGNATURE**

`proc catch*(procedure: NoArgsProc[void], error: var ref Exception) {.inline.}`

**DESCRIPTION**

*Executes the provided proc into a try/except block. On failure, it assigns the current exception to the passed error variable.*

*NOTE: if the provided procedure is nil, a CatchcableError with message "Cannot invoke nil" will be assigned to the passed error variable.*

**USAGE**

```nim
    proc failure() =
      raise newException(IOError, "Blah")

    var err: ref Exception
    catch(failure, err)
    if err != nil:
      echo err.msg # "Blah"
```

### THROW

**SIGNATURE**

`proc throw*(kind: typedesc, msg: string = "", parent: ref Exception = nil) {.inline.}`

**DESCRIPTION**

*Throws a new Exception based in the provided typedesc and optionally with the specified message, and optionaly with the provided parent.*

**USAGE**

```nim
    throw(IOError, "Blah")
```

## TEMPLATES

### TRYIT

**SIGNATURE**

`template tryIt*(code: untyped): bool`

**DESCRIPTION**

*Executes the provided code block into a try/except block and returns true if it executes successfully or false if it fails. On failure, errors will be ignored.*

*NOTE: this is a call to the sandboxed routine but not providing an error handler.*

**USAGE**

```nim
    var x = 0
    let r = tryIt:
      x += 1
    if r:
      echo "success!"
```
