# xam
# ===
# INTERNAL REEXPORTS

template reexport*(imported, exported: untyped) =
  ## reexport template
  import imported
  export exported

template reexport_xam_module(module: untyped) =
  reexport(xam/module, module)

reexport_xam_module ansi
reexport_xam_module bytes
reexport_xam_module callbacks
reexport_xam_module chars
reexport_xam_module datetime
reexport_xam_module exceptions
reexport_xam_module hex
reexport_xam_module html
reexport_xam_module jsons
reexport_xam_module looping
reexport_xam_module maths
reexport_xam_module multiplatform
reexport_xam_module semanticversion
reexport_xam_module seqs
reexport_xam_module sizes
reexport_xam_module strings

