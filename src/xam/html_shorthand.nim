# xam
# ===
# HTML SHORTHAND ROUTINES

from strutils import split, find
import strings

type
  TShorthandInfo = object
    ## This class holds the resulting information of the shorthand notation parsing
    ## containing the tag, the id and the classes included in it.
    tag*: string
    id*: string
    classes*: seq[string]

  ShorthandInfo* = ref TShorthandInfo

proc newShorthandInfo(tag: string = HTML_TAGS_DIV, id: string = STRINGS_EMPTY, classes: seq[string] = @[]): ShorthandInfo =
  result = new TShorthandInfo
  result.tag = tag
  result.id = id
  result.classes = classes

proc parseShorthand*(shorthandNotation: string): ShorthandInfo =
  ## Parses the supplied html shorthand notation string
  ## storing the resulting information in a ShorthandInfo instance.
  if shorthandNotation == STRINGS_EMPTY:
    return nil
  result = newShorthandInfo()
  var first = true
  for v in shorthandNotation.split(STRINGS_PERIOD):
    if first:
      first = false
      if v != STRINGS_EMPTY:
        let n = v.find(STRINGS_NUMERAL)
        if n == -1:
          result.tag = v
        else:
          if n > 0:
            result.tag = v[0..n - 1]
          result.id = v[n + 1..^1]
    else:
      result.classes.add(v)

proc compileParsedShorthandInfo(parsed: ShorthandInfo, beforeMajor: string): string =
  result = STRINGS_MINOR & parsed.tag
  if hasText(parsed.id):
    result &= STRINGS_SPACE & HTML_ATTRIBUTES_ID & STRINGS_EQUAL & STRINGS_APOSTROPHE & parsed.id & STRINGS_APOSTROPHE
  if parsed.classes.len > 0:
    result &= STRINGS_SPACE & HTML_ATTRIBUTES_CLASS & STRINGS_EQUAL & STRINGS_APOSTROPHE
    var first = true
    for x in parsed.classes:
      if not first:
        result &= STRINGS_SPACE
      first = false
      result &= x
    result &= STRINGS_APOSTROPHE
  result &= beforeMajor & STRINGS_MAJOR

proc compileShorthand*(shorthandNotation: string): string =
  ## Compiles the provided shorthand notation string to an html element
  ## without any content.
  let parsed = parseShorthand(shorthandNotation)
  if parsed == nil:
    return STRINGS_EMPTY
  compileParsedShorthandInfo(parsed, STRINGS_SLASH)

proc compileShorthand*(shorthandNotation: string, content: string): string =
  ## Compiles the provided shorthand notation string to an html element
  ## containing the supplied content.
  let parsed = parseShorthand(shorthandNotation)
  if parsed == nil:
    return STRINGS_EMPTY
  compileParsedShorthandInfo(parsed, STRINGS_EMPTY) & content & STRINGS_MINOR & STRINGS_SLASH & parsed.tag & STRINGS_MAJOR
