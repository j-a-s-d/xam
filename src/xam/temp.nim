# xam
# ===
# TEMPORARY FILES CONSTANTS AND ROUTINES

import os, oids

const TMP_EXTENSION*: string = ".tmp"

let TMP_DIRECTORY*: string = getTempDir()

proc getNewTempFilename*(directory: string = ""): string =
  ## Returns an string containing a new temporary filename available in the
  ## specified directory (if none is specified, TMP.DIRECTORY will be used).
  let d = if directory == "": TMP_DIRECTORY else: directory
  while result == "":
    let x = d / $genOid() & TMP_EXTENSION
    if not existsFile(x):
      result = x

proc makeTempFile*(directory: string = ""): string =
  ## Creates a new empty temporary file in the specified directory
  ## (if none is specified, TMP.DIRECTORY will be used) and
  ## returns an string containing it's name (after closing the file).
  result = getNewTempFilename(directory)
  open(result, fmWrite).close()
