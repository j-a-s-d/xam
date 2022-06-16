# xam
# ===
# JSON BUILDERS

import tables

# JSON ARRAY BUILDER

type
  TJArrayBuilder = object
    elements: seq[JsonNode]

  JArrayBuilder* = ref TJArrayBuilder

proc getAsJArray*(builder: JArrayBuilder): JsonNode =
  ## Builds the resulting json array and returns it.
  JsonNode(kind: JArray, elems: builder.elements)

proc getAsString*(builder: JArrayBuilder): string =
  ## Builds the resulting json array and returns it as its string representation.
  $getAsJArray(builder)

proc getAsPrettyString*(builder: JArrayBuilder): string =
  ## Builds the resulting json array and returns it as its prettily formatted string representation.
  pretty getAsJArray(builder)

proc getAsJsonNodeSequence*(builder: JArrayBuilder): seq[JsonNode] =
  ## Returns the array being built as a sequence of JsonNode items.
  builder.elements

proc addAll*(builder: JArrayBuilder, nodes: varargs[JsonNode]): JArrayBuilder =
  ## Adds all the specified json nodes and returns the builder instance.
  for node in nodes:
    builder.elements.add(ensureJsonNode(node))
  builder

proc addAll*(builder: JArrayBuilder, value: bool, values: varargs[bool]): JArrayBuilder =
  ## Adds all the specified boolean values and returns the builder instance.
  builder.elements.add(newJBool(value))
  for v in values:
    builder.elements.add(newJBool(v))
  builder

proc addAll*(builder: JArrayBuilder, value: BiggestInt, values: varargs[BiggestInt]): JArrayBuilder =
  ## Adds all the specified integer values and returns the builder instance.
  builder.elements.add(newJInt(value))
  for v in values:
    builder.elements.add(newJInt(v))
  builder

proc addAll*(builder: JArrayBuilder, value: float, values: varargs[float]): JArrayBuilder =
  ## Adds all the specified float values and returns the builder instance.
  builder.elements.add(newJFloat(value))
  for v in values:
    builder.elements.add(newJFloat(v))
  builder

proc addAll*(builder: JArrayBuilder, value: string, values: varargs[string]): JArrayBuilder =
  ## Adds all the specified string values and returns the builder instance.
  builder.elements.add(newJString(value))
  for v in values:
    builder.elements.add(newJString(v))
  builder

proc addValues*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder =
  ## Add the values of the provided json array into the builder and returns the builder instance.
  ## NOTE: if the provided node is not a valid json array it does nothing.
  if node != nil and node.kind == JArray:
    for item in items(node.elems):
      builder.elements.add(item)
  builder

proc add*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder =
  ## Adds the specified json node and returns the builder instance.
  builder.elements.add(ensureJsonNode(node))
  builder

proc add*(builder: JArrayBuilder, value: bool): JArrayBuilder =
  ## Adds the specified boolean value and returns the builder instance.
  builder.add(newJBool(value))

proc add*(builder: JArrayBuilder, value: BiggestInt): JArrayBuilder =
  ## Adds the specified integer value and returns the builder instance.
  builder.add(newJInt(value))

proc add*(builder: JArrayBuilder, value: float): JArrayBuilder =
  ## Adds the specified float value and returns the builder instance.
  builder.add(newJFloat(value))

proc add*(builder: JArrayBuilder, value: string): JArrayBuilder =
  ## Adds the specified string value and returns the builder instance.
  builder.add(newJString(value))

proc appendAll*(builder: JArrayBuilder, nodes: varargs[JsonNode]) =
  ## Appends all the specified json nodes to the array being built.
  for node in nodes:
    builder.elements.add(ensureJsonNode(node))

proc appendAll*(builder: JArrayBuilder, value: bool, values: varargs[bool]) =
  ## Adds all the specified boolean values to the array being built.
  builder.elements.add(newJBool(value))
  for v in values:
    builder.elements.add(newJBool(v))

proc appendAll*(builder: JArrayBuilder, value: BiggestInt, values: varargs[BiggestInt]) =
  ## Adds all the specified integer values to the array being built.
  builder.elements.add(newJInt(value))
  for v in values:
    builder.elements.add(newJInt(v))

