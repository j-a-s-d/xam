# xam
# ===
# JSON MODELING

type
  JNodeKind = enum
    JsonAny, JsonBoolean, JsonInteger, JsonFloat, JsonString, JsonObject, JsonArray

  JsonModelFieldDefinition* = tuple[path: string, kind: JNodeKind, mandatory: bool, nonempty: bool]

  JsonModelFieldsDefinitions* = seq[JsonModelFieldDefinition]

  TJModel = object
    fields: JsonModelFieldsDefinitions

  JsonModel* = ref TJModel

  JsonModelErrorKind* = enum
    jmeNoError, jmeInvalidNode, jmeNotExists, jmeBadKind, jmeIsEmpty

  JsonModelValidationResult* = tuple[success: bool, errorField: string, errorKind: JsonModelErrorKind] # , readFields: OrderedTable[string, JsonNode]

proc fieldDefinitionFromString(serialization: string): JsonModelFieldDefinition =
  result.path = ""
  var parts = serialization.split(" ")
  let dpath = parts.pop()
  let dtype = parts.pop()
  if parts[0] == "mandatory":
    result.mandatory = true
  elif parts[0] == "optional":
    result.mandatory = false
  else:
    return # error
  if parts.len > 1:
    if parts[1] == "nonempty":
      result.nonempty = true
    else:
      return # error
  case dtype:
    of "boolean": result.kind = JsonBoolean
    of "integer": result.kind = JsonInteger
    of "float": result.kind = JsonFloat
    of "string": result.kind = JsonString
    of "object": result.kind = JsonObject
    of "array": result.kind = JsonArray
    else: result.kind = JsonAny
  result.path = dpath

proc fieldDefinitionToString(definition: JsonModelFieldDefinition): string =
  result = (if definition.mandatory: "mandatory " else: "optional ") &
    (if definition.nonempty: "nonempty " else: "") &
    (case definition.kind:
      of JsonBoolean: "boolean "
      of JsonInteger: "integer "
      of JsonFloat: "float "
      of JsonString: "string "
      of JsonObject: "object "
      of JsonArray: "array "
      else: "untyped ") & definition.path

proc isSameNodeKind(node: JsonNode, definition: JsonModelFieldDefinition): bool {.inline.} =
  case definition.kind:
    of JsonBoolean: node.kind == JBool
    of JsonInteger: node.kind == JInt
    of JsonFloat: node.kind == JFloat
    of JsonString: node.kind == JString
    of JsonObject: node.kind == JObject
    of JsonArray: node.kind == JArray
    else: true

proc validateField(node: JsonNode, definition: JsonModelFieldDefinition): JsonModelErrorKind =
  let r = obtainNode(node, definition.path)
  if r == nil:
    if definition.mandatory:
      return jmeNotExists
  elif definition.kind != JsonAny:
    #if r.kind != definition.kind:
    if not isSameNodeKind(r, definition):
      return jmeBadKind
    if definition.nonempty:
      if (r.kind == JObject) or (r.kind == JArray):
        if r.len == 0:
          return jmeIsEmpty
      elif r.kind == JString:
        if r.str.len == 0:
          return jmeIsEmpty
  return jmeNoError

proc validate*(model: JsonModel, node: JsonNode): JsonModelValidationResult =
  ## Validates the provided json node.
  if not isJObject(node):
    return (success: false, errorField: "", errorKind: jmeInvalidNode)
  else:
    for d in items(model.fields):
      let e = validateField(node, d)
      if e != jmeNoError:
        return (success: false, errorField: d.path, errorKind: e)
  return (success: true, errorField: "", errorKind: jmeNoError)

proc addField(model: JsonModel, path: string, kind: JNodeKind, mandatory: bool, nonempty: bool): JsonModel =
  model.fields.add((path: path, kind: kind, mandatory: mandatory, nonempty: nonempty))
  model

proc defineOptional(model: JsonModel, path: string, kind: JNodeKind): JsonModel =
  ## Fluently, registers an optional field in the provided json model.
  addField(model, path, kind, false, false)

