# xam
# ===
# MULTIPLATFORM ALIASES AND SHIMS

# NOTE: This multiplatform aliases are intended to help in
#       the process of migrating code from other languages.
#       Besides being harmless in nature (some aliases are
#       not even value equivalent, but will let your code
#       be easily adapted), are not meant to be used in a
#       regular basis. Be wise and translate all the code
#       you are testing for migration asap.

from sugar import `=>`
export `=>` ## ES6-like fat arrow functions

include multiplatform_constants
include multiplatform_operators
include multiplatform_comments
include multiplatform_introspection
include multiplatform_shutdown
include multiplatform_types
