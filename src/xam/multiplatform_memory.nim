# xam
# ===
# MULTIPLATFORM MEMORY

template freeAndNil*[T](obj: var T) {.used.} =
  ## Delphi/CppBuilder/FPC-like FreeAndNil alias
  reset(obj)
