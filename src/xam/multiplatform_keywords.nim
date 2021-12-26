# xam
# ===
# MULTIPLATFORM KEYWORD ALIASES

template pass* =
  ## Python/Boo/GDScript-like discard alias
  discard

template pass*(something: untyped = nil): untyped =
  ## Python/Boo/GDScript-like discard alias
  discard something

template unless*(expr, body: untyped): untyped =
  ## Ruby unless-like alias
  if not expr:
    body
