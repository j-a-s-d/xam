# xam
# ===
# 14.01.2021 - 27.01.2021

when defined(js):
  {.error: "This library needs to be compiled with a c/cpp-like backend".}

# INTERNAL REEXPORTS

template reexport*(imported, exported: untyped) =
  ## reexport template
  import imported
  export exported

reexport(xam/ansi, ansi)
reexport(xam/bytes, bytes)
reexport(xam/callbacks, callbacks)
reexport(xam/chars, chars)
reexport(xam/hex, hex)
reexport(xam/htmlcolors, htmlcolors)
reexport(xam/numbers, numbers)
reexport(xam/mathematica, mathematica)
reexport(xam/multiplatform, multiplatform)
reexport(xam/parsing, parsing)
reexport(xam/semanticversion, semanticversion)
reexport(xam/seqstack, seqstack)
reexport(xam/sizes, sizes)
reexport(xam/strings, strings)

# GLOBAL CONSTANTS AND VARIABLES

let
  VERSION*: SemanticVersion = newSemanticVersion(0, 1, 0)

var
  DEVELOPMENT*: bool = false ## This is the development flag. False by default, except when "release" is not defined.

when not defined(release):
  DEVELOPMENT = true

# COMMON ROUTINES

from os import sleep
from xam/callbacks import SingleArgProc

proc assigned*[T](things: varargs[T]): bool {.inline.} =
  ## Returns true if all the arguments are not nil.
  ## NOTE: inspired in Object Pascal's one.
  result = true
  for thing in things:
    result = result and thing != nil

proc halt*() {.inline.} =
  ## Exits with an error code of -1.
  ## NOTE: inspired in Pascal's one.
  quit(-1)

proc exit*(errorCode: int) {.inline.} =
  ## Exits with the specified error code.
  ## NOTE: inspired in Pascal's one.
  quit(errorCode)

proc nap*(ms: int) {.inline.} =
  ## Sleeps the specified amount of milliseconds.
  sleep(ms)

proc ensure*[T](value: T, default: T): T {.inline.} =
  ## Returns the specified value if it is not nil, or the default value otherwise.
  if value != nil: value else: default

proc debug*[T](value: T): T {.inline.} =
  ## If it is in DEVELOPMENT mode, it echoes the specified value, or does nothing otherwise.
  ## In any case, it returns the specified value.
  ## It's behaviour allows you to intercept values on assignment (ex. var x = debug getX())
  if DEVELOPMENT:
    echo(value)
  value

proc sandboxed*(p: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil): bool {.inline.} =
  ## Executes the provided proc into a try/except block and returns true
  ## if it executes successfully or false if it fails. On failure, if an
  ## error handler is provided, it will dispatch the current exception
  ## message to it.
  try:
    p()
    true
  except:
    if errorHandler != nil:
      errorHandler(getCurrentExceptionMsg())
    false