proc appendAll*(builder: JArrayBuilder, value: float, values: varargs[float]) =
  ## Adds all the specified float values to the array being built.
  builder.elements.add(newJFloat(value))
  for v in values:
    builder.elements.add(newJFloat(v))

proc appendAll*(builder: JArrayBuilder, value: string, values: varargs[string]) =
  ## Adds all the specified string values to the array being built.
  builder.elements.add(newJString(value))
  for v in values:
    builder.elements.add(newJString(v))

proc appendValues*(builder: JArrayBuilder, node: JsonNode) =
  ## Add the values of the provided json array into the array being built.
  ## NOTE: if the provided node is not a valid json array it does nothing.
  if node != nil and node.kind == JArray:
    for item in items(node.elems):
      builder.elements.add(item)

proc append*(builder: JArrayBuilder, node: JsonNode) =
  ## Appends the specified json node to the array being built.
  builder.elements.add(ensureJsonNode(node))

proc append*(builder: JArrayBuilder, value: bool) =
  ## Appends the specified boolean value to the array being built.
  discard builder.add(newJBool(value))

proc append*(builder: JArrayBuilder, value: BiggestInt) =
  ## Appends the specified integer value to the array being built.
  discard builder.add(newJInt(value))

proc append*(builder: JArrayBuilder, value: float) =
  ## Appends the specified float value to the array being built.
  discard builder.add(newJFloat(value))

proc append*(builder: JArrayBuilder, value: string) =
  ## Appends the specified string value to the array being built.
  discard builder.add(newJString(value))

proc clear*(builder: JArrayBuilder, other: JArrayBuilder = nil) =
  ## Resets the content of the builder by assigning the values of the
  ## specified json array builder instance (if any).
  builder.elements = if other != nil: other.elements else: @[]

proc reset*(builder: JArrayBuilder, other: JArrayBuilder = nil): JArrayBuilder =
  ## Resets the content of the builder by assigning the values of the
  ## specified json array builder instance (if any) and returns the builder instance.
  builder.elements = if other != nil: other.elements else: @[]
  builder

proc size*(builder: JArrayBuilder, length: var int): JArrayBuilder =
  ## Returns the current items count of the array being built and returns the builder instance.
  length = builder.elements.len
  builder

proc len*(builder: JArrayBuilder): int =
  ## Returns the current items count of the array being built.
  builder.elements.len

proc newJArrayBuilder*(arr: JsonNode): JArrayBuilder =
  ## Constructor accepting a json array instance.
  result = new TJArrayBuilder
  result = result.addValues(arr)

proc newJArrayBuilder*(other: JArrayBuilder): JArrayBuilder =
  ## Constructor accepting other json array builder instance.
  result = new TJArrayBuilder
  result = result.reset(other)

proc newJArrayBuilder*(): JArrayBuilder =
  ## Default JArrayBuilder constructor.
  new TJArrayBuilder

# JSON OBJECT BUILDER

type
  TJObjectBuilder = object
    fields: OrderedTable[string, JsonNode]

  JObjectBuilder* = ref TJObjectBuilder

proc getAsJObject*(builder: JObjectBuilder): JsonNode =
  ## Builds the resulting json object and returns it.
  JsonNode(kind: JObject, fields: builder.fields)

proc getAsString*(builder: JObjectBuilder): string =
  ## Builds the resulting json object and returns it as its string representation.
  $getAsJObject(builder)

proc getAsPrettyString*(builder: JObjectBuilder): string =
  ## Builds the resulting json object and returns it as its prettily formatted string representation.
  pretty getAsJObject(builder)

proc getAsNamedJsonNodeOrderedTable*(builder: JObjectBuilder): OrderedTable[string, JsonNode] =
  ## Returns the object being built as a ordered table of named JsonNode items.
  builder.fields

proc putAll*(builder: JObjectBuilder, node: JsonNode) =
  ## Adds the specified json object keys and values into the builder.
  ## NOTE: if the provided node is not a valid json object it does nothing.
  if node != nil and node.kind == JObject:
    for key, value in node:
      builder.fields[key] = value

proc put*(builder: JObjectBuilder, name: string, node: JsonNode) =
  ## Adds the specified json node with the specified name.
  builder.fields[name] = if node != nil: node else: newJNull()

