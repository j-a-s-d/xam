# xam
# ===
# SEQUENCE CSV ROUTINES

from strutils import split, join

proc fromCsvLine*(csv: string, separators: set[char]): seq[string] {.inline.} =
  ## Cracks a provided csv line string into a sequence of strings,
  ## accepting also a set of char separators.
  let c = csv.split(separators)
  if c[0] == "": newSeq[string]() else: c

proc fromCsvLine*(csv: string, separator: char = ','): seq[string] {.inline.} =
  ## Cracks a provided csv line string into a sequence of strings,
  ## accepting optionally the char separator (',' by default).
  fromCsvLine(csv, {separator})

proc toCsvLine*(ss: seq[string], separator: string): string {.inline.} =
  ## Joins the provided sequence of strings into a csv line
  ## using the specified string separator.
  ss.join(separator)

proc toCsvLine*(ss: seq[string], separator: char = ','): string {.inline.} =
  ## Joins the provided sequence of strings into a csv line
  ## using the optionally specified char separator (',' by default).
  toCsvLine(ss, $separator)
