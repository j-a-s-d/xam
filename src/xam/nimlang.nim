# xam
# ===
# NIMLANG RELATED CONSTANTS AND ROUTINES

from strutils import toLower, validIdentifier, find

const
  NIM_EXTENSION* = ".nim"
  NIMSCRIPT_EXTENSION* = ".nims"
  NIMBLE_EXTENSION* = ".nimble"
  # according to https://github.com/nim-lang/Nim/blob/devel/doc/keywords.txt
  NIMLANG_KEYWORDS*: seq[string] = @[
    "addr", "and", "as", "asm",
    "bind", "block", "break",
    "case", "cast", "concept", "const", "continue", "converter",
    "defer", "discard", "distinct", "div", "do",
    "elif", "else", "end", "enum", "except", "export",
    "finally", "for", "from", "func",
    "if", "import", "in", "include", "interface", "is", "isnot", "iterator",
    "let",
    "macro", "method", "mixin", "mod",
    "nil", "not", "notin",
    "object", "of", "or", "out",
    "proc", "ptr",
    "raise", "ref", "return",
    "shl", "shr", "static",
    "template", "try", "tuple", "type",
    "using",
    "var",
    "when", "while",
    "xor",
    "yield"
  ]

func isValidNimIdentifier*(s: string): bool =
  ## Validates the provided string with the rules for nim identifiers specified at:
  ## https://nim-lang.org/docs/manual.html#lexical-analysis-identifiers-amp-keywords
  validIdentifier(s) and # this only checks 's.len > 0' and that the 'identifier starts with a character of the set IdentStartChars and is followed by any number of characters of the set IdentChars'
  s[^1] != '_' and # so we have to check also it 'does not end with an underscore _'
  (s.find("__") == -1) and # and that 'two immediate following underscores __ are not allowed'
  not (s.toLower in NIMLANG_KEYWORDS) # plus that 'keywords are reserved and cannot be used as identifiers'
