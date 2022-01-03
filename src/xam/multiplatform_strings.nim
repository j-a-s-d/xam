# xam
# ===
# MULTIPLATFORM COMMON STRING MANIPULATION ROUTINES ALIASES

from strutils import find, strip

template length*(s: string): int =
  ## Pascal/C#-like len alias
  s.len

proc pos*(s, sub: string, offset: int = 0): int =
  ## Pascal-like find alias
  s.find(sub, offset)

proc indexOf*(s, sub: string, fromIndex: int = 0): int =
  ## C#/Javascript-like find alias
  s.find(sub, fromIndex)

proc trim*(s: string): string =
  ## Pascal/C#/Javascript/etc-like trim alias
  s.strip()

proc trimLeft*(s: string): string =
  ## Pascal/Javascript/etc-like trimLeft alias
  s.strip(trailing = false)

proc trimRight*(s: string): string =
  ## Pascal/Javascript/etc-like trimRight alias
  s.strip(leading = false)

proc trimStart*(s: string): string =
  ## C#/Javascript/etc-like trimStart alias
  s.strip(trailing = false)

proc trimEnd*(s: string): string =
  ## C#/Javascript/etc-like trimEnd alias
  s.strip(leading = false)
