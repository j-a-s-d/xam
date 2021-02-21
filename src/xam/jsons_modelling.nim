# xam
# ===
# JSON MODELING

type
  JsonModelFieldDefinition* = tuple[path: string, kind: JsonNodeKind, mandatory: bool, nonempty: bool]

  JsonModelFieldsDefinitions* = seq[JsonModelFieldDefinition]

  JModel = object
    fields: JsonModelFieldsDefinitions

  JsonModel* = ref JModel

  JsonModelErrorKind* = enum
    jmeNoError, jmeNotExists, jmeBadKind, jmeIsEmpty

  JsonModelValidationResult* = tuple[success: bool, errorField: string, errorKind: JsonModelErrorKind] # , readFields: OrderedTable[string, JsonNode]

proc validateField(node: JsonNode, definition: JsonModelFieldDefinition): JsonModelErrorKind =
  let r = obtainNode(node, definition.path)
  if r == nil:
    if definition.mandatory:
      return jmeNotExists
  else:
    if r.kind != definition.kind:
      return jmeBadKind
    if definition.nonempty:
      if r.kind in [JObject, JArray]:
        if r.len == 0:
          return jmeIsEmpty
      elif r.kind == JString:
        if r.str.len == 0:
          return jmeIsEmpty
  return jmeNoError

proc validate*(model: JsonModel, node: JsonNode): JsonModelValidationResult =
  for d in items(model.fields):
    let e = validateField(node, d)
    if e != jmeNoError:
      return (success: false, errorField: d.path, errorKind: e)
  (success: true, errorField: "", errorKind: jmeNoError)

proc register(model: JsonModel, path: string, kind: JsonNodeKind, mandatory: bool, nonempty: bool) =
  model.fields.add((path: path, kind: kind, mandatory: mandatory, nonempty: nonempty))

proc registerOptional*(model: JsonModel, path: string, kind: JsonNodeKind) =
  ## Registers an optional field in the provided json model.
  register(model, path, kind, false, false)

proc registerOptionalNonEmpty*(model: JsonModel, path: string, kind: JsonNodeKind) =
  ## Registers an optional non-empty field in the provided json model.
  register(model, path, kind, false, true)

proc registerOptionalBoolean*(model: JsonModel, path: string) =
  ## Registers an optional boolean field in the provided json model.
  registerOptional(model, path, JBool)

proc registerOptionalInteger*(model: JsonModel, path: string) =
  ## Registers an optional integer field in the provided json model.
  registerOptional(model, path, JInt)

proc registerOptionalFloat*(model: JsonModel, path: string) =
  ## Registers an optional float field in the provided json model.
  registerOptional(model, path, JFloat)

proc registerOptionalString*(model: JsonModel, path: string) =
  ## Registers an optional string field in the provided json model.
  registerOptional(model, path, JString)

proc registerOptionalNonEmptyString*(model: JsonModel, path: string) =
  ## Registers an optional non-empty string field in the provided json model.
  registerOptionalNonEmpty(model, path, JString)

proc registerOptionalObject*(model: JsonModel, path: string) =
  ## Registers an optional object field in the provided json model.
  registerOptional(model, path, JObject)

proc registerOptionalNonEmptyObject*(model: JsonModel, path: string) =
  ## Registers an optional non-empty object field in the provided json model.
  registerOptionalNonEmpty(model, path, JObject)

proc registerOptionalArray*(model: JsonModel, path: string) =
  ## Registers an optional array field in the provided json model.
  registerOptional(model, path, JArray)

proc registerOptionalNonEmptyArray*(model: JsonModel, path: string) =
  ## Registers an optional non-empty array field in the provided json model.
  registerOptionalNonEmpty(model, path, JArray)

proc registerMandatory*(model: JsonModel, path: string, kind: JsonNodeKind) =
  ## Registers a mandatory field in the provided json model.
  register(model, path, kind, true, false)

proc registerMandatoryNonEmpty*(model: JsonModel, path: string, kind: JsonNodeKind) =
  ## Registers an mandatory non-empty field in the provided json model.
  register(model, path, kind, false, true)

proc registerMandatoryBoolean*(model: JsonModel, path: string) =
  ## Registers a mandatory boolean field in the provided json model.
  registerMandatory(model, path, JBool)

proc registerMandatoryInteger*(model: JsonModel, path: string) =
  ## Registers a mandatory integer field in the provided json model.
  registerMandatory(model, path, JInt)

proc registerMandatoryFloat*(model: JsonModel, path: string) =
  ## Registers a mandatory float field in the provided json model.
  registerMandatory(model, path, JFloat)

proc registerMandatoryString*(model: JsonModel, path: string) =
  ## Registers a mandatory string field in the provided json model.
  registerMandatory(model, path, JString)

proc registerMandatoryNonEmptyString*(model: JsonModel, path: string) =
  ## Registers an mandatory non-empty string field in the provided json model.
  registerMandatoryNonEmpty(model, path, JString)

proc registerMandatoryObject*(model: JsonModel, path: string) =
  ## Registers a mandatory object field in the provided json model.
  registerMandatory(model, path, JObject)

proc registerMandatoryNonEmptyObject*(model: JsonModel, path: string) =
  ## Registers a mandatory non-empty object field in the provided json model.
  registerMandatoryNonEmpty(model, path, JObject)

proc registerMandatoryArray*(model: JsonModel, path: string) =
  ## Registers a mandatory array field in the provided json model.
  registerMandatory(model, path, JArray)

proc registerMandatoryNonEmptyArray*(model: JsonModel, path: string) =
  ## Registers a mandatory non-empty array field in the provided json model.
  registerMandatoryNonEmpty(model, path, JArray)

proc getRegisteredDefinitions*(model: JsonModel): JsonModelFieldsDefinitions =
  ## Gets the registered field definitions in the provided json model.
  model.fields

proc reset*(model: JsonModel) =
  ## Clears the registered fields in the provided json model.
  model.fields = @[]

proc newJsonModel*(): JsonModel =
  ## Creates a new json model instance.
  result = new JModel
  result.reset()