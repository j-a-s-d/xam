# xam
# ===
# MULTIPLATFORM OUTPUT ALIASES

template print*(s: varargs[string]) {.used.} =
  ## Fortran/Python/Lua-like output alias
  stdout.write(s)

template println*(s: varargs[string]) {.used.} =
  ## Java/Arduino/Kotlin/Go-like output alias
  stdout.writeLine(s)

template writeln*(s: varargs[string]) {.used.} =
  ## Pascal/D/Racket/Kotlin/Dart/etc-like output alias
  stdout.writeLine(s)

template putStr*(s: varargs[string]) {.used.} =
  ## Haskell-like output alias
  stdout.write(s)

template putStrLn*(s: varargs[string]) {.used.} =
  ## Haskell-like output alias
  stdout.writeLine(s)

template display*(s: varargs[string]) {.used.} =
  ## Racket-like output alias
  stdout.write(s)

template displayln*(s: varargs[string]) {.used.} =
  ## Racket-like output alias
  stdout.writeLine(s)

template puts*(s: varargs[string]) {.used.} =
  ## C/Ruby-like output alias
  stdout.writeLine(s)

template say*(s: varargs[string]) {.used.} =
  ## AppleScript/Scratch-like output alias
  stdout.writeLine(s)
