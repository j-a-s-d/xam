# xam
# ===
# 14.01.2021 - 08.03.2021

when defined(js):
  {.error: "This library needs to be compiled with a c/cpp-like backend".}

when defined(nimHasUsed):
  {.used.}

include xam_templates
include xam_reexports
include xam_values
include xam_program
