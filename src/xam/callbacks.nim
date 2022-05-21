# xam
# ===
# CALLBACK DEFINITIONS

type
  # VOID PROC CALLBACK DEFINITIONS
  NoArgsVoidProc* = proc ()
  SingleArgVoidProc*[Z] = proc (param: Z)
  DoubleArgsVoidProc*[Y, Z] = proc (param1: Y, param2: Z)
  TripleArgsVoidProc*[X, Y, Z] = proc (param1: X, param2: Y, param3: Z)
  QuadrupleArgsVoidProc*[W, X, Y, Z] = proc (param1: W, param2: X, param3: Y, param4: Z)
  QuintupleArgsVoidProc*[V, W, X, Y, Z] = proc (param1: V, param2: W, param3: X, param4: Y, param5: Z)
  SextupleArgsVoidProc*[U, V, W, X, Y, Z] = proc (param1: U, param2: V, param3: W, param4: X, param5: Y, param6: Z)
  VarArgsVoidProc*[Z] = proc (params: varargs[Z])

  # PROC CALLBACK DEFINITIONS
  NoArgsProc*[T] = proc (): T
  SingleArgProc*[Z, T] = proc (param: Z): T
  DoubleArgsProc*[Y, Z, T] = proc (param1: Y, param2: Z): T
  TripleArgsProc*[X, Y, Z, T] = proc (param1: X, param2: Y, param3: Z): T
  QuadrupleArgsProc*[W, X, Y, Z, T] = proc (param1: W, param2: X, param3: Y, param4: Z): T
  QuintupleArgsProc*[V, W, X, Y, Z, T] = proc (param1: V, param2: W, param3: X, param4: Y, param5: Z): T
  SextupleArgsProc*[U, V, W, X, Y, Z, T] = proc (param1: U, param2: V, param3: W, param4: X, param5: Y, param6: Z): T
  VarArgsProc*[Z, T] = proc (params: varargs[Z]): T

  # SINGLE CONCRETE-TYPE PARAMETER FUNC CALLBACK DEFINITIONS
  NoArgsFunc*[T] = proc (): T {.noSideEffect.}
  FloatFunc*[T] = proc (parameter: float): T {.noSideEffect.}
  Float32Func*[T] = proc (parameter: float32): T {.noSideEffect.}
  Float64Func*[T] = proc (parameter: float64): T {.noSideEffect.}
  IntFunc*[T] = proc (parameter: int): T {.noSideEffect.}
  Int8Func*[T] = proc (parameter: int8): T {.noSideEffect.}
  Int16Func*[T] = proc (parameter: int16): T {.noSideEffect.}
  Int32Func*[T] = proc (parameter: int32): T {.noSideEffect.}
  Int64Func*[T] = proc (parameter: int64): T {.noSideEffect.}
  UIntFunc*[T] = proc (parameter: uint): T {.noSideEffect.}
  UInt8Func*[T] = proc (parameter: uint8): T {.noSideEffect.}
  UInt16Func*[T] = proc (parameter: uint16): T {.noSideEffect.}
  UInt32Func*[T] = proc (parameter: uint32): T {.noSideEffect.}
  UInt64Func*[T] = proc (parameter: uint64): T {.noSideEffect.}
  BoolFunc*[T] = proc (parameter: bool): T {.noSideEffect.}
  CharFunc*[T] = proc (parameter: char): T {.noSideEffect.}
  StringFunc*[T] = proc (parameter: string): T {.noSideEffect.}
  PtrFunc*[T] = proc (parameter: ptr): T {.noSideEffect.}
  CStringFunc*[T] = proc (parameter: cstring): T {.noSideEffect.}
  CCharFunc*[T] = proc (parameter: cchar): T {.noSideEffect.}
  CUintFunc*[T] = proc (parameter: cuint): T {.noSideEffect.}
  CIntFunc*[T] = proc (parameter: cint): T {.noSideEffect.}
  CFloatFunc*[T] = proc (parameter: cfloat): T {.noSideEffect.}

  # SEQUENCE CONCRETE-TYPE PARAMETER FUNC CALLBACK DEFINITIONS
  FloatSeqFunc*[T] = proc (parameter: seq[float]): T {.noSideEffect.}
  Float32SeqFunc*[T] = proc (parameter: seq[float32]): T {.noSideEffect.}
  Float64SeqFunc*[T] = proc (parameter: seq[float64]): T {.noSideEffect.}
  IntSeqFunc*[T] = proc (parameter: seq[int]): T {.noSideEffect.}
  Int8SeqFunc*[T] = proc (parameter: seq[int8]): T {.noSideEffect.}
  Int16SeqFunc*[T] = proc (parameter: seq[int16]): T {.noSideEffect.}
  Int32SeqFunc*[T] = proc (parameter: seq[int32]): T {.noSideEffect.}
  Int64SeqFunc*[T] = proc (parameter: seq[int64]): T {.noSideEffect.}
  UIntSeqFunc*[T] = proc (parameter: seq[uint]): T {.noSideEffect.}
  UInt8SeqFunc*[T] = proc (parameter: seq[uint8]): T {.noSideEffect.}
  UInt16SeqFunc*[T] = proc (parameter: seq[uint16]): T {.noSideEffect.}
  UInt32SeqFunc*[T] = proc (parameter: seq[uint32]): T {.noSideEffect.}
  UInt64SeqFunc*[T] = proc (parameter: seq[uint64]): T {.noSideEffect.}
  BoolSeqFunc*[T] = proc (parameter: seq[bool]): T {.noSideEffect.}
  CharSeqFunc*[T] = proc (parameter: seq[char]): T {.noSideEffect.}
  StringSeqFunc*[T] = proc (parameter: seq[string]): T {.noSideEffect.}
  PtrSeqFunc*[T] = proc (parameter: seq[ptr]): T {.noSideEffect.}
  CStringSeqFunc*[T] = proc (parameter: seq[cstring]): T {.noSideEffect.}
  CCharSeqFunc*[T] = proc (parameter: seq[cchar]): T {.noSideEffect.}
  CUintSeqFunc*[T] = proc (parameter: seq[cuint]): T {.noSideEffect.}
  CIntSeqFunc*[T] = proc (parameter: seq[cint]): T {.noSideEffect.}
  CFloatSeqFunc*[T] = proc (parameter: seq[cfloat]): T {.noSideEffect.}

  # NOTE: following, which relay on ranges, are not working propertly on nim 1.0.6
  # ARRAY CONCRETE-TYPE PARAMETER FUNC CALLBACK DEFINITIONS
  #FloatArrayFunc*[R, T] = proc (parameter: array[R, float]): T {.noSideEffect.}
  #Float32ArrayFunc*[R, T] = proc (parameter: array[R, float32]): T {.noSideEffect.}
  #Float64ArrayFunc*[R, T] = proc (parameter: array[R, float64]): T {.noSideEffect.}
  #IntArrayFunc*[R, T] = proc (parameter: array[R, int]): T {.noSideEffect.}
  #Int8ArrayFunc*[R, T] = proc (parameter: array[R, int8]): T {.noSideEffect.}
  #Int16ArrayFunc*[R, T] = proc (parameter: array[R, int16]): T {.noSideEffect.}
  #Int32ArrayFunc*[R, T] = proc (parameter: array[R, int32]): T {.noSideEffect.}
  #Int64ArrayFunc*[R, T] = proc (parameter: array[R, int64]): T {.noSideEffect.}
  #UIntArrayFunc*[R, T] = proc (parameter: array[R, uint]): T {.noSideEffect.}
  #UInt8ArrayFunc*[R, T] = proc (parameter: array[R, uint8]): T {.noSideEffect.}
  #UInt16ArrayFunc*[R, T] = proc (parameter: array[R, uint16]): T {.noSideEffect.}
  #UInt32ArrayFunc*[R, T] = proc (parameter: array[R, uint32]): T {.noSideEffect.}
  #UInt64ArrayFunc*[R, T] = proc (parameter: array[R, uint64]): T {.noSideEffect.}
  #BoolArrayFunc*[R, T] = proc (parameter: array[R, bool]): T {.noSideEffect.}
  #CharArrayFunc*[R, T] = proc (parameter: array[R, char]): T {.noSideEffect.}
  #StringArrayFunc*[R, T] = proc (parameter: array[R, string]): T {.noSideEffect.}
  #PtrArrayFunc*[R, T] = proc (parameter: array[R, ptr]): T {.noSideEffect.}
  #CStringArrayFunc*[R, T] = proc (parameter: array[R, cstring]): T {.noSideEffect.}
  #CCharArrayFunc*[R, T] = proc (parameter: array[R, cchar]): T {.noSideEffect.}
  #CUintArrayFunc*[R, T] = proc (parameter: array[R, cuint]): T {.noSideEffect.}
  #CIntArrayFunc*[R, T] = proc (parameter: array[R, cint]): T {.noSideEffect.}
  #CFloatArrayFunc*[R, T] = proc (parameter: array[R, cfloat]): T {.noSideEffect.}

from json import JsonNode
from times import DateTime

type
  # OTHER CALLBACK DEFINITIONS
  JsonNodeFunc*[T] = proc (parameter: JsonNode): T {.noSideEffect.}
  DateTimeFunc*[T] = proc (parameter: DateTime): T {.noSideEffect.}
  Taker*[T] = NoArgsProc[T] # func (): T
  Treater*[T] = SingleArgProc[T, T] # func (param: T): T
