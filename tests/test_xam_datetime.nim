# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  times,
  xam

suite "test xam datetime":

  test "test getListOfDaysBetween":
    var s = newSeq[string]()
    for x in items getListOfDaysBetween(parse("2020-12-31", DATETIME_FORMAT_YYYYMMDD), parse("2021-01-02", DATETIME_FORMAT_YYYYMMDD)):
      s.add(x.format(DATETIME_FORMAT_DDMMYYYY))
    check(s.len == 3)
    check(s[0] == "31-12-2020")
    check(s[1] == "01-01-2021")
    check(s[2] == "02-01-2021")