proc put*(builder: JObjectBuilder, name: string, value: bool) =
  ## Adds the specified boolean value with the specified name.
  builder.put(name, newJBool(value))

proc put*(builder: JObjectBuilder, name: string, value: BiggestInt) =
  ## Adds the specified integer value with the specified name.
  builder.put(name, newJInt(value))

proc put*(builder: JObjectBuilder, name: string, value: float) =
  ## Adds the specified float value with the specified name.
  builder.put(name, newJFloat(value))

proc put*(builder: JObjectBuilder, name: string, value: string) =
  ## Adds the specified string value with the specified name.
  builder.put(name, newJString(value))

proc setAll*(builder: JObjectBuilder, node: JsonNode): JObjectBuilder =
  ## Adds the specified json object keys and values into the builder and returns the builder instance.
  ## NOTE: if the provided node is not a valid json object it does nothing.
  if node != nil and node.kind == JObject:
    for key, value in node:
      builder.fields[key] = value
  builder

proc set*(builder: JObjectBuilder, name: string, node: JsonNode): JObjectBuilder =
  ## Adds the specified json node with the specified name and returns the builder instance.
  builder.fields[name] = if node != nil: node else: newJNull()
  builder

proc set*(builder: JObjectBuilder, name: string, value: bool): JObjectBuilder =
  ## Adds the specified boolean value with the specified name and returns the builder instance.
  builder.set(name, newJBool(value))

proc set*(builder: JObjectBuilder, name: string, value: BiggestInt): JObjectBuilder =
  ## Adds the specified integer value with the specified name and returns the builder instance.
  builder.set(name, newJInt(value))

proc set*(builder: JObjectBuilder, name: string, value: float): JObjectBuilder =
  ## Adds the specified float value with the specified name and returns the builder instance.
  builder.set(name, newJFloat(value))

proc set*(builder: JObjectBuilder, name: string, value: string): JObjectBuilder =
  ## Adds the specified string value with the specified name and returns the builder instance.
  builder.set(name, newJString(value))

proc `[]=`*(builder: JObjectBuilder, name: string, node: JsonNode) =
  ## Adds the specified json node with the specified name.
  builder.fields[name] = if node != nil: node else: newJNull()

proc `[]=`*(builder: JObjectBuilder, name: string, value: bool) =
  ## Adds the specified boolean value with the specified name.
  builder[name] = newJBool(value)

proc `[]=`*(builder: JObjectBuilder, name: string, value: BiggestInt) =
  ## Adds the specified integer value with the specified name.
  builder[name] = newJInt(value)

proc `[]=`*(builder: JObjectBuilder, name: string, value: float) =
  ## Adds the specified float value with the specified name.
  builder[name] = newJFloat(value)

proc `[]=`*(builder: JObjectBuilder, name: string, value: string) =
  ## Adds the specified string value with the specified name.
  builder[name] = newJString(value)

proc clear*(builder: JObjectBuilder, other: JObjectBuilder = nil) =
  ## Resets the content of the builder by assigning the value of the
  ## specified json object builder instance (if any).
  builder.fields = if other != nil: other.fields else: initOrderedTable[string, JsonNode](2)

proc reset*(builder: JObjectBuilder, other: JObjectBuilder = nil): JObjectBuilder =
  ## Resets the content of the builder by assigning the value of the
  ## specified json object builder instance (if any) and returns the builder instance.
  builder.fields = if other != nil: other.fields else: initOrderedTable[string, JsonNode](2)
  builder

proc size*(builder: JObjectBuilder, length: var int): JObjectBuilder =
  ## Returns the current keys count of the object being built and returns the builder instance.
  length = builder.fields.len
  builder

proc len*(builder: JObjectBuilder): int =
  ## Returns the current keys count of the object being built.
  builder.fields.len

proc newJObjectBuilder*(obj: JsonNode): JObjectBuilder =
  ## Constructor accepting a json object instance.
  result = new TJObjectBuilder
  result = result.setAll(obj)

proc newJObjectBuilder*(other: JObjectBuilder): JObjectBuilder =
  ## Constructor accepting other json object builder instance.
  result = new TJObjectBuilder
  result = result.reset(other)

proc newJObjectBuilder*(): JObjectBuilder =
  ## Default JObjectBuilder constructor.
  new TJObjectBuilder
