# xam
# ===
# MULTIPLATFORM PROGRAM SHUTDOWN ROUTINES

const
  EXIT_SUCCESS*: int = 0
  EXIT_FAILURE*: int = 1

{.push inline.}

proc halt*(errorCode: int = EXIT_SUCCESS) =
  ## Exits with the specified error code (omittion defaults to 0).
  ## NOTE: inspired in Pascal's one.
  quit(errorCode)

proc exit*(errorCode: int) =
  ## Exits with the specified error code.
  ## NOTE: inspired in Pascal's one.
  quit(errorCode)

proc exit*(success: bool = true) =
  ## Exits with the specified success value (omittion defaults to true).
  ## NOTE: inspired in Ruby's one.
  quit(if success: EXIT_SUCCESS else: EXIT_FAILURE)

proc die*(errorMessage: string, errorCode: int = EXIT_SUCCESS) =
  ## Exits with the specified error message and
  ## with an optional custom error code (omittion defaults to 0).
  ## NOTE: inspired in PHP's one.
  echo(errorMessage)
  quit(errorCode)

{.pop.}
