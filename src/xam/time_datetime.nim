# xam
# ===
# DATETIME CONSTANTS AND ROUTINES

import times

const
  DATETIME_FORMAT_DDMMYYYY* = "dd-MM-yyyy"
  DATETIME_FORMAT_YYYYMMDD* = "yyyy-MM-dd"
  DATETIME_FORMAT_MMDDYYYY* = "MM-dd-yyyy"
  DATETIME_FORMAT_HHMMSS* = "hh:mm:ss"
  DATETIME_FORMAT_DDMMYYYY_HHMMSS* = DATETIME_FORMAT_DDMMYYYY & " " & DATETIME_FORMAT_HHMMSS
  DATETIME_FORMAT_YYYYMMDD_HHMMSS* = DATETIME_FORMAT_YYYYMMDD & " " & DATETIME_FORMAT_HHMMSS
  DATETIME_FORMAT_MMDDYYYY_HHMMSS* = DATETIME_FORMAT_MMDDYYYY & " " & DATETIME_FORMAT_HHMMSS

proc getListOfDaysBetween*(dfrom, dto: DateTime): seq[DateTime] =
  ## Returns a sequence containing the days between the two dates provided (which are included).
  for x in 0..inDays(dto - dfrom):
    result.add(dfrom + days(int(x)))
