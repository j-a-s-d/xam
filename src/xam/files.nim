# xam
# ===
# FILES ROUTINES

from exceptions import tryIt
import streams

proc makeEmptyFile*(filename: string): bool =
  ## Creates a new file with the specified filename.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  tryIt:
    let fs = newFileStream(filename, fmWrite)
    #open(filename, fmWrite).close()
    fs.close()

proc readFromFile*[T](fileName: string, content: var T): bool =
  ## Reads the specified file, filling the provided variable with it's content.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  var tmp: string = ""
  result = tryIt:
    let fs = newFileStream(fileName, fmRead)
    tmp = fs.readAll()
    fs.close()
  if result:
    content = tmp

proc writeToFile*[T](fileName: string, content: T): bool =
  ## Writes the provided content to the specified file.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  tryIt:
    let fs = newFileStream(fileName, fmWrite)
    fs.write(content)
    fs.close()

proc appendToFile*[T](fileName: string, content: T): bool =
  ## Appends the provided content to the specified file.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  tryIt:
    let fs = newFileStream(fileName, fmAppend)
    fs.write(content)
    fs.close()

from os import fileExists, removeFile, searchExtPos

proc filesExist*(files: varargs[string]): bool =
  ## Checks if all of the provided files exist.
  result = true
  for file in files:
    result = result and fileExists(file)

proc filesDontExist*(files: varargs[string]): bool =
  ## Checks if all of the provided files do not exist.
  result = true
  for file in files:
    result = result and not fileExists(file)

proc removeFiles*(files: varargs[string]) =
  ## Removes the provided files.
  for file in files:
    removeFile(file)

func extractFileExtension*(fileName: string): string =
  ## Returns the file extension part of the provided file name if any. Otherwise it returns an empty string.
  let x = searchExtPos(fileName)
  if x > -1:
    return fileName[x..^1]

func checkFileExtension*(fileName, fileExtension: string): bool =
  ## Determines if the provided file name has the specified file extension.
  extractFileExtension(fileName) == fileExtension