proc defineOptionalNonEmpty(model: JsonModel, path: string, kind: JNodeKind): JsonModel =
  ## Fluently, registers an optional non-empty field in the provided json model.
  addField(model, path, kind, false, true)

proc defineOptionalBoolean*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional boolean field in the provided json model.
  defineOptional(model, path, JsonBoolean)

proc defineOptionalInteger*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional integer field in the provided json model.
  defineOptional(model, path, JsonInteger)

proc defineOptionalFloat*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional float field in the provided json model.
  defineOptional(model, path, JsonFloat)

proc defineOptionalString*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional string field in the provided json model.
  defineOptional(model, path, JsonString)

proc defineOptionalNonEmptyString*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional non-empty string field in the provided json model.
  defineOptionalNonEmpty(model, path, JsonString)

proc defineOptionalObject*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional object field in the provided json model.
  defineOptional(model, path, JsonObject)

proc defineOptionalNonEmptyObject*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional non-empty object field in the provided json model.
  defineOptionalNonEmpty(model, path, JsonObject)

proc defineOptionalArray*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional array field in the provided json model.
  defineOptional(model, path, JsonArray)

proc defineOptionalNonEmptyArray*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an optional non-empty array field in the provided json model.
  defineOptionalNonEmpty(model, path, JsonArray)

proc defineMandatory(model: JsonModel, path: string, kind: JNodeKind): JsonModel =
  ## Fluently, registers a mandatory field in the provided json model.
  addField(model, path, kind, true, false)

proc defineMandatoryNonEmpty(model: JsonModel, path: string, kind: JNodeKind): JsonModel =
  ## Fluently, registers an mandatory non-empty field in the provided json model.
  addField(model, path, kind, true, true)

proc defineMandatoryUntyped*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory untyped field in the provided json model.
  defineMandatory(model, path, JsonAny)

proc defineMandatoryBoolean*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory boolean field in the provided json model.
  defineMandatory(model, path, JsonBoolean)

proc defineMandatoryInteger*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory integer field in the provided json model.
  defineMandatory(model, path, JsonInteger)

proc defineMandatoryFloat*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory float field in the provided json model.
  defineMandatory(model, path, JsonFloat)

proc defineMandatoryString*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory string field in the provided json model.
  defineMandatory(model, path, JsonString)

proc defineMandatoryNonEmptyString*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers an mandatory non-empty string field in the provided json model.
  defineMandatoryNonEmpty(model, path, JsonString)

proc defineMandatoryObject*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory object field in the provided json model.
  defineMandatory(model, path, JsonObject)

proc defineMandatoryNonEmptyObject*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory non-empty object field in the provided json model.
  defineMandatoryNonEmpty(model, path, JsonObject)

proc defineMandatoryArray*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory array field in the provided json model.
  defineMandatory(model, path, JsonArray)

proc defineMandatoryNonEmptyArray*(model: JsonModel, path: string): JsonModel =
  ## Fluently, registers a mandatory non-empty array field in the provided json model.
  defineMandatoryNonEmpty(model, path, JsonArray)

proc registerOptional(model: JsonModel, path: string, kind: JNodeKind) =
  ## Registers an optional field in the provided json model.
  discard addField(model, path, kind, false, false)

proc registerOptionalNonEmpty(model: JsonModel, path: string, kind: JNodeKind) =
  ## Registers an optional non-empty field in the provided json model.
  discard addField(model, path, kind, false, true)

proc registerOptionalBoolean*(model: JsonModel, path: string) =
  ## Registers an optional boolean field in the provided json model.
  registerOptional(model, path, JsonBoolean)

proc registerOptionalInteger*(model: JsonModel, path: string) =
  ## Registers an optional integer field in the provided json model.
  registerOptional(model, path, JsonInteger)

proc registerOptionalFloat*(model: JsonModel, path: string) =
  ## Registers an optional float field in the provided json model.
  registerOptional(model, path, JsonFloat)

proc registerOptionalString*(model: JsonModel, path: string) =
  ## Registers an optional string field in the provided json model.
  registerOptional(model, path, JsonString)

