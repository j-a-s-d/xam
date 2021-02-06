# xam
# ===
# STACK-LIKE ROUTINES FOR SEQ
# ---------------------------
# NOTE: inspired in Javascript's one

type
  stack*[T] = seq[T]

proc push*[T](c: var stack[T], value: T) =
  c.add(value)

proc peek*[T](c: var stack[T], default: T): T =
  if c.len() == 0: default else: c[^1]

proc pop*[T](c: var stack[T], default: T): T =
  if c.len() == 0:
    return default
  result = c[^1]
  c.setLen(c.len() - 1)

proc slice*[T](c: var stack[T], count: int): seq[T] =
  let cln = c.len()
  let cnt = (if count < 0: cln else: 0) + (if abs(count) > cln: -cln else: count)
  if cnt > cln:
    return @[]
  c[cnt..^1]

proc shift*[T](c: var stack[T], default: T): T =
  if c.len() == 0:
    return default
  result = c[0]
  c = c[1..^1]

proc unshift*[T](c: var stack[T], m: stack[T]): int =
  c = m & c
  c.len()

proc reverse*[T](c: var stack[T]): stack[T] =
  let cln = c.len()
  result = newSeq[T](cln)
  for i in 0..cln - 1:
    result[i] = c[cln - 1 - i]
  c = result

proc clear*[T](c: var stack[T]) =
  c.setLen(0)

# NOTE: the following are extra
proc drop*[T](c: var stack[T], count: int) =
  if c.len() == 0:
    return
  c.setLen(max(0, c.len() - count))

proc extract*[T](c: var stack[T], index: int, default: T): T =
  if index notin low(c)..high(c):
    return default
  result = c[index]
  c.delete(index)

