# xam
# ===
# SEQUENCE EXTRA ROUTINES

proc drop*[T](c: var seq[T], count: int) =
  ## Drops the specified count of items of the provided sequence
  ## starting from the last item.
  if c.len() == 0:
    return
  c.setLen(max(0, c.len() - count))

proc extract*[T](c: var seq[T], index: int, default: T): T =
  ## Extracts the item at the specified index in the provided sequence
  ## returning the specified default value in case the index is out of bounds.
  if index notin low(c)..high(c):
    return default
  result = c[index]
  c.delete(index)

from sequtils import filter

func remove*[T](a: var seq[T], s: T) =
  a = a.filter(proc (x: T): bool = x != s)

func remove*[T](a: var seq[T], s: openArray[T]) =
  for x in s:
    a.remove(x)
