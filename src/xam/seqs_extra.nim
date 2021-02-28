# xam
# ===
# SEQUENCE EXTRA ROUTINES

proc drop*[T](c: var seq[T], count: int) =
  if c.len() == 0:
    return
  c.setLen(max(0, c.len() - count))

proc extract*[T](c: var seq[T], index: int, default: T): T =
  if index notin low(c)..high(c):
    return default
  result = c[index]
  c.delete(index)

