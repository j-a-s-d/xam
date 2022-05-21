# xam
# ===
# MULTIPLATFORM ARGUMENTS

from os import paramStr, paramCount

type
  TArgv = ref object

let argv* {.used.}: TArgv = nil

template `[]`*(a: TArgv, i: int): string {.used.} =
  ## C/Cpp/PHP/etc-like argv arguments vector alias
  paramStr(i)

template argc*: int {.used.} =
  ## C/Cpp/PHP/etc-like argc arguments count alias
  paramCount()
