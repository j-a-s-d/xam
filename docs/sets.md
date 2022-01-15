# sets

This is the documentation of the sets related routines module of the Xam library.

## HASH SET TYPES

### CONCRETE-TYPE HASH SET COMMON DEFINITIONS

- `FloatHashSet* = HashSet[float]`
- `Float32HashSet* = HashSet[float32]`
- `Float64HashSet* = HashSet[float64]`
- `IntHashSet* = HashSet[int]`
- `Int8HashSet* = HashSet[int8]`
- `Int16HashSet* = HashSet[int16]`
- `Int32HashSet* = HashSet[int32]`
- `Int64HashSet* = HashSet[int64]`
- `UIntHashSet* = HashSet[uint]`
- `UInt8HashSet* = HashSet[uint8]`
- `UInt16HashSet* = HashSet[uint16]`
- `UInt32HashSet* = HashSet[uint32]`
- `UInt64HashSet* = HashSet[uint64]`
- `BoolHashSet* = HashSet[bool]`
- `CharHashSet* = HashSet[char]`
- `StringHashSet* = HashSet[string]`
- `PtrHashSet* = HashSet[ptr]`
- `CStringHashSet* = HashSet[cstring]`
- `CCharHashSet* = HashSet[cchar]`
- `CUintHashSet* = HashSet[cuint]`
- `CIntHashSet* = HashSet[cint]`
- `CFloatHashSet* = HashSet[cfloat]`

### CONCRETE-TYPE ORDERED SET COMMON DEFINITIONS

- `FloatOrderedSet* = OrderedSet[float]`
- `Float32OrderedSet* = OrderedSet[float32]`
- `Float64OrderedSet* = OrderedSet[float64]`
- `IntOrderedSet* = OrderedSet[int]`
- `Int8OrderedSet* = OrderedSet[int8]`
- `Int16OrderedSet* = OrderedSet[int16]`
- `Int32OrderedSet* = OrderedSet[int32]`
- `Int64OrderedSet* = OrderedSet[int64]`
- `UIntOrderedSet* = OrderedSet[uint]`
- `UInt8OrderedSet* = OrderedSet[uint8]`
- `UInt16OrderedSet* = OrderedSet[uint16]`
- `UInt32OrderedSet* = OrderedSet[uint32]`
- `UInt64OrderedSet* = OrderedSet[uint64]`
- `BoolOrderedSet* = OrderedSet[bool]`
- `CharOrderedSet* = OrderedSet[char]`
- `StringOrderedSet* = OrderedSet[string]`
- `PtrOrderedSet* = OrderedSet[ptr]`
- `CStringOrderedSet* = OrderedSet[cstring]`
- `CCharOrderedSet* = OrderedSet[cchar]`
- `CUintOrderedSet* = OrderedSet[cuint]`
- `CIntOrderedSet* = OrderedSet[cint]`
- `CFloatOrderedSet* = OrderedSet[cfloat]`

## ROUTINES

### CONCRETE-TYPE HASH SET CONSTRUCTORS

