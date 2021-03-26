# xam
# ===
# LOOPING ROUTINES

template each*(list, id, code: untyped) =
  ## This template loops the provided collection using the
  ## specified id and executing the provided code block.
  ## NOTE: It uses the items iterator.
  for id in items(list):
    code
