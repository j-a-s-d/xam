# xam
# ===
# MULTIPLATFORM OPERATORS

template `:=`*(name, value: untyped): untyped =
  ## Golang-like shorthand variable declaration & Pascal-like variable assignation
  when not declaredInScope(name):
    var name {.inject.} = value
  else:
    name = value

template `&=`*(a, b: bool): untyped =
  ## C/Cpp-like and-assign operator
  a = a and b

template `|=`*(a, b: bool): untyped =
  ## C/Cpp-like or-assign operator
  a = a or b

template `&&`*(a, b: bool): bool =
  ## C/Cpp-like and logical operator
  a and b

template `||`*(a, b: bool): bool =
  ## C/Cpp-like or logical operator
  a or b

template `!`*(a: bool): bool =
  ## C/Cpp-like not logical operator
  not a

template `+`(x, y: string): string =
  ## C/Pascal/Basic-like string concatenation
  x & y
