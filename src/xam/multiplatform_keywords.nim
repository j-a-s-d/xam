# xam
# ===
# MULTIPLATFORM KEYWORD ALIASES

template pass* {.used.} =
  ## Python/Boo/GDScript-like discard alias
  discard

template pass*(something: untyped = nil): untyped {.used.} =
  ## Python/Boo/GDScript-like discard alias
  discard something

template unless*(expr, body: untyped): untyped {.used.} =
  ## Ruby unless-like alias
  if not expr:
    body

template unreachable*() {.used.} =
  ## Zig unreachable-like code marker alias
  ## NOTE: when not compiled with the option --threads:on it will show thread 0 as the origin.
  when not compileOption("threads"):
    template getThreadId(): int = 0
  echo "thread " & $getThreadId() & " panic: reached unreachable code"

template typealias*(X, Y) {.used.} =
  ## Swift typealias-like alias
  ## NOTE: the generated type will be public.
  type X* = Y

template unimplemented* {.used.} =
  ## Pascal unimplemented-like alias
  {.warning: "Symbol not implemented".}

template deprecated* {.used.} =
  ## Pascal deprecated-like alias
  {.warning: "Symbol is deprecated".}

template experimental* {.used.} =
  ## Pascal experimental-like alias
  {.warning: "Symbol is experimental".}

template platform* {.used.} =
  ## Pascal platform-like alias
  {.warning: "Symbol is not portable".}
