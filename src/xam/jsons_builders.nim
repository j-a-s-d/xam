# xam
# ===
# JSON BUILDERS

import tables

# JSON ARRAY BUILDER

type
  XamJArrayBuilder = object
    elements: seq[JsonNode]

  JArrayBuilder* = ref XamJArrayBuilder

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

proc add*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder =
  ## Adds the specified json node and returns the builder instance.
  builder.elements.add(if node != nil: node else: newJNull())
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

proc append*(builder: JArrayBuilder, node: JsonNode) =
  ## Adds the specified json node to the array being built.
  builder.elements.add(if node != nil: node else: newJNull())

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

proc len*(builder: JArrayBuilder): int =
  ## Returns the current items count of the array being built.
  builder.elements.len

proc reset*(builder: JArrayBuilder, other: JArrayBuilder = nil): JArrayBuilder =
  ## Resets the content of the builder by assigning the values of the specified json array builder instance (if any).
  builder.elements = if other != nil: other.elements else: @[]
  builder

proc newJArrayBuilder*(other: JArrayBuilder = nil): JArrayBuilder =
  ## Constructor accepting other json array builder instance.
  result = new XamJArrayBuilder
  result = result.reset(other)

# JSON OBJECT BUILDER

type
  XamJObjectBuilder = object
    fields: OrderedTable[string, JsonNode]

  JObjectBuilder* = ref XamJObjectBuilder

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

proc set*(builder: JObjectBuilder, name: string, node: JsonNode): JObjectBuilder =
  ## Adds the specified json node with the specified name.
  builder.fields[name] = if node != nil: node else: newJNull()
  builder

proc set*(builder: JObjectBuilder, name: string, value: bool): JObjectBuilder =
  ## Adds the specified boolean value with the specified name.
  builder.set(name, newJBool(value))

proc set*(builder: JObjectBuilder, name: string, value: BiggestInt): JObjectBuilder =
  ## Adds the specified integer value with the specified name.
  builder.set(name, newJInt(value))

proc set*(builder: JObjectBuilder, name: string, value: float): JObjectBuilder =
  ## Adds the specified float value with the specified name.
  builder.set(name, newJFloat(value))

proc set*(builder: JObjectBuilder, name: string, value: string): JObjectBuilder =
  ## Adds the specified string value with the specified name.
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

proc len*(builder: JObjectBuilder): int =
  ## Returns the current keys count of the object being built.
  builder.fields.len

proc reset*(builder: JObjectBuilder, other: JObjectBuilder = nil): JObjectBuilder =
  ## Resets the content of the builder by assigning the value of the specified json object builder instance (if any).
  builder.fields = if other != nil: other.fields else: initOrderedTable[string, JsonNode](2)
  builder

proc newJObjectBuilder*(other: JObjectBuilder = nil): JObjectBuilder =
  ## Constructor accepting other json object builder instance.
  result = new XamJObjectBuilder
  result = result.reset(other)
