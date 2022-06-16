# xam
# ===
# JSON ROUTINES

{.push inline.}

proc tryParseJson*(s: string, default: JsonNode = nil): JsonNode =
  ## Tries to parse the provided string into a valid JsonNode.
  ## If it fails it returns the provided default value (which is nil by default).
  try: parseJson(s) except: default

proc wrapInJObject*(name: string, value: JsonNode): JsonNode =
  ## Wraps the provided value in a json object.
  result = newJObject()
  result[name] = value

proc wrapInJObject*(name: string, value: bool): JsonNode =
  ## Wraps the provided value in a json object.
  result = newJObject()
  result[name] = newJBool(value)

proc wrapInJObject*(name: string, value: BiggestInt): JsonNode =
  ## Wraps the provided value in a json object.
  result = newJObject()
  result[name] = newJInt(value)

proc wrapInJObject*(name: string, value: float): JsonNode =
  ## Wraps the provided value in a json object.
  result = newJObject()
  result[name] = newJFloat(value)

proc wrapInJObject*(name: string, value: string): JsonNode =
  ## Wraps the provided value in a json object.
  result = newJObject()
  result[name] = newJString(value)

proc wrapInJArray*(nodes: varargs[JsonNode]): JsonNode =
  ## Wraps the provided values in a json array.
  ## NOTE: the advantage over the generic constructor `%` is that you can combine different types.
  result = newJArray()
  for node in nodes:
    result.add(node)

proc wrapInJArray*(value: bool, values: varargs[bool]): JsonNode =
  ## Wraps the provided boolean values in a json array.
  result = newJArray()
  result.add(newJBool(value))
  for v in values:
    result.add(newJBool(v))

proc wrapInJArray*(value: BiggestInt, values: varargs[BiggestInt]): JsonNode =
  ## Wraps the provided integer values in a json array.
  result = newJArray()
  result.add(newJInt(value))
  for v in values:
    result.add(newJInt(v))

proc wrapInJArray*(value: float, values: varargs[float]): JsonNode =
  ## Wraps the provided float values in a json array.
  result = newJArray()
  result.add(newJFloat(value))
  for v in values:
    result.add(newJFloat(v))

proc wrapInJArray*(value: string, values: varargs[string]): JsonNode =
  ## Wraps the provided string values in a json array.
  result = newJArray()
  result.add(newJString(value))
  for v in values:
    result.add(newJString(v))

proc ensureJsonNode*(node: JsonNode): JsonNode =
  ## If the provided json node is not nil, it is returned.
  ## Otherwise a new json null is returned.
  if node != nil: node else: newJNull()

proc ensureJObject*(node: JsonNode): JsonNode =
  ## If the provided json node is a json object, it is returned.
  ## Otherwise a new json object is returned.
  if node != nil and node.kind == JObject: node else: newJObject()

proc ensureJArray*(node: JsonNode): JsonNode =
  ## If the provided json node is a json array, it is returned.
  ## Otherwise a new json array is returned.
  if node != nil and node.kind == JArray: node else: newJArray()

proc isJArray*(node: JsonNode): bool =
  ## Tests if the provided json node is a json array.
  node != nil and node.kind == JArray

proc isJObject*(node: JsonNode): bool =
  ## Tests if the provided json node is a json object.
  node != nil and node.kind == JObject

proc isJNull*(node: JsonNode): bool =
  ## Tests if the provided json node is a json null.
  node != nil and node.kind == JNull

proc isJBool*(node: JsonNode): bool =
  ## Tests if the provided json node is a json boolean value.
  node != nil and node.kind == JBool

proc isJInt*(node: JsonNode): bool =
  ## Tests if the provided json node is a json int value.
  node != nil and node.kind == JInt

proc isJFloat*(node: JsonNode): bool =
  ## Tests if the provided json node is a json float value.
  node != nil and node.kind == JFloat

proc isJString*(node: JsonNode): bool =
  ## Tests if the provided json node is a json string value.
  node != nil and node.kind == JString

proc hasKeys*(node: JsonNode, keys: seq[string]): bool =
  ## Tests if the provided json object has the specified keys.
  result = isJObject(node)
  for key in keys:
    result = result and node.hasKey(key)

{.pop.}

proc mix*(objects: varargs[JsonNode]): JsonNode =
  ## Mix the objects provided into a new single json object.
  ## NOTE: keys from new objects will overwrite keys of existing objects.
  result = newJObject()
  for obj in objects:
    if isJObject(obj):
      for key, value in obj:
        result[key] = value

proc obtainNode*(node: JsonNode, path: string, separator: char = '/'): JsonNode =
  ## Obtains the json node at the specified path.
  ## Optionally you can provide a custom separator to interpreted a custom path style.
  result = node
  for key in path.split(separator):
    if key.len == 0:
      continue
    if isNil(result) or result.kind != JObject or not result.hasKey(key):
      return nil
    result = result[key]

proc obtainNodeOfKind*(node: JsonNode, kind: JsonNodeKind, path: string, separator: char = '/'): JsonNode =
  ## Obtains the json node at the specified path if it is of the specified kind,
  ## otherwise it returns nil.
  ## Optionally you can provide a custom separator to interpreted a custom path style.
  result = obtainNode(node, path)
  if result == nil or result.kind != kind:
    return nil

proc obtainBool*(node: JsonNode, path: string, default: bool = false): bool =
  ## Obtains the boolean value at the specified path in the specified json object.
  ## NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").
  let r = obtainNodeOfKind(node, JBool, path)
  if r == nil:
    default
  else:
    r.getBool()

proc obtainInt*(node: JsonNode, path: string, default: BiggestInt = -1): BiggestInt =
  ## Obtains the integer value at the specified path in the specified json object.
  ## NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").
  let r = obtainNodeOfKind(node, JInt, path)
  if r == nil:
    default
  else:
    r.getInt()

proc obtainFloat*(node: JsonNode, path: string, default: float = -1.0): float =
  ## Obtains the float value at the specified path in the specified json object.
  ## NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").
  let r = obtainNodeOfKind(node, JFloat, path)
  if r == nil:
    default
  else:
    r.getFloat()

proc obtainString*(node: JsonNode, path: string, default: string = ""): string =
  ## Obtains the string value at the specified path in the specified json object.
  ## NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").
  let r = obtainNodeOfKind(node, JString, path)
  if r == nil:
    default
  else:
    r.getStr()

proc loadJsonNodeFromFile*(filename: string): JsonNode =
  ## Loads the json node from the specified file. If it fails, it returns nil.
  try:
    parseJson(readFile(filename))
  except:
    nil

proc saveJsonNodeToFile*(filename: string, node: JsonNode, prettyJson: bool = false): bool =
  ## Saves the specified json node to the specified file, formatting it in a pretty
  ## representation if specified. It returns true if the whole operation had success.
  try:
    writeFile(filename, if prettyJson: pretty(node) else: $node)
    true
  except:
    false
