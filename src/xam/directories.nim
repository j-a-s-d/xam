# xam
# ===
# DIRECTORIES ROUTINES

from os import dirExists, removeDir

proc dirsExist*(dirs: varargs[string]): bool =
  ## Checks if all of the provided directories exist.
  result = true
  for dir in dirs:
    result = result and dirExists(dir)

proc dirsDontExist*(dirs: varargs[string]): bool =
  ## Checks if all of the provided directories do not exist.
  result = true
  for dir in dirs:
    result = result and not dirExists(dir)

proc removeDirs*(dirs: varargs[string]) =
  ## Removes the provided directories.
  for dir in dirs:
    removeDir(dir)

