# xam
# ===
# PARSING ROUTINES

from strutils import parseFloat, parseInt, parseUInt, parseBool

proc tryParseFloat*(s: string, default: float): float =
  try: parseFloat(s) except: default

proc tryParseInt*(s: string, default: int): int =
  try: parseInt(s) except: default

proc tryParseUInt*(s: string, default: uint): uint =
  try: parseUInt(s) except: default

proc tryParseBool*(s: string, default: bool): bool =
  try: parseBool(s) except: default
