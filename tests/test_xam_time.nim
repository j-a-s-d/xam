# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  times,
  os,
  xam

suite "test xam time":

  test "test Chronometer":
    var t: Chronometer = newChronometer()
    check(not t.isRunning())
    t.start()
    check(t.isRunning())
    sleep(1000)
    check(t.measure() > 1.0)
    check(t.measureSeconds() == 1)
    check(t.measureMinutes() == 0)
    check(t.measureHours() == 0)
    sleep(1000)
    check(t.measure() > 2.0)
    check(t.measureSeconds() == 2)
    check(t.measureMinutes() == 0)
    check(t.measureHours() == 0)
    sleep(1000)
    check(t.isRunning())
    t.stop()
    check(not t.isRunning())
    check(t.measure() > 3.0)
    check(t.measureSeconds() == 3)
    check(t.measureMinutes() == 0)
    check(t.measureHours() == 0)

  test "test getListOfDaysBetween":
    var s = newSeq[string]()
    for x in items getListOfDaysBetween(parse("2020-12-31", DATETIME_FORMAT_YYYYMMDD), parse("2021-01-02", DATETIME_FORMAT_YYYYMMDD)):
      s.add(x.format(DATETIME_FORMAT_DDMMYYYY))
    check(s.len == 3)
    check(s[0] == "31-12-2020")
    check(s[1] == "01-01-2021")
    check(s[2] == "02-01-2021")
