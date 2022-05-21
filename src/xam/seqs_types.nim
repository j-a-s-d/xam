# xam
# ===
# SEQUENCE TYPES

type
  # CONCRETE-TYPE COMMON DEFINITIONS
  FloatSeq* = seq[float]
  Float32Seq* = seq[float32]
  Float64Seq* = seq[float64]
  IntSeq* = seq[int]
  Int8Seq* = seq[int8]
  Int16Seq* = seq[int16]
  Int32Seq* = seq[int32]
  Int64Seq* = seq[int64]
  UIntSeq* = seq[uint]
  UInt8Seq* = seq[uint8]
  UInt16Seq* = seq[uint16]
  UInt32Seq* = seq[uint32]
  UInt64Seq* = seq[uint64]
  BoolSeq* = seq[bool]
  CharSeq* = seq[char]
  StringSeq* = seq[string]
  PtrSeq* = seq[ptr]
  CStringSeq* = seq[cstring]
  CCharSeq* = seq[cchar]
  CUintSeq* = seq[cuint]
  CIntSeq* = seq[cint]
  CFloatSeq* = seq[cfloat]

# CONCRETE-TYPE SEQUENCE CONSTRUCTORS

proc newFloatSeq*(values: varargs[float]): FloatSeq = (result = @[]; for v in values: result.add v)
proc newFloat32Seq*(values: varargs[float32]): Float32Seq = (result = @[]; for v in values: result.add v)
proc newFloat64Seq*(values: varargs[float64]): Float64Seq = (result = @[]; for v in values: result.add v)
proc newIntSeq*(values: varargs[int]): IntSeq = (result = @[]; for v in values: result.add v)
proc newInt8Seq*(values: varargs[int8]): Int8Seq = (result = @[]; for v in values: result.add v)
proc newInt16Seq*(values: varargs[int16]): Int16Seq = (result = @[]; for v in values: result.add v)
proc newInt32Seq*(values: varargs[int32]): Int32Seq = (result = @[]; for v in values: result.add v)
proc newInt64Seq*(values: varargs[int64]): Int64Seq = (result = @[]; for v in values: result.add v)
proc newUIntSeq*(values: varargs[uint]): UIntSeq = (result = @[]; for v in values: result.add v)
proc newUInt8Seq*(values: varargs[uint8]): UInt8Seq = (result = @[]; for v in values: result.add v)
proc newUInt16Seq*(values: varargs[uint16]): UInt16Seq = (result = @[]; for v in values: result.add v)
proc newUInt32Seq*(values: varargs[uint32]): UInt32Seq = (result = @[]; for v in values: result.add v)
proc newUInt64Seq*(values: varargs[uint64]): UInt64Seq = (result = @[]; for v in values: result.add v)
proc newBoolSeq*(values: varargs[bool]): BoolSeq = (result = @[]; for v in values: result.add v)
proc newCharSeq*(values: varargs[char]): CharSeq = (result = @[]; for v in values: result.add v)
proc newStringSeq*(values: varargs[string]): StringSeq = (result = @[]; for v in values: result.add v)
proc newPtrSeq*(values: varargs[ptr]): PtrSeq = (result = @[]; for v in values: result.add v)
proc newCStringSeq*(values: varargs[cstring]): CStringSeq = (result = @[]; for v in values: result.add v)
proc newCCharSeq*(values: varargs[cchar]): CCharSeq = (result = @[]; for v in values: result.add v)
proc newCUintSeq*(values: varargs[cuint]): CUIntSeq = (result = @[]; for v in values: result.add v)
proc newCIntSeq*(values: varargs[cint]): CIntSeq = (result = @[]; for v in values: result.add v)
proc newCFloatSeq*(values: varargs[cfloat]): CFloatSeq = (result = @[]; for v in values: result.add v)

from json import JsonNode
from times import DateTime

type
  # OTHER SEQUENCE DEFINITIONS
  JsonNodeSeq* = seq[JsonNode]
  DateTimeSeq* = seq[DateTime]

# OTHER SEQUENCE CONSTRUCTORS

proc newJsonNodeSeq*(values: varargs[JsonNode]): JsonNodeSeq = (result = @[]; for v in values: result.add v)
proc newDateTimeSeq*(values: varargs[DateTime]): DateTimeSeq = (result = @[]; for v in values: result.add v)
