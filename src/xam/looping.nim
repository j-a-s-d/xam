# xam
# ===
# LOOPING TEMPLATES

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
