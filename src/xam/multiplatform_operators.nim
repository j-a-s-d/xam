# xam
# ===
# MULTIPLATFORM OPERATORS

from sugar import `=>`
export `=>` ## ES6-like fat arrow functions

template `:=`*(name, value: untyped): untyped {.used.} =
  ## Golang-like shorthand variable declaration & Pascal-like variable assignation
  when not declaredInScope(name):
    var name {.inject.} = value
  else:
    name = value

template `&=`*(a, b: bool): untyped {.used.} =
  ## C/Cpp-like and-assign operator
  a = a and b

template `|=`*(a, b: bool): untyped {.used.} =
  ## C/Cpp-like or-assign operator
  a = a or b

template `&&`*(a, b: bool): bool {.used.} =
  ## C/Cpp-like and logical operator
  a and b

template `||`*(a, b: bool): bool {.used.} =
  ## C/Cpp-like or logical operator
  a or b

template `!`*(a: bool): bool {.used.} =
  ## C/Cpp-like not logical operator
  not a

template `+`*(x, y: string): string {.used.} =
  ## C/Pascal/Basic-like string concatenation
  x & y
