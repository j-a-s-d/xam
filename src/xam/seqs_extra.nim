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
  ## Removes the specified item of the provided sequence.
  a = a.filter(proc (x: T): bool = x != s)

func remove*[T](a: var seq[T], s: openArray[T]) =
  ## Removes the specified item sequence of the provided open array.
  for x in s:
    a.remove(x)

func prepend*[T](a: var seq[T], value: T) =
  ## Prepends the specified value in the specified sequence.
  a.insert(value, 0)

func prepend*[T](a: var seq[T], b: openArray[T]) =
  ## Prepends the provided open array in the specified sequence.
  for t in countdown(high(b), low(b)):
    insert(a, b[t], 0)

func append*[T](a: var seq[T], b: openArray[T]) =
  ## Appends the provided open array in the specified sequence.
  for t in b:
    insert(a, t, a.len)

func isEmpty*[T](a: seq[T]): bool =
  ## Determines if the specified sequence is empty.
  a.len == 0

func hasContent*[T](a: seq[T]): bool =
  ## Determines if the specified sequence is not empty.
  a.len > 0

from callbacks import Treater

func treat*[T](a: var seq[T], t: Treater[T]) =
  ## Treats each element of the specified sequence with the provided treater callback.
  for x in mitems(a):
    x = t(x)
