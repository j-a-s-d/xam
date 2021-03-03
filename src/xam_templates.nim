# xam
# ===
# USEFUL TEMPLATES

template inlined*(procs: untyped) =
  ## inlined template
  {.push inline.}
  procs
  {.pop.}

template reexport*(imported, exported: untyped) =
  ## reexport template
  import imported
  export exported
