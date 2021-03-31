# seqs

This is the documentation of the sequences related routines module of the Xam library.

## TYPES

### CONCRETE-TYPE COMMON DEFINITIONS

- `type FloatSeq* = seq[float]`
- `type Float32Seq* = seq[float32]`
- `type Float64Seq* = seq[float64]`
- `type IntSeq* = seq[int]`
- `type Int8Seq* = seq[int8]`
- `type Int16Seq* = seq[int16]`
- `type Int32Seq* = seq[int32]`
- `type Int64Seq* = seq[int64]`
- `type UIntSeq* = seq[uint]`
- `type UInt8Seq* = seq[uint8]`
- `type UInt16Seq* = seq[uint16]`
- `type UInt32Seq* = seq[uint32]`
- `type UInt64Seq* = seq[uint64]`
- `type BoolSeq* = seq[bool]`
- `type CharSeq* = seq[char]`
- `type StringSeq* = seq[string]`
- `type PtrSeq* = seq[ptr]`
- `type CStringSeq* = seq[cstring]`
- `type CCharSeq* = seq[cchar]`
- `type CUintSeq* = seq[cuint]`
- `type CIntSeq* = seq[cint]`
- `type CFloatSeq* = seq[cfloat]`

## JS STACK-LIKE GENERIC SEQUENCE DEFINITION

- `type stack*[T] = seq[T]`

## ROUTINES

### CSV RELATED ROUTINES

**SIGNATURE**

`proc fromCsvLine*(csv: string, separators: set[char]): seq[string] {.inline.}`

**DESCRIPTION**

*Cracks a provided csv line string into a sequence of strings, accepting also a set of char separators.*

**USAGE**

```nim
    let k = fromCsvLine("a,b,c", {','})
    if k == @["a", "b", "c"]:
      echo "cracked!"
    let x = fromCsvLine("x,y;z", {',', ';'})
    if x == @["x", "y", "z"]:
      echo "cracked!"
```

**SIGNATURE**

`proc fromCsvLine*(csv: string, separator: char = ','): seq[string] {.inline.}`

**DESCRIPTION**

*Cracks a provided csv line string into a sequence of strings, accepting optionally the char separator (',' by default).*

**USAGE**

```nim
    let k = fromCsvLine("a,b,c")
    if k == @["a", "b", "c"]:
      echo "cracked!"
    let x = fromCsvLine("x;y;z", ';')
    if x == @["x", "y", "z"]:
      echo "cracked!"
```

**SIGNATURE**

`proc toCsvLine*(ss: seq[string], separator: string): string {.inline.}`

**DESCRIPTION**

*Joins the provided sequence of strings into a csv line using the specified string separator.*

**USAGE**

```nim
    let k = toCsvLine(@["a", "b", "c"], "|")
    if k == "a|b|c":
      echo "joined!"
```

**SIGNATURE**

`proc toCsvLine*(ss: seq[string], separator: char = ','): string {.inline.}`

**DESCRIPTION**

*Joins the provided sequence of strings into a csv line using the optionally specified char separator (',' by default).*

**USAGE**

```nim
    let k = toCsvLine(@["a", "b", "c"])
    if k == "a,b,c":
      echo "joined!"
    let x = toCsvLine(@["x", "y", "z"], ';')
    if x == "x;y;z":
      echo "joined!"
```

### JS STACK-LIKE ROUTINES

**SIGNATURE**

`proc push*[T](c: var stack[T], value: T)`

**DESCRIPTION**

*Adds the provided value at the end of the sequence.*

**USAGE**

```nim
    var k: stack[int] = @[]
    k.push(1)
    if k == @[1]:
      echo "pushed!"
    k.push(2)
    if k == @[1, 2]:
      echo "pushed!"
```

**SIGNATURE**

`proc peek*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Returns the value of the last item of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1]
    if k.peek(123) == 1:
      echo "peeked value!"
    discard k.pop()
    if k.peek(123) == 123:
      echo "got the default value"
```

