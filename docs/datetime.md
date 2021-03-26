# datetime

This is the documentation of the datetime related constants and routines module of the Xam library.

## CONSTANTS

- `DATETIME_FORMAT_DDMMYYYY*: string`
- `DATETIME_FORMAT_YYYYMMDD*: string`

## ROUTINES

**SIGNATURE**
`proc getListOfDaysBetween*(dfrom, dto: DateTime): seq[DateTime]`
**DESCRIPTION**
*Returns a sequence containing the days between the two dates provided (which are included).*
**USAGE**
```nim
  let d1 = parse("2020-12-31", DATETIME_FORMAT_YYYYMMDD)
  let d2 = parse("02-01-2021", DATETIME_FORMAT_DDMMYYYY)
  for x in items getListOfDaysBetween(d1, d2):
    echo x.format(DATETIME_FORMAT_DDMMYYYY)
```
