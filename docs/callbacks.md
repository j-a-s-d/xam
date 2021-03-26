# callbacks

This is the documentation of the common callbacks declarations module of the Xam library.

## TYPES

### PROC CALLBACK DEFINITIONS

- `NoArgsProc*[T] = proc (): T`
- `SingleArgProc*[Z, T] = proc (param: Z): T`
- `DoubleArgsProc*[Y, Z, T] = proc (param1: Y, param2: Z): T`
- `TripleArgsProc*[X, Y, Z, T] = proc (param1: X, param2: Y, param3: Z): T`
- `QuadrupleArgsProc*[W, X, Y, Z, T] = proc (param1: W, param2: X, param3: Y, param4: Z): T`
- `QuintupleArgsProc*[V, W, X, Y, Z, T] = proc (param1: V, param2: W, param3: X, param4: Y, param5: Z): T`
- `SextupleArgsProc*[U, V, W, X, Y, Z, T] = proc (param1: U, param2: V, param3: W, param4: X, param5: Y, param6: Z): T`
- `VarArgsProc*[Z, T] = proc (params: varargs[Z]): T`

### SINGLE CONCRETE-TYPE PARAMETER FUNC CALLBACK DEFINITIONS

- `Func*[T] = proc (): T {.noSideEffect.}`
- `FuncFloat*[T] = proc (parameter: float): T {.noSideEffect.}`
- `FuncFloat32*[T] = proc (parameter: float32): T {.noSideEffect.}`
- `FuncFloat64*[T] = proc (parameter: float64): T {.noSideEffect.}`
- `FuncInt*[T] = proc (parameter: int): T {.noSideEffect.}`
- `FuncInt8*[T] = proc (parameter: int8): T {.noSideEffect.}`
- `FuncInt16*[T] = proc (parameter: int16): T {.noSideEffect.}`
- `FuncInt32*[T] = proc (parameter: int32): T {.noSideEffect.}`
- `FuncInt64*[T] = proc (parameter: int64): T {.noSideEffect.}`
- `FuncUInt*[T] = proc (parameter: uint): T {.noSideEffect.}`
- `FuncUInt8*[T] = proc (parameter: uint8): T {.noSideEffect.}`
- `FuncUInt16*[T] = proc (parameter: uint16): T {.noSideEffect.}`
- `FuncUInt32*[T] = proc (parameter: uint32): T {.noSideEffect.}`
- `FuncUInt64*[T] = proc (parameter: uint64): T {.noSideEffect.}`
- `FuncBool*[T] = proc (parameter: bool): T {.noSideEffect.}`
- `FuncChar*[T] = proc (parameter: char): T {.noSideEffect.}`
- `FuncStr*[T] = proc (parameter: string): T {.noSideEffect.}`
- `FuncPtr*[T] = proc (parameter: ptr): T {.noSideEffect.}`
- `FuncCStr*[T] = proc (parameter: cstring): T {.noSideEffect.}`
- `FuncCChar*[T] = proc (parameter: cchar): T {.noSideEffect.}`
- `FuncCUint*[T] = proc (parameter: cuint): T {.noSideEffect.}`
- `FuncCInt*[T] = proc (parameter: cint): T {.noSideEffect.}`
- `FuncCFloat*[T] = proc (parameter: cfloat): T {.noSideEffect.}`

### SEQUENCE CONCRETE-TYPE PARAMETER FUNC CALLBACK DEFINITIONS

- `FuncFloatSeq*[T] = proc (parameter: seq[float]): T {.noSideEffect.}`
- `FuncFloat32Seq*[T] = proc (parameter: seq[float32]): T {.noSideEffect.}`
- `FuncFloat64Seq*[T] = proc (parameter: seq[float64]): T {.noSideEffect.}`
- `FuncIntSeq*[T] = proc (parameter: seq[int]): T {.noSideEffect.}`
- `FuncInt8Seq*[T] = proc (parameter: seq[int8]): T {.noSideEffect.}`
- `FuncInt16Seq*[T] = proc (parameter: seq[int16]): T {.noSideEffect.}`
- `FuncInt32Seq*[T] = proc (parameter: seq[int32]): T {.noSideEffect.}`
- `FuncInt64Seq*[T] = proc (parameter: seq[int64]): T {.noSideEffect.}`
- `FuncUIntSeq*[T] = proc (parameter: seq[uint]): T {.noSideEffect.}`
- `FuncUInt8Seq*[T] = proc (parameter: seq[uint8]): T {.noSideEffect.}`
- `FuncUInt16Seq*[T] = proc (parameter: seq[uint16]): T {.noSideEffect.}`
- `FuncUInt32Seq*[T] = proc (parameter: seq[uint32]): T {.noSideEffect.}`
- `FuncUInt64Seq*[T] = proc (parameter: seq[uint64]): T {.noSideEffect.}`
- `FuncBoolSeq*[T] = proc (parameter: seq[bool]): T {.noSideEffect.}`
- `FuncCharSeq*[T] = proc (parameter: seq[char]): T {.noSideEffect.}`
- `FuncStrSeq*[T] = proc (parameter: seq[string]): T {.noSideEffect.}`
- `FuncPtrSeq*[T] = proc (parameter: seq[ptr]): T {.noSideEffect.}`
- `FuncCStrSeq*[T] = proc (parameter: seq[cstring]): T {.noSideEffect.}`
- `FuncCCharSeq*[T] = proc (parameter: seq[cchar]): T {.noSideEffect.}`
- `FuncCUintSeq*[T] = proc (parameter: seq[cuint]): T {.noSideEffect.}`
- `FuncCIntSeq*[T] = proc (parameter: seq[cint]): T {.noSideEffect.}`
- `FuncCFloatSeq*[T] = proc (parameter: seq[cfloat]): T {.noSideEffect.}`
