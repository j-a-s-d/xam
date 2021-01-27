# xam
# ===
# MULTIPLATFORM ALIASES

# NOTE: This multiplatform aliases are intended to help in
#       the process of migrating code from other languages.
#       Besides being harmless in nature, are not meant to
#       be used in a regular basis. Be wise and translate
#       the all code you are testing for migration asap.

const
  NULL* = nil ## C++ like null
  print* = echo ## Fortran/Python/Lua like output
  println* = echo ## Java/Arduino/Kotlin/Go like output
  writeln* = echo ## Pascal/D/Dart like output
  putstrln* = echo ## Haskell like output
  puts* = echo ## C/Ruby like output
  say* = echo ## AppleScript/Scratch like output

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
