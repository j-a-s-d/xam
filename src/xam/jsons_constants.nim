# xam
# ===
# JSON CONSTANTS

const
  LEVEL_SEPARATOR = '/'

let
  JSON_NULL* = newJNull()
  JSON_TRUE* = newJBool(true)
  JSON_FALSE* = newJBool(false)
  JSON_EMPTY_OBJECT* = newJObject()
  JSON_EMPTY_ARRAY* = newJArray()
