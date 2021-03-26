# xam

This is the documentation of the xam general features module of the Xam library.

## CONSTANTS

### VERSION

**SIGNATURE**
`let VERSION*: SemanticVersion`
**DESCRIPTION**
*This is the library version. This value is read-only.*

## VARIABLES

### DEVELOPMENT

**SIGNATURE**
`var DEVELOPMENT*: bool`
**DESCRIPTION**
*This is the development flag. False by default, except when "release" is not defined. You can flip it at runtime if required.*

## ROUTINES

### ASSIGNED

**SIGNATURE**
`proc assigned*[T](things: varargs[T]): bool {.inline.}`
**DESCRIPTION**
*Returns true if all the arguments are not nil.*
*NOTE: inspired in Object Pascal's one.*
**USAGE**
```nim
  if assigned(x, y):
    echo "x and y are not nil"
```

### ENSURE

**SIGNATURE**
`proc ensure*[T](value: T, default: T): T {.inline.}`
**DESCRIPTION**
*Returns the specified value if it is not nil, or the default value otherwise.*
**USAGE**
```nim
  let x = ensure(getSomeObjectRef(), DEFAULT_VALUE)
  if x == DEFAULT_VALUE:
    echo "getSomeObjectRef returned nil but x has the default value"
```

### DEBUG

**SIGNATURE**
`proc debug*[T](value: T): T {.inline.}`
**DESCRIPTION**
*If it is in dev mode (DEVELOPMENT == true), it echoes the specified value, or does nothing otherwise.
In any case, it returns the specified value.
It's behaviour allows you to intercept values on assignment (ex. var x = debug getX()).*
**USAGE**
```nim
  let msg = debug getMessage()
```

## TEMPLATES

### INLINED

**SIGNATURE**
`template inlined*(procs: untyped)`
**DESCRIPTION**
*This template includes the push/pop pragmas for inline multiple procs.*
**USAGE**
```nim
inlined:
  proc x() =
    echo "this proc is inlined!"
  proc y() =
    echo "this proc is inlined too!"
```

### REEXPORT

**SIGNATURE**
`template reexport*(imported, exported: untyped)`
**DESCRIPTION**
*This template performs the import and the export of the what is specified.*
**USAGE**
```nim
  # this is the same as doing 'import mylib/module' and 'export module'
  reexport(mylib/module, module)
```

### USE

**SIGNATURE**
`template use*(module, item: untyped)`
**DESCRIPTION**
*This template performs the import of a single module's element using the from syntax.*
**USAGE**
```nim
  # this is the same as doing 'from module import item'
  use strutils,split
```

### ISUNDEFINED

**SIGNATURE**
`template isUndefined(x: untyped)`
**DESCRIPTION**
*Idiomatic version of the `not declaredInScope` check.
It is a useful template to check if a variable or proc is defined at compile-time.*
*NOTE: it is inspired in the Underscore.js undefined symbol check function.*
**USAGE**
```nim
  if inUndefined(x):
    echo "x is not defined"
```

### INCOMPILETIME

**SIGNATURE**
`template inCompileTime(): bool`
**DESCRIPTION**
*Idiomatic version of the `nimvm` check.*
*NOTE: use it in when-expressions like `when inCompileTime():`.*
**USAGE**
```nim
  when inCompileTime():
    echo "in compiletime"
```

### INRUNTIME

**SIGNATURE**
`template inRunTime(): bool`
**DESCRIPTION**
*Idiomatic version of the `not nimvm` check.*
*NOTE: use it in if-expressions like `if inRuntime():`.*
**USAGE**
```nim
  if inRuntime():
    echo "in runtime"
```

### NAP

**SIGNATURE**
`template nap*(ms: int)`
**DESCRIPTION**
*Sleeps the specified amount of milliseconds.*
*NOTE: it is just a regular sleep alias that does not requires extra imports.*
**USAGE**
```nim
  nap 1000 # sleeps a second
```
