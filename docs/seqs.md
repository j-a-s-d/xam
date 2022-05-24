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

### OTHER COMMON DEFINITIONS

- `type DateTimeSeq* = seq[DateTime]`
- `type JsonNodeSeq* = seq[JsonNode]`

## JS STACK-LIKE GENERIC SEQUENCE DEFINITION

- `type stack*[T] = seq[T]`

## ROUTINES

### CONCRETE-TYPE SEQUENCE CONSTRUCTORS

- `proc newFloatSeq*(values: varargs[float]): FloatSeq`
- `proc newFloat32Seq*(values: varargs[float32]): Float32Seq`
- `proc newFloat64Seq*(values: varargs[float64]): Float64Seq`
- `proc newIntSeq*(values: varargs[int]): IntSeq`
- `proc newInt8Seq*(values: varargs[int8]): Int8Seq`
- `proc newInt16Seq*(values: varargs[int16]): Int16Seq`
- `proc newInt32Seq*(values: varargs[int32]): Int32Seq`
- `proc newInt64Seq*(values: varargs[int64]): Int64Seq`
- `proc newUIntSeq*(values: varargs[uint]): UIntSeq`
- `proc newUInt8Seq*(values: varargs[uint8]): UInt8Seq`
- `proc newUInt16Seq*(values: varargs[uint16]): UInt16Seq`
- `proc newUInt32Seq*(values: varargs[uint32]): UInt32Seq`
- `proc newUInt64Seq*(values: varargs[uint64]): UInt64Seq`
- `proc newBoolSeq*(values: varargs[bool]): BoolSeq`
- `proc newCharSeq*(values: varargs[char]): CharSeq`
- `proc newStringSeq*(values: varargs[string]): StringSeq`
- `proc newPtrSeq*(values: varargs[ptr]): PtrSeq`
- `proc newCStringSeq*(values: varargs[cstring]): CStringSeq`
- `proc newCCharSeq*(values: varargs[cchar]): CCharSeq`
- `proc newCUintSeq*(values: varargs[cuint]): CUIntSeq`
- `proc newCIntSeq*(values: varargs[cint]): CIntSeq`
- `proc newCFloatSeq*(values: varargs[cfloat]): CFloatSeq`

### OTHER SEQUENCE CONSTRUCTORS

- `proc newDateTimeSeq*(values: varargs[DateTime]): DateTimeSeq`
- `proc newJsonNodeSeq*(values: varargs[JsonNode]): JsonNodeSeq`

### CSV RELATED ROUTINES

#### FROMCSVLINE

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

#### FROMCSVLINE

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

#### TOCSVLINE

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

#### TOCSVLINE

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

#### PUSH

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

#### PEEK

**SIGNATURE**

`proc peek*[T](c: stack[T], default: T): T`

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

#### POP

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

#### SLICE (INDEX)

**SIGNATURE**

`proc slice*[T](c: stack[T], index: int = 0): seq[T]`

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

#### SLICE (INDEX AND LAST)

**SIGNATURE**

`proc slice*[T](c: stack[T], index: int, last: int): seq[T]`

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

#### SHIFT

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

#### UNSHIFT

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

#### REVERSE

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

#### CLEAR

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

#### DROP

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

#### EXTRACT

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

#### REMOVE (ITEM)

**SIGNATURE**

`func remove*[T](c: var seq[T], s: T)`

**DESCRIPTION**

*Removes the specified item of the provided sequence.*

**USAGE**

```nim
  var a = @["1", "2", "3"]
  a.remove("2")
  if a == @["1", "3"]:
    echo "removed!"
```

#### REMOVE (ITEMS)

**SIGNATURE**

`func remove*[T](a: var seq[T], s: openArray[T])`

**DESCRIPTION**

*Removes the specified item sequence of the provided open array.*

**USAGE**

```nim
  var a = @["1", "2", "3", "4", "5"]
  a.remove(["2", "4"])
  if a == @["1", "3", "5"]:
    echo "removed!"
```

### APPEND

**SIGNATURE**

`func append*[T](a: var seq[T], b: openArray[T])`

**DESCRIPTION**

*Appends the provided open array in the specified sequence.*

**USAGE**

```nim
  var k = @[1, 2, 3, 4, 5]
  let l = [6, 7, 8]
  append(k, l)
  if k == @[1, 2, 3, 4, 5, 6, 7, 8]:
    echo "appended!"
```

### ISEMPTY

**SIGNATURE**

`func isEmpty*[T](a: seq[T]): bool`

**DESCRIPTION**

*Determines if the specified sequence is empty.*

**USAGE**

```nim
  let k: seq[int] = @[]
  if isEmpty(k):
    echo "is empty!"
  let l: seq[int] = @[1, 2, 3]
  if not isEmpty(l):
    echo "not is empty!"
```

### HASCONTENT

**SIGNATURE**

`func hasContent*[T](a: seq[T]): bool`

**DESCRIPTION**

*Determines if the specified sequence is not empty.*

**USAGE**

```nim
  let k: seq[int] = @[]
  if not hasContent(k):
    echo "not has content!"
  let l: seq[int] = @[1, 2, 3]
  if hasContent(l):
    echo "has content!"
```

#### TREAT

**SIGNATURE**

`func treat*[T](a: var seq[T], t: Treater[T])`

**DESCRIPTION**

*Treats each element of the specified sequence with the provided treater callback.*

**USAGE**

```nim
  let increment: Treater[uint8] = proc (p: uint8): uint8 = p + 1
  var bytes: UInt8Seq = @[BYTES_12, BYTES_34, BYTES_56, BYTES_78, BYTES_90]
  treat(bytes, increment)
  check(bytes == @[BYTES_13, BYTES_35, BYTES_57, BYTES_79, BYTES_91])
```
