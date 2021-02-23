# xam
# ===
# 14.01.2021 - 22.02.2021

when defined(js):
  {.error: "This library needs to be compiled with a c/cpp-like backend".}

when defined(nimHasUsed):
  {.used.}

# INTERNAL REEXPORTS

template reexport*(imported, exported: untyped) =
  ## reexport template
  import imported
  export exported

reexport(xam/ansi, ansi)
reexport(xam/bytes, bytes)
reexport(xam/callbacks, callbacks)
reexport(xam/chars, chars)
reexport(xam/datetime, datetime)
reexport(xam/hex, hex)
reexport(xam/htmlcolors, htmlcolors)
reexport(xam/jsons, jsons)
reexport(xam/looping, looping)
reexport(xam/maths, maths)
reexport(xam/multiplatform, multiplatform)
reexport(xam/semanticversion, semanticversion)
reexport(xam/seqstack, seqstack)
reexport(xam/sizes, sizes)
reexport(xam/strings, strings)

# GLOBAL CONSTANTS AND VARIABLES

let
  VERSION*: SemanticVersion = newSemanticVersion(0, 3, 2)

var
  DEVELOPMENT*: bool = false ## This is the development flag. False by default, except when "release" is not defined.

when not defined(release):
  DEVELOPMENT = true

# COMMON ROUTINES

from os import sleep
from xam/callbacks import SingleArgProc

{.push inline.}

proc assigned*[T](things: varargs[T]): bool =
  ## Returns true if all the arguments are not nil.
  ## NOTE: inspired in Object Pascal's one.
  result = true
  for thing in things:
    result = result and thing != nil

proc halt*() =
  ## Exits with an error code of -1.
  ## NOTE: inspired in Pascal's one.
  quit(-1)

proc exit*(errorCode: int) =
  ## Exits with the specified error code.
  ## NOTE: inspired in Pascal's one.
  quit(errorCode)

proc nap*(ms: int) =
  ## Sleeps the specified amount of milliseconds.
  sleep(ms)

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

proc sandboxed*(procedure: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil): bool =
  ## Executes the provided proc into a try/except block and returns true
  ## if it executes successfully or false if it fails. On failure, if an
  ## error handler is provided, it will dispatch the current exception
  ## message to it.
  try:
    procedure()
    true
  except:
    if errorHandler != nil:
      errorHandler(getCurrentExceptionMsg())
    false

proc silent*(procedure: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil) =
  ## Executes the provided proc into a try/except block. On failure, if an
  ## error handler is provided, it will dispatch the current exception
  ## message to it.
  ## NOTE: this is a call to the sandboxed routine but discarding the result.
  discard sandboxed(procedure, errorHandler)

{.pop.}