proc registerOptionalNonEmptyString*(model: JsonModel, path: string) =
  ## Registers an optional non-empty string field in the provided json model.
  registerOptionalNonEmpty(model, path, JsonString)

proc registerOptionalObject*(model: JsonModel, path: string) =
  ## Registers an optional object field in the provided json model.
  registerOptional(model, path, JsonObject)

proc registerOptionalNonEmptyObject*(model: JsonModel, path: string) =
  ## Registers an optional non-empty object field in the provided json model.
  registerOptionalNonEmpty(model, path, JsonObject)

proc registerOptionalArray*(model: JsonModel, path: string) =
  ## Registers an optional array field in the provided json model.
  registerOptional(model, path, JsonArray)

proc registerOptionalNonEmptyArray*(model: JsonModel, path: string) =
  ## Registers an optional non-empty array field in the provided json model.
  registerOptionalNonEmpty(model, path, JsonArray)

proc registerMandatory(model: JsonModel, path: string, kind: JNodeKind) =
  ## Registers a mandatory field in the provided json model.
  discard addField(model, path, kind, true, false)

proc registerMandatoryNonEmpty(model: JsonModel, path: string, kind: JNodeKind) =
  ## Registers an mandatory non-empty field in the provided json model.
  discard addField(model, path, kind, true, true)

proc registerMandatoryUntyped*(model: JsonModel, path: string) =
  ## Registers a mandatory untyped field in the provided json model.
  registerMandatory(model, path, JsonAny)

proc registerMandatoryBoolean*(model: JsonModel, path: string) =
  ## Registers a mandatory boolean field in the provided json model.
  registerMandatory(model, path, JsonBoolean)

proc registerMandatoryInteger*(model: JsonModel, path: string) =
  ## Registers a mandatory integer field in the provided json model.
  registerMandatory(model, path, JsonInteger)

proc registerMandatoryFloat*(model: JsonModel, path: string) =
  ## Registers a mandatory float field in the provided json model.
  registerMandatory(model, path, JsonFloat)

proc registerMandatoryString*(model: JsonModel, path: string) =
  ## Registers a mandatory string field in the provided json model.
  registerMandatory(model, path, JsonString)

proc registerMandatoryNonEmptyString*(model: JsonModel, path: string) =
  ## Registers an mandatory non-empty string field in the provided json model.
  registerMandatoryNonEmpty(model, path, JsonString)

proc registerMandatoryObject*(model: JsonModel, path: string) =
  ## Registers a mandatory object field in the provided json model.
  registerMandatory(model, path, JsonObject)

proc registerMandatoryNonEmptyObject*(model: JsonModel, path: string) =
  ## Registers a mandatory non-empty object field in the provided json model.
  registerMandatoryNonEmpty(model, path, JsonObject)

proc registerMandatoryArray*(model: JsonModel, path: string) =
  ## Registers a mandatory array field in the provided json model.
  registerMandatory(model, path, JsonArray)

proc registerMandatoryNonEmptyArray*(model: JsonModel, path: string) =
  ## Registers a mandatory non-empty array field in the provided json model.
  registerMandatoryNonEmpty(model, path, JsonArray)

proc reset*(model: JsonModel): JsonModel =
  ## Clears the registered fields in the provided json model and returns this instance back.
  model.fields = @[]
  model

proc clear*(model: JsonModel) =
  ## Clears the registered fields in the provided json model.
  model.fields = @[]

proc len*(model: JsonModel): int =
  ## Returns the number of registered fields in the provided json model.
  model.fields.len

proc loadFromJArray*(model: JsonModel, node: JsonNode) =
  ## Adds the registered field definitions to the provided json model.
  ## NOTE: it does not clears the precedent registered fields.
  if isJArray(node):
    for x in node:
      if isJString(x):
        let item = fieldDefinitionFromString(x.getStr())
        if item.path != "":
          model.fields.add(item)

proc saveToJArray*(model: JsonModel): JsonNode =
  ## Gets the registered field definitions in the provided json model as json array.
  result = newJArray()
  for x in model.fields:
    result.add(%fieldDefinitionToString(x))

proc newJsonModel*(): JsonModel =
  ## Creates a new json model instance.
  result = new TJModel
  result.clear()
