# xam
# ===
# DATETIME CONSTANTS AND ROUTINES

import times

const
  DATETIME_FORMAT_DDMMYYYY* = "dd-MM-yyyy"
  DATETIME_FORMAT_YYYYMMDD* = "yyyy-MM-dd"

proc getListOfDaysBetween*(dfrom, dto: DateTime): seq[DateTime] =
  ## Returns a sequence containing the days between the two dates provided (which are included).
  for x in 0..inDays(dto - dfrom):
    result.add(dfrom + days(int(x)))