**SIGNATURE**

`proc pop*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Extracts the last item of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1]
    if k.pop(123) == 1:
      echo "popped!"
    if k.pop(123) == 123:
      echo "got the default value"
```

**SIGNATURE**

`proc slice*[T](c: var stack[T], index: int = 0): seq[T]`

**DESCRIPTION**

*Returns a copy of the sequence segment starting at the optionally specified index (default is 0).*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    if k.slice() == @[1, 2, 3, 4, 5]:
      echo "sliced!"
    if k.slice(0) == @[1, 2, 3, 4, 5]:
      echo "sliced!"
    if k.slice(3) == @[4, 5]:
      echo "sliced!"
    if k.slice(5).len == 0:
      echo "sliced!"
    if k.slice(-1) == @[5]:
      echo "sliced!"
    if k.slice(-5) == @[1, 2, 3, 4, 5]:
      echo "sliced!"
    if k.slice(-6) == @[1, 2, 3, 4, 5]:
      echo "sliced!"
```

**SIGNATURE**

`proc slice*[T](c: var stack[T], index: int, last: int): seq[T]`

**DESCRIPTION**

*Returns a copy of the sequence segment starting at the specified index and ending at an also defined index.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    if k.slice(3, -2).len == 0:
      echo "sliced!"
    if k.slice(3, -1) == @[4]:
      echo "sliced!"
    if k.slice(3, 0).len == 0:
      echo "sliced!"
    if k.slice(3, 3).len == 0:
      echo "sliced!"
    if k.slice(3, 4) == @[4]:
      echo "sliced!"
    if k.slice(3, 5) == @[4, 5]:
      echo "sliced!"
    if k.slice(2, -1) == @[3, 4]:
      echo "sliced!"
    if k.slice(2, -2) == @[3]:
      echo "sliced!"
    if k.slice(2, -3).len == 0:
      echo "sliced!"
```

**SIGNATURE**

`proc shift*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Extracts the first element of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    let x = k.shift(123)
    if x == 1:
      echo "extracted!"
    if k == @[2, 3, 4, 5]:
      echo "shifted!"
```

**SIGNATURE**

`proc unshift*[T](c: var stack[T], m: stack[T]): int`

**DESCRIPTION**

*Prepends the provided sequence at the beginning of the sequence and returns the final amount of elements in the sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3]
    let l = k.unshift(@[4, 5])
    if l == 5 and k == @[4, 5, 1, 2, 3]:
      echo "prepended!"
```

**SIGNATURE**

`proc reverse*[T](c: var stack[T]): stack[T]`

**DESCRIPTION**

*Returns a new sequence containing the reversed elements of the provided sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    if k.reverse() == @[5, 4, 3, 2, 1]:
      echo "reversed!"
```

**SIGNATURE**

`proc clear*[T](c: var stack[T])`

**DESCRIPTION**

*Clears the elements in the provided sequence.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    k.clear()
    if k.len == 0:
      echo "cleared!"
```

### EXTRA ROUTINES

**SIGNATURE**

`proc drop*[T](c: var seq[T], count: int)`

**DESCRIPTION**

*Drops the specified count of items of the provided sequence starting from the last item.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    k.drop(2)
    if k == @[1, 2, 3]:
      echo "dropped!"
    k.drop(4)
    if k.len == 0:
      echo "dropped!"
    k.drop(1)
    if k.len == 0:
      echo "dropped!"
```

**SIGNATURE**

`proc extract*[T](c: var seq[T], index: int, default: T): T`

**DESCRIPTION**

*Extracts the item at the specified index in the provided sequence returning the specified default value in case the index is out of bounds.*

**USAGE**

```nim
    var k: stack[int] = @[1, 2, 3, 4, 5]
    var x = k.extract(2, 0)
    if x == 3 and k == @[1, 2, 4, 5]:
      echo "extracted!"
```
