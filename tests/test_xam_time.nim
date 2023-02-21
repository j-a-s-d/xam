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

  test "test DATETIME_FORMAT_*":
    let d = parse("2020-12-31", DATETIME_FORMAT_YYYYMMDD)
    check(d.format(DATETIME_FORMAT_YYYYMMDD) == "2020-12-31")
    check(d.format(DATETIME_FORMAT_DDMMYYYY) == "31-12-2020")
    check(d.format(DATETIME_FORMAT_MMDDYYYY) == "12-31-2020")
    let t = parse("11:22:33", DATETIME_FORMAT_HHMMSS)
    check(t.format(DATETIME_FORMAT_HHMMSS) == "11:22:33")
    let dt = parse("2020-12-31 11:22:33", DATETIME_FORMAT_YYYYMMDD_HHMMSS)
    check(dt.format(DATETIME_FORMAT_YYYYMMDD_HHMMSS) == "2020-12-31 11:22:33")
    check(dt.format(DATETIME_FORMAT_DDMMYYYY_HHMMSS) == "31-12-2020 11:22:33")
    check(dt.format(DATETIME_FORMAT_MMDDYYYY_HHMMSS) == "12-31-2020 11:22:33")
