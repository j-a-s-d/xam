# xam
# ===
# STACK-LIKE ROUTINES FOR SEQ
# ---------------------------
# NOTE: inspired in Javascript's one

type
  stack*[T] = seq[T]

proc push*[T](c: var seq[T], value: T) =
  ## Adds the provided value at the end of the sequence.
  c.add(value)

proc peek*[T](c: seq[T], default: T): T =
  ## Returns the value of the last item of the sequence
  ## returning the default provided value in case of an empty sequence.
  if c.len() == 0: default else: c[^1]

proc pop*[T](c: var seq[T], default: T): T =
  ## Extracts the last item of the sequence
  ## returning the default provided value in case of an empty sequence.
  if c.len() == 0:
    return default
  result = c[^1]
  c.setLen(c.len() - 1)

proc slice*[T](c: seq[T], index: int = 0): seq[T] =
  ## Returns a copy of the sequence segment
  ## starting at the optionally specified index.
  let cln = c.len()
  let st = (if index < 0: cln else: 0) + (if abs(index) > cln: -cln else: index)
  if st > cln:
    return @[]
  c[st..^1]

proc slice*[T](c: seq[T], index: int, last: int): seq[T] =
  ## Returns a copy of the sequence segment starting at the specified index
  ## and ending at an also defined index.
  let cln = c.len()
  let st = (if index < 0: cln else: 0) + (if abs(index) > cln: -cln else: index)
  let en = (if last < 0: abs(last) else: cln - last) + 1
  if st > cln or en >= cln - 1:
    @[]
  else:
    c[st..^en]

proc shift*[T](c: var seq[T], default: T): T =
  ## Extracts the first element of the sequence,
  ## returning the default provided value in case of an empty sequence.
  if c.len() == 0:
    return default
  result = c[0]
  c = c[1..^1]

proc unshift*[T](c: var seq[T], m: stack[T]): int =
  ## Appends the provided sequence at the beginning of the sequence
  ## and returns the final amount of elements in the sequence.
  c = m & c
  c.len()

proc reverse*[T](c: var seq[T]): stack[T] =
  ## Returns a new sequence containing the
  ## reversed elements of the provided sequence.
  let cln = c.len()
  result = newSeq[T](cln)
  for i in 0..cln - 1:
    result[i] = c[cln - 1 - i]
  c = result

proc clear*[T](c: var seq[T]) =
  ## Clears the elements in the provided sequence.
  c.setLen(0)
