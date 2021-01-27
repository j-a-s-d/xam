# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam sizes":

  test "test getUnitTupleBySize":
    var x = 1.0
    check(getUnitTupleBySize(x).bytes == SIZES_BYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_KBYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_MBYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_GBYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_TBYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_PBYTE_UNIT.bytes)
    x *= float SIZES_KILOBYTE
    check(getUnitTupleBySize(x).bytes == SIZES_EBYTE_UNIT.bytes)

  test "test formatByteSize":
    check(formatByteSize(7 * float SIZES_EXABYTE, 0, true, true) == "7 EB")
    check(formatByteSize(86.421 * float SIZES_MEGABYTE, 1, false) == "86.4mb")
    check(formatByteSize(2.8642 * float SIZES_KILOBYTE) == "2.86 kb")
    check(formatByteSize(2.0, 0) == "2 bytes")
