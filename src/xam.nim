# xam
# ===
# PRIMARY SOURCE

# DEFINITIONS AND INCLUDES

when defined(js):
  {.error: "This library needs to be compiled with a c/cpp-like backend".}

when defined(nimHasUsed):
  {.used.}

include xam/xam_templates
include xam/xam_reexports

# VALUES RELATED CONSTANTS AND ROUTINES

let
  VERSION*: SemanticVersion = newSemanticVersion(1, 9, 3)

var
  DEVELOPMENT*: bool = not defined(release) ## This is the development flag. False by default, except when "release" is not defined.

inlined:
  proc assigned*[T](things: varargs[T]): bool =
    ## Returns true if all the arguments are not nil.
    ## NOTE: inspired in Object Pascal's one.
    result = true
    for thing in things:
      result = result and thing != nil
  
  proc ensure*[T](value: T, default: T): T =
    ## Returns the specified value if it is not nil, or the default value otherwise.
    if value != nil: value else: default
  
  proc debug*[T](value: T): T =
    ## If it is in DEVELOPMENT mode, it echoes the specified value, or does nothing otherwise.
    ## In any case, it returns the specified value.
    ## It's behaviour allows you to intercept values on assignment (ex. var x = debug getX()).
    if DEVELOPMENT:
      echo(value)
    value

# DUMMIES

func noop* =
  ## Does nothing.
  discard

func truthy*: bool =
  ## Returns true.
  true

func falsy*: bool =
  ## Returns false.
  false
