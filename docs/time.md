# time

This is the documentation of the time related constants and routines module of the Xam library.

## TYPES

### CHRONOMETER

**SIGNATURE**

```nim
  type TChronometer = object
    startTime: int
    stopTime: int
  Chronometer* = ref TChronometer
```

**DESCRIPTION**

*This is the chronometer type.*

#### NEWCHORNOMETER

**SIGNATURE**

`proc newChronometer*(): Chronometer`

**DESCRIPTION**

*Makes a new chronometer object instance.*

**USAGE**

```nim
  let c = newChronometer()
```

#### ISRUNNING

**SIGNATURE**

`proc isRunning*(c: Chronometer): bool`

**DESCRIPTION**

*Determines if the chronometer is running.*

**USAGE**

```nim
  let c = newChronometer()
  if not c.isRunning():
    echo "chronometer is ready to be started!"
```

#### START

**SIGNATURE**

`proc start*(c: Chronometer)`

**DESCRIPTION**

*Starts the chronometer.*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  if c.isRunning():
    echo "chronometer is started!"
```

#### STOP

**SIGNATURE**

`proc stop*(c: Chronometer)`

**DESCRIPTION**

*Stops the chronometer.*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  c.stop()
  if not c.isRunning():
    echo "chronometer is stopped!"
```

#### MEASURE

**SIGNATURE**

`proc measure*(c: Chronometer): float`

**DESCRIPTION**

*Measures the spent time since the chronometer was started up to the moment it was stopped or up to this moment if it still running (the chronometer will continue running).*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  nap(1000)
  echo c.measure()
  nap(1000)
  echo c.measure()
  nap(1000)
  c.stop()
  echo c.measure()
```

#### MEASURESECONDS

**SIGNATURE**

`proc measureSeconds*(c: Chronometer): int`

**DESCRIPTION**

*Measures the spent time in total seconds since the chronometer was started up to the moment it was stopped or up to this moment if it still running (the chronometer will continue running).*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  nap(1000)
  echo c.measureSeconds()
  nap(1000)
  echo c.measureSeconds()
  nap(1000)
  c.stop()
  echo c.measureSeconds()
```

#### MEASUREMINUTES

**SIGNATURE**

`proc measureMinutes*(c: Chronometer): int`

**DESCRIPTION**

*Measures the spent time in total minutes since the chronometer was started up to the moment it was stopped or up to this moment if it still running (the chronometer will continue running).*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  nap(1000 * 60)
  echo c.measureMinutes()
  nap(1000 * 60)
  echo c.measureMinutes()
  nap(1000 * 60)
  c.stop()
  echo c.measureMinutes()
```

#### MEASUREHOURS

**SIGNATURE**

`proc measureHours*(c: Chronometer): int`

**DESCRIPTION**

*Measures the spent time in total hours since the chronometer was started up to the moment it was stopped or up to this moment if it still running (the chronometer will continue running).*

**USAGE**

```nim
  let c = newChronometer()
  c.start()
  nap(1000 * 60 * 60)
  echo c.measureHours()
  nap(1000 * 60 * 60)
  echo c.measureHours()
  nap(1000 * 60 * 60)
  c.stop()
  echo c.measureHours()
```

## CONSTANTS

- `const DATETIME_FORMAT_DDMMYYYY*: string`
- `const DATETIME_FORMAT_YYYYMMDD*: string`

## ROUTINES

### GETLISTOFDAYSBETWEEN

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
