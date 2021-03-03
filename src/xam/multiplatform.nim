# xam
# ===
# MULTIPLATFORM ALIASES

# NOTE: This multiplatform aliases are intended to help in
#       the process of migrating code from other languages.
#       Besides being harmless in nature, are not meant to
#       be used in a regular basis. Be wise and translate
#       all the code you are testing for migration asap.

from sugar import `=>`
export `=>` ## ES6-like fat arrow functions

const
  NULL* = nil ## Cpp-like null
  print* = echo ## Fortran/Python/Lua-like output
  println* = echo ## Java/Arduino/Kotlin/Go-like output
  writeln* = echo ## Pascal/D/Dart-like output
  putstrln* = echo ## Haskell-like output
  puts* = echo ## C/Ruby-like output
  say* = echo ## AppleScript/Scratch-like output

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

# NOTE: see https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Inline_comments

template `//`*(something: untyped) =
  ## C/Cpp/Java-like line comment
  {.emit: "// `something`".}

template `--`*(something: untyped) =
  ## Ada/Haskell/Lua-like line comment
  {.emit: "// `something`".}

template `REM`*(something: untyped) =
  ## Basic/Batch-like line comment
  {.emit: "// `something`".}

template `!`*(something: untyped) =
  ## Fortran-like line comment
  {.emit: "// `something`".}

template `\`*(something: untyped) =
  ## Forth-like line comment
  {.emit: "// `something`".}
