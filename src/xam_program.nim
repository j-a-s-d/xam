# xam
# ===
# PROGRAM RELATED ROUTINES

from os import sleep

{.push inline.}

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

{.pop.}

