# xam
# ===
# DIRECTORIES ROUTINES

from os import dirExists, removeDir, createDir

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

proc ensureDir*(directoryName: string): bool =
  ## If the provided directory name does not exist it tries to create it and returns true if finally the directory exists.
  ## NOTE: this is an alternative for existsOrCreateDir.
  if not dirExists(directoryName):
    createDir(directoryName)
  dirExists(directoryName)

