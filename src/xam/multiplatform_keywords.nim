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
