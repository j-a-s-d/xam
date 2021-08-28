# xam
# ===
# CHRONOMETER
# -----------
# NOTE: this is inspired in the Java Ace Toolkit's Chronometer class

from maths import F0
from times import epochTime
from math import floor

type
  TChronometer = object
    startTime: float
    stopTime: float

  Chronometer* = ref TChronometer

proc newChronometer*(): Chronometer =
  ## Makes a new chronometer object instance.
  result = new TChronometer

proc isRunning*(c: Chronometer): bool =
  ## Determines if the chronometer is running.
  c.startTime != F0 and c.stopTime == F0

proc start*(c: Chronometer) =
  ## Starts the chronometer.
  c.startTime = epochTime()
  c.stopTime = F0

proc stop*(c: Chronometer) =
  ## Stops the chronometer.
  c.stopTime = epochTime()

proc measure*(c: Chronometer): float =
  ## Measures the spent time since the chronometer was started
  ## up to the moment it was stopped or up to this moment if it
  ## still running (the chronometer will continue running).
  (if c.isRunning(): epochTime() else: c.stopTime) - c.startTime

proc measureSeconds*(c: Chronometer): int =
  ## Measures the spent time in total seconds since the chronometer
  ## was started up to the moment it was stopped or up to this moment
  ## if it still running (the chronometer will continue running).
  toInt(floor(c.measure()))

proc measureMinutes*(c: Chronometer): int =
  ## Measures the spent time in total minutes since the chronometer
  ## was started up to the moment it was stopped or up to this moment
  ## if it still running (the chronometer will continue running).
  toInt(floor(c.measure() / 60))

proc measureHours*(c: Chronometer): int =
  ## Measures the spent time in total hours since the chronometer
  ## was started up to the moment it was stopped or up to this moment
  ## if it still running (the chronometer will continue running).
  toInt(floor(c.measure() / 3600))
