# xam
# ===
# LOOPING ROUTINES

template each*(list, id, code: untyped) =
  for id in items(list):
    code
