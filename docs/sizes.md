# sizes

This is the documentation of the sizes related constants and routines module of the Xam library.

## ORDERS OF MAGNITUDE

## CONSTANTS

### BIT COUNT

- `const SIZES_BIT*: int`
- `const SIZES_PAIR*: int`
- `const SIZES_NIBBLE*: int`
- `const SIZES_BYTE*: int`
- `const SIZES_WORD*: int`
- `const SIZES_DWORD*: int`
- `const SIZES_QWORD*: int`
- `const SIZES_DQWORD*: int`
- `const SIZES_QQWORD*: int`
- `const SIZES_DQQWORD*: int`
  
### BYTE COUNT

- `const SIZES_KILOBYTE*: int`
- `const SIZES_MEGABYTE*: int`
- `const SIZES_GIGABYTE*: int`
- `const SIZES_TERABYTE*: int`
- `const SIZES_PETABYTE*: int`
- `const SIZES_EXABYTE*: int`
  
### BYTE UNITS

- `const SIZES_KILOBYTE_UNIT*: string`
- `const SIZES_MEGABYTE_UNIT*: string`
- `const SIZES_GIGABYTE_UNIT*: string`
- `const SIZES_TERABYTE_UNIT*: string`
- `const SIZES_PETABYTE_UNIT*: string`
- `const SIZES_EXABYTE_UNIT*: string`
> the following, beyond the 8 eb limit, is provided "just in case"
- `const SIZES_ZETTABYTE_UNIT*: string`
- `const SIZES_YOTTABYTE_UNIT*: string`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `SIZES`.
So you can use `SIZES.BIT` as value equivalent to `SIZES_BIT`, and so on.

## UNIT FLOAT TUPLES

## TYPES

**SIGNATURE**

`type SizesFloatUnit* = tuple[bytes: float, suffix: string]`

**DESCRIPTION**

*The sizes float unit type providing the bytes count and the suffix string.*

## CONSTANTS

- `const SIZES_BYTE_UNIT*: SizesFloatUnit`
- `const SIZES_KBYTE_UNIT*: SizesFloatUnit`
- `const SIZES_MBYTE_UNIT*: SizesFloatUnit`
- `const SIZES_GBYTE_UNIT*: SizesFloatUnit`
- `const SIZES_TBYTE_UNIT*: SizesFloatUnit`
- `const SIZES_PBYTE_UNIT*: SizesFloatUnit`
- `const SIZES_EBYTE_UNIT*: SizesFloatUnit`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `SIZES`.
So you can use `SIZES.BYTE_UNIT` as value equivalent to `SIZES_BYTE_UNIT`, and so on.

## ROUTINES

### GETUNITTUPLEBYSIZE

**SIGNATURE**

`func getUnitTupleBySize*(input: float): SizesFloatUnit`

**DESCRIPTION**

*Gets the corresponding SizesFloatUnit tuple for the input provided.*

**USAGE**

```nim
  if getUnitTupleBySize(1.0).bytes == SIZES_BYTE_UNIT.bytes:
    echo "is a byte unit size!"
```

### FORMATBYTESIZE

**SIGNATURE**

`func formatByteSize*(bytes: SomeNumber, decimals: int = 2, space: bool = true, uppercase: bool = false): string`

**DESCRIPTION**

*Formats the specified byte size with the specified options.*

*NOTE: it differs from the strutils.formatSize routine in many things (for example accepting SomeNumber instead of int64).*

**USAGE**

```nim
  if formatByteSize(7 * float SIZES_EXABYTE, 0, true, true) == "7 EB":
    echo "it's seven exabytes!"
```
