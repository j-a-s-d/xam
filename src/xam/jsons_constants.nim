# xam
# ===
# JSON CONSTANTS

let
  JSON_NULL*: JsonNode = newJNull()
  JSON_TRUE*: JsonNode = newJBool(true)
  JSON_FALSE*: JsonNode = newJBool(false)
  JSON_EMPTY_OBJECT*: JsonNode = newJObject()
  JSON_EMPTY_ARRAY*: JsonNode = newJArray()
