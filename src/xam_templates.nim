# xam
# ===
# USEFUL TEMPLATES

template inlined*(procs: untyped) =
  ## This template includes the push/pop pragmas for inline multiple procs.
  {.push inline.}
  procs
  {.pop.}

template reexport*(imported, exported: untyped) =
  ## This template performs the import and the export of the what is specified.
  import imported
  export exported

template use*(module, item: untyped) =
  ## This template performs the import of a single module's element using the from syntax.
  from module import item

template isUndefined(x: untyped): bool =
  ## Idiomatic version of the `not declaredInScope` check.
  ## It is a useful template to check if a variable or proc is defined at compile-time.
  ## NOTE: it is inspired in the Underscore.js undefined symbol check function.
  when not declaredInScope(x): true else: false

template inCompileTime(): bool =
  ## Idiomatic version of the `nimvm` check.
  ## NOTE: use it in when-expressions like `when inCompileTime():`.
  when nimvm: true else: false

template inRunTime(): bool =
  ## Idiomatic version of the `not nimvm` check.
  ## NOTE: use it in if-expressions like `if inRuntime():`.
  not inCompileTime()

use os,sleep

template nap*(ms: int) =
  ## Sleeps the specified amount of milliseconds.
  ## NOTE: it is just a regular sleep alias that does not requires extra imports.
  sleep(ms)
