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
```

**SIGNATURE**

`proc fromCsvLine*(csv: string, separator: char = ','): seq[string] {.inline.}`

**DESCRIPTION**

*Cracks a provided csv line string into a sequence of strings, accepting optionally the char separator (',' by default).*

**USAGE**

```nim
```

**SIGNATURE**

`proc toCsvLine*(ss: seq[string], separator: string): string {.inline.}`

**DESCRIPTION**

*Joins the provided sequence of strings into a csv line using the specified string separator.*

**USAGE**

```nim
```

**SIGNATURE**

`proc toCsvLine*(ss: seq[string], separator: char = ','): string {.inline.}`

**DESCRIPTION**

*Joins the provided sequence of strings into a csv line using the optionally specified char separator (',' by default).*

**USAGE**

```nim
```

### JS STACK-LIKE ROUTINES

**SIGNATURE**

`proc push*[T](c: var stack[T], value: T)`

**DESCRIPTION**

*Adds the provided value at the end of the sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc peek*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Returns the value of the last item of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc pop*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Extracts the last item of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc slice*[T](c: var stack[T], index: int): seq[T]`

**DESCRIPTION**

*Returns a copy of the sequence segment starting at the specified index.*

**USAGE**

```nim
```

**SIGNATURE**

`proc shift*[T](c: var stack[T], default: T): T`

**DESCRIPTION**

*Extracts the first element of the sequence returning the default provided value in case of an empty sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc unshift*[T](c: var stack[T], m: stack[T]): int`

**DESCRIPTION**

*Appends the provided sequence at the beginning of the sequence and returns the final amount of elements in the sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc reverse*[T](c: var stack[T]): stack[T]`

**DESCRIPTION**

*Returns a new sequence containing the reversed elements of the provided sequence.*

**USAGE**

```nim
```

**SIGNATURE**

`proc clear*[T](c: var stack[T])`

**DESCRIPTION**

*Clears the elements in the provided sequence.*

**USAGE**

```nim
```

### EXTRA ROUTINES

**SIGNATURE**

`proc drop*[T](c: var seq[T], count: int)`

**DESCRIPTION**

*Drops the specified count of items of the provided sequence starting from the last item.*

**USAGE**

```nim
```

**SIGNATURE**

`proc extract*[T](c: var seq[T], index: int, default: T): T`

**DESCRIPTION**

*Extracts the item at the specified index in the provided sequence returning the specified default value in case the index is out of bounds.*

**USAGE**

```nim
```

