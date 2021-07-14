# xam
# ===
# LOOPING TEMPLATES

template forever*(code: untyped) {.used.} =
  ## Repeats the provided code block.
  ## The loop can be broken with the "break" keyword.
  ## NOTE: inspired in Verilog's one.
  while true:
    code

template times*(amount: int, code: untyped) {.used.} =
  ## Repeats the specified amount of times the provided code block.
  ## The loop can be broken with the "break" keyword.
  ## NOTE: inspired in Ruby's one.
  for i in countup(1, amount):
    code

template each*(list, id, code: untyped) {.used.} =
  ## This template loops the provided collection using the
  ## specified id and executing the provided code block.
  ## NOTE: It uses the items iterator.
  for id in items(list):
    code

template meach*(list, id, code: untyped) {.used.} =
  ## This template loops the provided collection using the
  ## specified id and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(list):
    code

import json

template each*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each item and executing the provided
  ## code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    code

template eachArray*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json array items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJArray(id):
      code

template eachObject*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json object items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJObject(id):
      code

template eachString*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json string items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJString(id):
      code

template eachBool*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json boolean items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJBool(id):
      code

template eachInt*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json integer items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJInt(id):
      code

template eachFloat*(jarray: JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json float items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the read-only items iterator.
  for id in items(jarray):
    if isJFloat(id):
      code

template meach*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each item and executing the provided
  ## code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    code

template meachArray*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json array items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJArray(id):
      code

template meachObject*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json object items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJObject(id):
      code

template meachString*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json string items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJString(id):
      code

template meachBool*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json boolean items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJBool(id):
      code

template meachInt*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json integer items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJInt(id):
      code

template meachFloat*(jarray: var JsonNode, id, code: untyped) {.used.} =
  ## This template loops the provided json array using the
  ## specified id for each json float items (items of other
  ## types are ignored) and executing the provided code block.
  ## NOTE: It uses the mitems iterator.
  for id in mitems(jarray):
    if isJFloat(id):
      code
