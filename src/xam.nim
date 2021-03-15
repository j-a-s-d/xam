# xam
# ===
# DEFINITIONS AND INCLUDES

when defined(js):
  {.error: "This library needs to be compiled with a c/cpp-like backend".}

when defined(nimHasUsed):
  {.used.}

include xam_templates
include xam_reexports
include xam_values
