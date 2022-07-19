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
