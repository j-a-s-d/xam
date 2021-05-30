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

proc readFromFile*[T](filename: string, content: var T): bool =
  ## Reads the specified file, filling the provided variable with it's content.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  var tmp: string = ""
  result = tryIt:
    let fs = newFileStream(filename, fmRead)
    tmp = fs.readAll()
    fs.close()
  if result:
    content = tmp

proc writeToFile*[T](filename: string, content: T): bool =
  ## Writes the provided content to the specified file.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  tryIt:
    let fs = newFileStream(filename, fmWrite)
    fs.write(content)
    fs.close()

proc appendToFile*[T](filename: string, content: T): bool =
  ## Appends the provided content to the specified file.
  ## NOTE: this is an atomic file operation, it will be closed before returning.
  tryIt:
    let fs = newFileStream(filename, fmAppend)
    fs.write(content)
    fs.close()

