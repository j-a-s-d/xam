# xam
# ===
# MULTIPLATFORM COMMENTS

# NOTE: see https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Inline_comments

template `//`*(something: untyped) {.used.} =
  ## C/Cpp/Java-like line comment
  {.emit: "// `something`".}

template `--`*(something: untyped) {.used.} =
  ## Ada/Haskell/Lua-like line comment
  {.emit: "// `something`".}

template `REM`*(something: untyped) {.used.} =
  ## Basic/Batch-like line comment
  {.emit: "// `something`".}

template `!`*(something: untyped) {.used.} =
  ## Fortran-like line comment
  {.emit: "// `something`".}

template `\`*(something: untyped) {.used.} =
  ## Forth-like line comment
  {.emit: "// `something`".}

