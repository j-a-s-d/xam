# xam
# ===
# STRUCTURES ROUTINES

func getFieldNames*(st: tuple | object): seq[string] =
  ## Returns an string sequence containing the names of the fields of the provided structure (tuple or object).
  for k, v in st.fieldPairs:
    result.add(k)

func hasField*(st: tuple | object, name: string): bool =
  ## Determines if the provided structure (tuple or field) contains the specified field name.
  for k, v in st.fieldPairs:
    if k == name:
      return true

func haveFields*(st: tuple | object, names: varargs[string]): bool =
  ## Determines if the provided structure (tuple or field) contains the specified field names.
  result = names.len > 0
  for s in names:
    result = result and st.hasField(s)

