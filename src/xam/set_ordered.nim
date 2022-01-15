# xam
# ===
# ORDERED SETS TYPES

type
  # CONCRETE-TYPE ORDERED SET COMMON DEFINITIONS
  FloatOrderedSet* = OrderedSet[float]
  Float32OrderedSet* = OrderedSet[float32]
  Float64OrderedSet* = OrderedSet[float64]
  IntOrderedSet* = OrderedSet[int]
  Int8OrderedSet* = OrderedSet[int8]
  Int16OrderedSet* = OrderedSet[int16]
  Int32OrderedSet* = OrderedSet[int32]
  Int64OrderedSet* = OrderedSet[int64]
  UIntOrderedSet* = OrderedSet[uint]
  UInt8OrderedSet* = OrderedSet[uint8]
  UInt16OrderedSet* = OrderedSet[uint16]
  UInt32OrderedSet* = OrderedSet[uint32]
  UInt64OrderedSet* = OrderedSet[uint64]
  BoolOrderedSet* = OrderedSet[bool]
  CharOrderedSet* = OrderedSet[char]
  StringOrderedSet* = OrderedSet[string]
  PtrOrderedSet* = OrderedSet[ptr]
  CStringOrderedSet* = OrderedSet[cstring]
  CCharOrderedSet* = OrderedSet[cchar]
  CUintOrderedSet* = OrderedSet[cuint]
  CIntOrderedSet* = OrderedSet[cint]
  CFloatOrderedSet* = OrderedSet[cfloat]

# CONCRETE-TYPE ORDERED SET CONSTRUCTORS

proc newFloatOrderedSet*(values: varargs[float]): FloatOrderedSet = toOrderedSet(values)
proc newFloat32OrderedSet*(values: varargs[float32]): Float32OrderedSet = toOrderedSet(values)
proc newFloat64OrderedSet*(values: varargs[float64]): Float64OrderedSet = toOrderedSet(values)
proc newIntOrderedSet*(values: varargs[int]): IntOrderedSet = toOrderedSet(values)
proc newInt8OrderedSet*(values: varargs[int8]): Int8OrderedSet = toOrderedSet(values)
proc newInt16OrderedSet*(values: varargs[int16]): Int16OrderedSet = toOrderedSet(values)
proc newInt32OrderedSet*(values: varargs[int32]): Int32OrderedSet = toOrderedSet(values)
proc newInt64OrderedSet*(values: varargs[int64]): Int64OrderedSet = toOrderedSet(values)
proc newUIntOrderedSet*(values: varargs[uint]): UIntOrderedSet = toOrderedSet(values)
proc newUInt8OrderedSet*(values: varargs[uint8]): UInt8OrderedSet = toOrderedSet(values)
proc newUInt16OrderedSet*(values: varargs[uint16]): UInt16OrderedSet = toOrderedSet(values)
proc newUInt32OrderedSet*(values: varargs[uint32]): UInt32OrderedSet = toOrderedSet(values)
proc newUInt64OrderedSet*(values: varargs[uint64]): UInt64OrderedSet = toOrderedSet(values)
proc newBoolOrderedSet*(values: varargs[bool]): BoolOrderedSet = toOrderedSet(values)
proc newCharOrderedSet*(values: varargs[char]): CharOrderedSet = toOrderedSet(values)
proc newStringOrderedSet*(values: varargs[string]): StringOrderedSet = toOrderedSet(values)
proc newPtrOrderedSet*(values: varargs[ptr]): PtrOrderedSet = toOrderedSet(values)
proc newCStringOrderedSet*(values: varargs[cstring]): CStringOrderedSet = toOrderedSet(values)
proc newCCharOrderedSet*(values: varargs[cchar]): CCharOrderedSet = toOrderedSet(values)
proc newCUintOrderedSet*(values: varargs[cuint]): CUIntOrderedSet = toOrderedSet(values)
proc newCIntOrderedSet*(values: varargs[cint]): CIntOrderedSet = toOrderedSet(values)
proc newCFloatOrderedSet*(values: varargs[cfloat]): CFloatOrderedSet = toOrderedSet(values)

