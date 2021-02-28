# xam
# ===
# EXCEPTIONS RELATED ROUTINES

from callbacks import NoArgsProc, SingleArgProc

{.push inline.}

proc sandboxed*(procedure: NoArgsProc[void], errorHandler: SingleArgProc[string, void] = nil): bool =
  ## Executes the provided proc into a try/except block and returns true
  ## if it executes successfully or false if it fails. On failure, if an
  ## error handler is provided, it will dispatch the current exception
  ## message to it.
  ## NOTE: if the provided procedure is nil, a CatchcableError with message
  ## "Cannot invoke nil" will be dispatched to the error handler (if provided).
  try:
    if procedure == nil:
      raise newException(CatchableError, "Cannot invoke nil")
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

proc catch*(procedure: NoArgsProc[void], error: var ref Exception) =
  ## Executes the provided proc into a try/except block. On failure, it
  ## assigns the current exception to the passed error variable.
  ## NOTE: if the provided procedure is nil, a CatchcableError with message
  ## "Cannot invoke nil" will be assigned to the passed error variable.
  error = nil
  try:
    if procedure == nil:
      raise newException(CatchableError, "Cannot invoke nil")
    procedure()
  except:
    error = getCurrentException()

{.pop.}

