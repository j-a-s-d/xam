# datetime

This is the documentation of the datetime related constants and routines module of the Xam library.

## CONSTANTS

- `DATETIME_FORMAT_DDMMYYYY*: string`
- `DATETIME_FORMAT_YYYYMMDD*: string`

### NAMESPACED LET

The preceding constants are also grouped into a "let namespaced code constant" under the name of `DATETIME`.
So you can use `DATETIME.FORMAT_DDMMYYYY` as value equivalent to `DATETIME_FORMAT_DDMMYYYY`, and so on.

> REMEMBER: `let` introduces a variable that can not be re-assigned, `const` means "enforce compile time evaluation and put it into a data section".

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
