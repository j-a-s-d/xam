# xam
# ===
# MULTIPLATFORM COMMENTS

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

