# xam
# ===
# HASH SETS TYPES

type
  # CONCRETE-TYPE HASH SET COMMON DEFINITIONS
  FloatHashSet* = HashSet[float]
  Float32HashSet* = HashSet[float32]
  Float64HashSet* = HashSet[float64]
  IntHashSet* = HashSet[int]
  Int8HashSet* = HashSet[int8]
  Int16HashSet* = HashSet[int16]
  Int32HashSet* = HashSet[int32]
  Int64HashSet* = HashSet[int64]
  UIntHashSet* = HashSet[uint]
  UInt8HashSet* = HashSet[uint8]
  UInt16HashSet* = HashSet[uint16]
  UInt32HashSet* = HashSet[uint32]
  UInt64HashSet* = HashSet[uint64]
  BoolHashSet* = HashSet[bool]
  CharHashSet* = HashSet[char]
  StringHashSet* = HashSet[string]
  PtrHashSet* = HashSet[ptr]
  CStringHashSet* = HashSet[cstring]
  CCharHashSet* = HashSet[cchar]
  CUintHashSet* = HashSet[cuint]
  CIntHashSet* = HashSet[cint]
  CFloatHashSet* = HashSet[cfloat]

# CONCRETE-TYPE HASH SET CONSTRUCTORS

proc newFloatHashSet*(values: varargs[float]): FloatHashSet = toHashSet(values)
proc newFloat32HashSet*(values: varargs[float32]): Float32HashSet = toHashSet(values)
proc newFloat64HashSet*(values: varargs[float64]): Float64HashSet = toHashSet(values)
proc newIntHashSet*(values: varargs[int]): IntHashSet = toHashSet(values)
proc newInt8HashSet*(values: varargs[int8]): Int8HashSet = toHashSet(values)
proc newInt16HashSet*(values: varargs[int16]): Int16HashSet = toHashSet(values)
proc newInt32HashSet*(values: varargs[int32]): Int32HashSet = toHashSet(values)
proc newInt64HashSet*(values: varargs[int64]): Int64HashSet = toHashSet(values)
proc newUIntHashSet*(values: varargs[uint]): UIntHashSet = toHashSet(values)
proc newUInt8HashSet*(values: varargs[uint8]): UInt8HashSet = toHashSet(values)
proc newUInt16HashSet*(values: varargs[uint16]): UInt16HashSet = toHashSet(values)
proc newUInt32HashSet*(values: varargs[uint32]): UInt32HashSet = toHashSet(values)
proc newUInt64HashSet*(values: varargs[uint64]): UInt64HashSet = toHashSet(values)
proc newBoolHashSet*(values: varargs[bool]): BoolHashSet = toHashSet(values)
proc newCharHashSet*(values: varargs[char]): CharHashSet = toHashSet(values)
proc newStringHashSet*(values: varargs[string]): StringHashSet = toHashSet(values)
proc newPtrHashSet*(values: varargs[ptr]): PtrHashSet = toHashSet(values)
proc newCStringHashSet*(values: varargs[cstring]): CStringHashSet = toHashSet(values)
proc newCCharHashSet*(values: varargs[cchar]): CCharHashSet = toHashSet(values)
proc newCUintHashSet*(values: varargs[cuint]): CUIntHashSet = toHashSet(values)
proc newCIntHashSet*(values: varargs[cint]): CIntHashSet = toHashSet(values)
proc newCFloatHashSet*(values: varargs[cfloat]): CFloatHashSet = toHashSet(values)