- `proc newFloatHashSet*(values: varargs[float]): FloatHashSet = toHashSet(values)`
- `proc newFloat32HashSet*(values: varargs[float32]): Float32HashSet = toHashSet(values)`
- `proc newFloat64HashSet*(values: varargs[float64]): Float64HashSet = toHashSet(values)`
- `proc newIntHashSet*(values: varargs[int]): IntHashSet = toHashSet(values)`
- `proc newInt8HashSet*(values: varargs[int8]): Int8HashSet = toHashSet(values)`
- `proc newInt16HashSet*(values: varargs[int16]): Int16HashSet = toHashSet(values)`
- `proc newInt32HashSet*(values: varargs[int32]): Int32HashSet = toHashSet(values)`
- `proc newInt64HashSet*(values: varargs[int64]): Int64HashSet = toHashSet(values)`
- `proc newUIntHashSet*(values: varargs[uint]): UIntHashSet = toHashSet(values)`
- `proc newUInt8HashSet*(values: varargs[uint8]): UInt8HashSet = toHashSet(values)`
- `proc newUInt16HashSet*(values: varargs[uint16]): UInt16HashSet = toHashSet(values)`
- `proc newUInt32HashSet*(values: varargs[uint32]): UInt32HashSet = toHashSet(values)`
- `proc newUInt64HashSet*(values: varargs[uint64]): UInt64HashSet = toHashSet(values)`
- `proc newBoolHashSet*(values: varargs[bool]): BoolHashSet = toHashSet(values)`
- `proc newCharHashSet*(values: varargs[char]): CharHashSet = toHashSet(values)`
- `proc newStringHashSet*(values: varargs[string]): StringHashSet = toHashSet(values)`
- `proc newPtrHashSet*(values: varargs[ptr]): PtrHashSet = toHashSet(values)`
- `proc newCStringHashSet*(values: varargs[cstring]): CStringHashSet = toHashSet(values)`
- `proc newCCharHashSet*(values: varargs[cchar]): CCharHashSet = toHashSet(values)`
- `proc newCUintHashSet*(values: varargs[cuint]): CUIntHashSet = toHashSet(values)`
- `proc newCIntHashSet*(values: varargs[cint]): CIntHashSet = toHashSet(values)`
- `proc newCFloatHashSet*(values: varargs[cfloat]): CFloatHashSet = toHashSet(values)`

### CONCRETE-TYPE ORDERED SET CONSTRUCTORS

- `proc newFloatOrderedSet*(values: varargs[float]): FloatOrderedSet = toOrderedSet(values)`
- `proc newFloat32OrderedSet*(values: varargs[float32]): Float32OrderedSet = toOrderedSet(values)`
- `proc newFloat64OrderedSet*(values: varargs[float64]): Float64OrderedSet = toOrderedSet(values)`
- `proc newIntOrderedSet*(values: varargs[int]): IntOrderedSet = toOrderedSet(values)`
- `proc newInt8OrderedSet*(values: varargs[int8]): Int8OrderedSet = toOrderedSet(values)`
- `proc newInt16OrderedSet*(values: varargs[int16]): Int16OrderedSet = toOrderedSet(values)`
- `proc newInt32OrderedSet*(values: varargs[int32]): Int32OrderedSet = toOrderedSet(values)`
- `proc newInt64OrderedSet*(values: varargs[int64]): Int64OrderedSet = toOrderedSet(values)`
- `proc newUIntOrderedSet*(values: varargs[uint]): UIntOrderedSet = toOrderedSet(values)`
- `proc newUInt8OrderedSet*(values: varargs[uint8]): UInt8OrderedSet = toOrderedSet(values)`
- `proc newUInt16OrderedSet*(values: varargs[uint16]): UInt16OrderedSet = toOrderedSet(values)`
- `proc newUInt32OrderedSet*(values: varargs[uint32]): UInt32OrderedSet = toOrderedSet(values)`
- `proc newUInt64OrderedSet*(values: varargs[uint64]): UInt64OrderedSet = toOrderedSet(values)`
- `proc newBoolOrderedSet*(values: varargs[bool]): BoolOrderedSet = toOrderedSet(values)`
- `proc newCharOrderedSet*(values: varargs[char]): CharOrderedSet = toOrderedSet(values)`
- `proc newStringOrderedSet*(values: varargs[string]): StringOrderedSet = toOrderedSet(values)`
- `proc newPtrOrderedSet*(values: varargs[ptr]): PtrOrderedSet = toOrderedSet(values)`
- `proc newCStringOrderedSet*(values: varargs[cstring]): CStringOrderedSet = toOrderedSet(values)`
- `proc newCCharOrderedSet*(values: varargs[cchar]): CCharOrderedSet = toOrderedSet(values)`
- `proc newCUintOrderedSet*(values: varargs[cuint]): CUIntOrderedSet = toOrderedSet(values)`
- `proc newCIntOrderedSet*(values: varargs[cint]): CIntOrderedSet = toOrderedSet(values)`
- `proc newCFloatOrderedSet*(values: varargs[cfloat]): CFloatOrderedSet = toOrderedSet(values)`
