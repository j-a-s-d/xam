# xam
# ===
# MULTIPLATFORM OPERATORS

template `:=`*(name, value: untyped): untyped =
  ## Golang-like shorthand variable declaration
  var name {.inject.} = value

template `&=`*(a, b: bool): untyped =
  ## C/Cpp-like and-assign operator
  a = a and b

template `|=`*(a, b: bool): untyped =
  ## C/Cpp-like or-assign operator
  a = a or b

template `&&`*(a, b: bool): bool =
  ## C/Cpp-like and operator
  a and b

template `||`*(a, b: bool): bool =
  ## C/Cpp-like or operator
  a or b

template `!`*(a: bool): bool =
  ## C/Cpp-like not operator
  not a

