# xam
# ===
# SIZES AND ORDERS OF MAGNITUDES CONSTANTS AND ROUTINES

from strutils import split, toUpper

from chars import CHARS_PERIOD, CHARS_SPACE
from maths import floatRound

# ORDERS OF MAGNITUDE CONSTANTS

const
  # BIT COUNT
  SIZES_BIT*: int = 1 # 1 bit
  SIZES_PAIR*: int = 2 * SIZES_BIT # 2 bits
  SIZES_NIBBLE*: int = 4 * SIZES_BIT # 4 bits -- i4004
  SIZES_BYTE*: int = 2 * SIZES_NIBBLE # 8 bits -- i8008, i8080
  SIZES_WORD*: int = 4 * SIZES_NIBBLE # 16 bits -- i8086
  SIZES_DWORD*: int = 2 * SIZES_WORD # 32 bits -- vax, arm1, mips
  SIZES_QWORD*: int = 4 * SIZES_WORD # 64 bits -- mmx, ia64
  SIZES_DQWORD*: int = 2 * SIZES_QWORD # 128 bits -- sse
  SIZES_QQWORD*: int = 4 * SIZES_QWORD # 256 bits -- avx
  SIZES_DQQWORD*: int = 2 * SIZES_QQWORD # 512 bits
  
  # BYTE COUNT
  SIZES_KILOBYTE*: int = 1024
  SIZES_MEGABYTE*: int = SIZES_KILOBYTE * SIZES_KILOBYTE
  SIZES_GIGABYTE*: int = SIZES_MEGABYTE * SIZES_KILOBYTE
  SIZES_TERABYTE*: int = SIZES_GIGABYTE * SIZES_KILOBYTE
  SIZES_PETABYTE*: int = SIZES_TERABYTE * SIZES_KILOBYTE
  SIZES_EXABYTE*: int = SIZES_PETABYTE * SIZES_KILOBYTE
  #SIZES_ZETTABYTE*: int = SIZES_EXABYTE * SIZES_KILOBYTE
  #SIZES_YOTTABYTE*: int = SIZES_ZETTABYTE * SIZES_KILOBYTE
  
  # BYTE UNITS
  SIZES_KILOBYTE_UNIT*: string = "kb"
  SIZES_MEGABYTE_UNIT*: string = "mb"
  SIZES_GIGABYTE_UNIT*: string = "gb"
  SIZES_TERABYTE_UNIT*: string = "tb"
  SIZES_PETABYTE_UNIT*: string = "pb"
  SIZES_EXABYTE_UNIT*: string = "eb"
  # NOTE: the following, beyond the 8 eb limit, is provided "just in case"
  SIZES_ZETTABYTE_UNIT*: string = "zb"
  SIZES_YOTTABYTE_UNIT*: string = "yb"

# UNIT FLOAT TUPLES

type
  SizesFloatUnit* = tuple[bytes: float, suffix: string] ## The sizes float unit type providing the bytes count and the suffix string.

const
  SIZES_BYTE_UNIT*: SizesFloatUnit = (bytes: 1.0, suffix: "bytes")
  SIZES_KBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_KILOBYTE, suffix: SIZES_KILOBYTE_UNIT)
  SIZES_MBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_MEGABYTE, suffix: SIZES_MEGABYTE_UNIT)
  SIZES_GBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_GIGABYTE, suffix: SIZES_GIGABYTE_UNIT)
  SIZES_TBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_TERABYTE, suffix: SIZES_TERABYTE_UNIT)
  SIZES_PBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_PETABYTE, suffix: SIZES_PETABYTE_UNIT)
  SIZES_EBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_EXABYTE, suffix: SIZES_EXABYTE_UNIT)
  #SIZES_ZBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_ZETTABYTE, suffix: SIZES_ZETTABYTE_UNIT)
  #SIZES_YBYTE_UNIT*: SizesFloatUnit = (bytes: float SIZES_YOTTABYTE, suffix: SIZES_YOTTABYTE_UNIT)

const
  SIZES*: tuple = (
    BIT: SIZES_BIT,
    PAIR: SIZES_PAIR,
    NIBBLE: SIZES_NIBBLE,
    BYTE: SIZES_BYTE,
    WORD: SIZES_WORD,
    DWORD: SIZES_DWORD, 
    QWORD: SIZES_QWORD, 
    DQWORD: SIZES_DQWORD,
    QQWORD: SIZES_QQWORD,
    DQQWORD: SIZES_DQQWORD,
    KILOBYTE: SIZES_KILOBYTE,
    MEGABYTE: SIZES_MEGABYTE,
    GIGABYTE: SIZES_GIGABYTE,
    TERABYTE: SIZES_TERABYTE,
    PETABYTE: SIZES_PETABYTE,
    EXABYTE: SIZES_EXABYTE,
    KILOBYTE_UNIT: SIZES_KILOBYTE_UNIT,
    MEGABYTE_UNIT: SIZES_MEGABYTE_UNIT,
    GIGABYTE_UNIT: SIZES_GIGABYTE_UNIT,
    TERABYTE_UNIT: SIZES_TERABYTE_UNIT,
    PETABYTE_UNIT: SIZES_PETABYTE_UNIT,
    EXABYTE_UNIT: SIZES_EXABYTE_UNIT
  )

# SIZE RELATED ROUTINES

func getUnitTupleBySize*(input: float): SizesFloatUnit =
  ## Gets the corresponding SizesFloatUnit tuple for the input provided.
  if input >= SIZES_EBYTE_UNIT.bytes:
    SIZES_EBYTE_UNIT
  elif input >= SIZES_PBYTE_UNIT.bytes:
    SIZES_PBYTE_UNIT
  elif input >= SIZES_TBYTE_UNIT.bytes:
    SIZES_TBYTE_UNIT
  elif input >= SIZES_GBYTE_UNIT.bytes:
    SIZES_GBYTE_UNIT
  elif input >= SIZES_MBYTE_UNIT.bytes:
    SIZES_MBYTE_UNIT
  elif input >= SIZES_KBYTE_UNIT.bytes:
    SIZES_KBYTE_UNIT
  else:
    SIZES_BYTE_UNIT

func formatByteSize*(bytes: SomeNumber, decimals: int = 2, space: bool = true, uppercase: bool = false): string =
  ## Formats the specified byte size with the specified options.
  ## NOTE: it differs from the strutils.formatSize routine in many things
  ## (for example accepting SomeNumber instead of int64).
  let input = float bytes
  let unit = getUnitTupleBySize(input)
  template rounded: string = $floatRound(input / unit.bytes, decimals)
  let splitted = rounded.split({CHARS_PERIOD})
  template number: string = (if decimals == 0: splitted[0] else: splitted[0] & CHARS_PERIOD & splitted[1][0..decimals - 1])
  template suffix: string = (if uppercase: unit.suffix.toUpper else: unit.suffix)
  number & (if space: CHARS_SPACE & suffix else: suffix)

