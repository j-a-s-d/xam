# jsons

This is the documentation of the json related constants and routines module of the Xam library.

## CONSTANTS

- `let JSON_NULL*: JsonNode`
- `let JSON_TRUE*: JsonNode`
- `let JSON_FALSE*: JsonNode`
- `let JSON_EMPTY_OBJECT*: JsonNode`
- `let JSON_EMPTY_ARRAY*: JsonNode`

## ROUTINES

### TRYPARSEJSON

**SIGNATURE**

`proc tryParseJson*(s: string, default: JsonNode): JsonNode {.inline.}`

**DESCRIPTION**

*Tries to parse the provided string into a valid JsonNode.*
*If it fails it returns the provided default value (which is nil by default).*

**USAGE**

```nim
    var obj = tryParseJson("{\"test\":123}", nil)
    if obj != nil:
      echo "parsed!"
```

### WRAPINJOBJECT

**SIGNATURE**

`proc wrapInJObject*(name: string, value: JsonNode): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided value in a json object.*

**USAGE**

```nim
    var obj = wrapInJObject("test", JSON_NULL)
    if obj["test"].kind == JNull:
      echo "wrapped!"
```

### WRAPINJOBJECT

**SIGNATURE**

`proc wrapInJObject*(name: string, value: bool): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided value in a json object.*

**USAGE**

```nim
    var obj = wrapInJObject("test", true)
    if obj["test"].kind == JBool:
      echo "wrapped!"
```

### WRAPINJOBJECT

**SIGNATURE**

`proc wrapInJObject*(name: string, value: BiggestInt): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided value in a json object.*

**USAGE**

```nim
    var obj = wrapInJObject("test", 123)
    if obj["test"].kind == JInt:
      echo "wrapped!"
```

### WRAPINJOBJECT

**SIGNATURE**

`proc wrapInJObject*(name: string, value: float): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided value in a json object.*

**USAGE**

```nim
    var obj = wrapInJObject("test", 123.45)
    if obj["test"].kind == JFloat:
      echo "wrapped!"
```

### WRAPINJOBJECT

**SIGNATURE**

`proc wrapInJObject*(name: string, value: string): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided value in a json object.*

**USAGE**

```nim
    var obj = wrapInJObject("test", "hey")
    if obj["test"].kind == JString:
      echo "wrapped!"
```

### WRAPINJARRAY

**SIGNATURE**

`proc wrapInJArray*(nodes: varargs[JsonNode]): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided values in a json array.*

*NOTE: the advantage over the generic constructor `%` is that you can combine different types.*

**USAGE**

```nim
    var arr = wrapInJArray(%1, %"2")
    if arr2.len == 3:
      echo "wrapped!"
```

### ISJARRAY

**SIGNATURE**

`proc isJArray*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json array.*

**USAGE**

```nim
  let x = newJArray()
  if isJArray(x):
    echo "it is!"
```

### ISJOBJECT

**SIGNATURE**

`proc isJObject*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json object.*

**USAGE**

```nim
  let x = newJObject()
  if isJObject(x):
    echo "it is!"
```

### ISJNULL

**SIGNATURE**

`proc isJNull*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json null.*

**USAGE**

```nim
  let x = newJNull()
  if isJNull(x):
    echo "it is!"
```

### ISJBOOL

**SIGNATURE**

`proc isJBool*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json boolean value.*

**USAGE**

```nim
  let x = newJBool(true)
  if isJBool(x):
    echo "it is!"
```

### ISJINT

**SIGNATURE**

`proc isJInt*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json int value.*

**USAGE**

```nim
  let x = newJInt(123)
  if isJInt(x):
    echo "it is!"
```

### ISJFLOAT

**SIGNATURE**

`proc isJFloat*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json float value.*

**USAGE**

```nim
  let x = newJFloat(123.45)
  if isJFloat(x):
    echo "it is!"
```

### ISJSTRING

**SIGNATURE**

`proc isJString*(node: JsonNode): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json node is a json string value.*

**USAGE**

```nim
  let x = newJString("hey")
  if isJString(x):
    echo "it is!"
```

### HASKEYS

**SIGNATURE**

`proc hasKeys*(node: JsonNode, keys: seq[string]): bool {.inline.}`

**DESCRIPTION**

*Tests if the provided json object has the specified keys.*

**USAGE**

```nim
    let o = %* { "a": 1, "b": 2, "c": 3 }
    let k = @["a", "c"]
    if o.hasKeys(k):
      echo "the object has those keys!"
```

### MIX

**SIGNATURE**

`proc mix*(objects: varargs[JsonNode]): JsonNode`

**DESCRIPTION**

*Mix the objects provided into a new single json object.*

*NOTE: keys from new objects will overwrite keys of existing objects.*

**USAGE**

```nim
  echo mix(%* { "a": 1 }, %* { "b": 2 }) # {"a":1,"b":2}
```

### OBTAINNODE

**SIGNATURE**

`proc obtainNode*(node: JsonNode, path: string, separator: char = '/'): JsonNode`

**DESCRIPTION**

*Obtains the json node at the specified path.*
*Optionally you can provide a custom separator to interpreted a custom path style.*

**USAGE**

```nim
  let o = %* { "a": %* { "b": 1 } }
  echo obtainNode(o, "a/b") # 1
```

### OBTAINNODEOFKIND

**SIGNATURE**

`proc obtainNodeOfKind*(node: JsonNode, kind: JsonNodeKind, path: string, separator: char = '/'): JsonNode`

**DESCRIPTION**

*Obtains the json node at the specified path if it is of the specified kind, otherwise it returns nil.*
*Optionally you can provide a custom separator to interpreted a custom path style.*

**USAGE**

```nim
  let o = %* { "a": %* { "b": 1 } }
  echo obtainNodeOfKind(o, JInt, "a/b") # 1
```

### OBTAINBOOL

**SIGNATURE**

`proc obtainBool*(node: JsonNode, path: string, default: bool = false): bool`

**DESCRIPTION**

*Obtains the boolean value at the specified path in the specified json object.*

*NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").*

**USAGE**

```nim
  let o = %* { "a": %* { "b": true } }
  echo obtainBool(o, "a/b") # true
```

### OBTAININT

**SIGNATURE**

`proc obtainInt*(node: JsonNode, path: string, default: BiggestInt = -1): BiggestInt`

**DESCRIPTION**

*Obtains the integer value at the specified path in the specified json object.*

*NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").*

**USAGE**

```nim
  let o = %* { "a": %* { "b": 123 } }
  echo obtainInt(o, "a/b") # 123
```

### OBTAINFLOAT

**SIGNATURE**

`proc obtainFloat*(node: JsonNode, path: string, default: float = -1.0): float`

**DESCRIPTION**

*Obtains the float value at the specified path in the specified json object.*

*NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").*

**USAGE**

```nim
  let o = %* { "a": %* { "b": 123.45 } }
  echo obtainFloat(o, "a/b") # 123.45
```

### OBTAINSTRING

**SIGNATURE**

`proc obtainString*(node: JsonNode, path: string, default: string = ""): string`

**DESCRIPTION**

*Obtains the string value at the specified path in the specified json object.*

*NOTE: empty keys are ignored (ex. "/a//b/c/" is equal to "a/b/c").*

**USAGE**

```nim
  let o = %* { "a": %* { "b": "hey" } }
  echo obtainString(o, "a/b") # "hey"
```

### LOADJSONNODEFROMFILE

**SIGNATURE**

`proc loadJsonNodeFromFile*(filename: string): JsonNode`

**DESCRIPTION**

*Loads the json node from the specified file. If it fails, it returns nil.*

**USAGE**

```nim
  let o = loadJsonNodeFromFile("test.json")
  if o != nil:
    echo "loaded!"
```

### SAVEJSONNODETOFILE

**SIGNATURE**

`proc saveJsonNodeToFile*(filename: string, node: JsonNode, prettyJson: bool = false): bool`

**DESCRIPTION**

*Saves the specified json node to the specified file, formatting it in a pretty representation if specified. It returns true if the whole operation had success.*

**USAGE**

```nim
    let n = %* { "a": 123 }
    if saveJsonNodeToFile("test.json", n):
      echo "saved!"
```

## TYPES

### JARRAYBUILDER

**SIGNATURE**

`type TJArrayBuilder = object`
&nbsp;&nbsp;&nbsp;&nbsp;`elements: seq[JsonNode]`
`JArrayBuilder* = ref TJArrayBuilder`

**DESCRIPTION**

*This is the json array builder type.*
*Use it to create json arrays fluently and/or incrementally.*

#### NEWJARRAYBUILDER

**SIGNATURE**

`proc newJArrayBuilder*(other: JArrayBuilder = nil): JArrayBuilder`

**DESCRIPTION**

*Constructor accepting other json array builder instance.*

#### RESET

**SIGNATURE**

`proc reset*(builder: JArrayBuilder, other: JArrayBuilder = nil): JArrayBuilder`

**DESCRIPTION**

*Resets the content of the builder by assigning the values of the specified json array builder instance (if any).*

#### LEN

**SIGNATURE**

`proc len*(builder: JArrayBuilder): int`

**DESCRIPTION**

*Returns the current items count of the array being built.*

#### ADD (NODE)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder`

**DESCRIPTION**

*Adds the specified json node and returns the builder instance.*

#### ADD (BOOLEAN)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: bool): JArrayBuilder`

**DESCRIPTION**

*Adds the specified boolean value and returns the builder instance.*

#### ADD (INTEGER)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: BiggestInt): JArrayBuilder`

**DESCRIPTION**

*Adds the specified integer value and returns the builder instance.*

#### ADD (FLOAT)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: float): JArrayBuilder`

**DESCRIPTION**

*Adds the specified float value and returns the builder instance.*

#### ADD (STRING)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: string): JArrayBuilder`

**DESCRIPTION**

*Adds the specified string value and returns the builder instance.*

#### APPEND (NODE)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json node to the array being built.*

#### APPEND (BOOLEAN)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: bool)`

**DESCRIPTION**

*Appends the specified boolean value to the array being built.*

#### APPEND (INTEGER)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: BiggestInt)`

**DESCRIPTION**

*Appends the specified integer value to the array being built.*

#### APPEND (FLOAT)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: float)`

**DESCRIPTION**

*Appends the specified float value to the array being built.*

#### APPEND (STRING)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: string)`

**DESCRIPTION**

*Appends the specified string value to the array being built.*

#### GETASJARRAY

**SIGNATURE**

`proc getAsJArray*(builder: JArrayBuilder): JsonNode`

**DESCRIPTION**

*Builds the resulting json array and returns it.*

#### GETASSTRING

**SIGNATURE**

`proc getAsString*(builder: JArrayBuilder): string`

**DESCRIPTION**

*Builds the resulting json array and returns it as its string representation.*

#### GETASPRETTYSTRING

**SIGNATURE**

`proc getAsPrettyString*(builder: JArrayBuilder): string`

**DESCRIPTION**

*Builds the resulting json array and returns it as its prettily formatted string representation.*

#### GETASJSONNODESEQUENCE

**SIGNATURE**

`proc getAsJsonNodeSequence*(builder: JArrayBuilder): seq[JsonNode]`

**DESCRIPTION**

*Returns the array being built as a sequence of JsonNode items.*

### JOBJECTBUILDER

**SIGNATURE**

`type TJObjectBuilder = object`
&nbsp;&nbsp;&nbsp;&nbsp;`fields: OrderedTable[string, JsonNode]`
`JObjectBuilder* = ref TJObjectBuilder`

**DESCRIPTION**

*This is the json object builder type.*
*Use it to create json objects fluently and/or incrementally.*

#### NEWJOBJECTBUILDER

**SIGNATURE**

`proc newJObjectBuilder*(other: JObjectBuilder = nil): JObjectBuilder`

**DESCRIPTION**

*Constructor accepting other json object builder instance.*

#### RESET

**SIGNATURE**

`proc reset*(builder: JObjectBuilder, other: JObjectBuilder = nil): JObjectBuilder`

**DESCRIPTION**

*Resets the content of the builder by assigning the value of the specified json object builder instance (if any).*

#### LEN

**SIGNATURE**

`proc len*(builder: JObjectBuilder): int`

**DESCRIPTION**

*Returns the current keys count of the object being built.*

#### SET (NODE)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, node: JsonNode): JObjectBuilder`

**DESCRIPTION**

*Adds the specified json node with the specified name.*

#### SET (BOOLEAN)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: bool): JObjectBuilder`

**DESCRIPTION**

*Adds the specified boolean value with the specified name.*

#### SET (INTEGER)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: BiggestInt): JObjectBuilder`

**DESCRIPTION**

*Adds the specified integer value with the specified name.*

#### SET (FLOAT)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: float): JObjectBuilder`

**DESCRIPTION**

*Adds the specified float value with the specified name.*

#### SET (STRING)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: string): JObjectBuilder`

**DESCRIPTION**

*Adds the specified string value with the specified name.*

#### FIELD ACCESSOR (NODE)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json node with the specified name.*

#### FIELD ACCESSOR (BOOLEAN)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: bool)`

**DESCRIPTION**

*Adds the specified boolean value with the specified name.*

#### FIELD ACCESSOR (INTEGER)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: BiggestInt)`

**DESCRIPTION**

*Adds the specified integer value with the specified name.*

#### FIELD ACCESSOR (FLOAT)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: float)`

**DESCRIPTION**

*Adds the specified float value with the specified name.*

#### FIELD ACCESSOR (STRING)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: string)`

**DESCRIPTION**

*Adds the specified string value with the specified name.*

#### GETASJOBJECT

**SIGNATURE**

`proc getAsJObject*(builder: JObjectBuilder): JsonNode`

**DESCRIPTION**

*Builds the resulting json object and returns it.*

#### GETASSTRING

**SIGNATURE**

`proc getAsString*(builder: JObjectBuilder): string`

**DESCRIPTION**

*Builds the resulting json object and returns it as its string representation.*

#### GETASPRETTYSTRING

**SIGNATURE**

`proc getAsPrettyString*(builder: JObjectBuilder): string`

**DESCRIPTION**

*Builds the resulting json object and returns it as its prettily formatted string representation.*

#### GETASNAMEDJSONNODEORDEREDTABLE

**SIGNATURE**

`proc getAsNamedJsonNodeOrderedTable*(builder: JObjectBuilder): OrderedTable[string, JsonNode]`

**DESCRIPTION**

*Returns the object being built as a ordered table of named JsonNode items.*

### JSONMODEL

**SIGNATURE**

`TJModel = object`
&nbsp;&nbsp;&nbsp;&nbsp;`fields: JsonModelFieldsDefinitions`
`JsonModel* = ref TJModel`

**DESCRIPTION**

*This is the json model type.*
*Use it to validate json objects fields.*

#### NEWJSONMODEL

**SIGNATURE**

`proc newJsonModel*(): JsonModel`

**DESCRIPTION**

*Creates a new json model instance.*

#### RESET

**SIGNATURE**

`proc reset*(model: JsonModel)`

**DESCRIPTION**

*Clears the registered fields in the provided json model.*

#### LOADFROMJARRAY

**SIGNATURE**

`proc loadFromJArray*(model: JsonModel, node: JsonNode)`

**DESCRIPTION**

*Adds the registered field definitions to the provided json model.*

#### SAVETOJARRAY

**SIGNATURE**

`proc saveToJArray*(model: JsonModel): JsonNode`

**DESCRIPTION**

*Gets the registered field definitions in the provided json model as json array.*

#### DEFINEOPTIONALBOOLEAN

**SIGNATURE**

`proc defineOptionalBoolean*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional boolean field in the provided json model.*

#### DEFINEOPTIONALINTEGER

**SIGNATURE**

`proc defineOptionalInteger*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional integer field in the provided json model.*

#### DEFINEOPTIONALFLOAT

**SIGNATURE**

`proc defineOptionalFloat*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional float field in the provided json model.*

#### DEFINEOPTIONALSTRING

**SIGNATURE**

`proc defineOptionalString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional string field in the provided json model.*

#### DEFINEOPTIONALNONEMPTYSTRING

**SIGNATURE**

`proc defineOptionalNonEmptyString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty string field in the provided json model.*

#### DEFINEOPTIONALOBJECT

**SIGNATURE**

`proc defineOptionalObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional object field in the provided json model.*

#### DEFINEOPTIONALNONEMPTYOBJECT

**SIGNATURE**

`proc defineOptionalNonEmptyObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty object field in the provided json model.*

#### DEFINEOPTIONALARRAY

**SIGNATURE**

`proc defineOptionalArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional array field in the provided json model.*

#### DEFINEOPTIONALNONEMPTYARRAY

**SIGNATURE**

`proc defineOptionalNonEmptyArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty array field in the provided json model.*

#### DEFINEMANDATORYUNTYPED

**SIGNATURE**

`proc defineMandatoryUntyped*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory untyped field in the provided json model.*

#### DEFINEMANDATORYBOOLEAN

**SIGNATURE**

`proc defineMandatoryBoolean*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory boolean field in the provided json model.*

#### DEFINEMANDATORYINTEGER

**SIGNATURE**

`proc defineMandatoryInteger*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory integer field in the provided json model.*

#### DEFINEMANDATORYFLOAT

**SIGNATURE**

`proc defineMandatoryFloat*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory float field in the provided json model.*

#### DEFINEMANDATORYSTRING

**SIGNATURE**

`proc defineMandatoryString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory string field in the provided json model.*

#### DEFINEMANDATORYNONEMPTYSTRING

**SIGNATURE**

`proc defineMandatoryNonEmptyString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an mandatory non-empty string field in the provided json model.*

#### DEFINEMANDATORYOBJECT

**SIGNATURE**

`proc defineMandatoryObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory object field in the provided json model.*

#### DEFINEMANDATORYNONEMPTYOBJECT

**SIGNATURE**

`proc defineMandatoryNonEmptyObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory non-empty object field in the provided json model.*

#### DEFINEMANDATORYARRAY

**SIGNATURE**

`proc defineMandatoryArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory array field in the provided json model.*

#### DEFINEMANDATORYNONEMPTYARRAY

**SIGNATURE**

`proc defineMandatoryNonEmptyArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory non-empty array field in the provided json model.*

#### REGISTEROPTIONALBOOLEAN

**SIGNATURE**

`proc registerOptionalBoolean*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional boolean field in the provided json model.*

#### REGISTEROPTIONALINTEGER

**SIGNATURE**

`proc registerOptionalInteger*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional integer field in the provided json model.*

#### REGISTEROPTIONALFLOAT

**SIGNATURE**

`proc registerOptionalFloat*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional float field in the provided json model.*

#### REGISTEROPTIONALSTRING

**SIGNATURE**

`proc registerOptionalString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional string field in the provided json model.*

#### REGISTEROPTIONALNONEMPTYSTRING

**SIGNATURE**

`proc registerOptionalNonEmptyString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty string field in the provided json model.*

#### REGISTEROPTIONALOBJECT

**SIGNATURE**

`proc registerOptionalObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional object field in the provided json model.*

#### REGISTEROPTIONALNONEMPTYOBJECT

**SIGNATURE**

`proc registerOptionalNonEmptyObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty object field in the provided json model.*

#### REGISTEROPTIONALARRAY

**SIGNATURE**

`proc registerOptionalArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional array field in the provided json model.*

#### REGISTEROPTIONALNONEMPTYARRAY

**SIGNATURE**

`proc registerOptionalNonEmptyArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty array field in the provided json model.*

#### REGISTERMANDATORYUNTYPED

**SIGNATURE**

`proc registerMandatoryUntyped*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory untyped field in the provided json model.*

#### REGISTERMANDATORYBOOLEAN

**SIGNATURE**

`proc registerMandatoryBoolean*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory boolean field in the provided json model.*

#### REGISTERMANDATORYINTEGER

**SIGNATURE**

`proc registerMandatoryInteger*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory integer field in the provided json model.*

#### REGISTERMANDATORYFLOAT

**SIGNATURE**

`proc registerMandatoryFloat*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory float field in the provided json model.*

#### REGISTERMANDATORYSTRING

**SIGNATURE**

`proc registerMandatoryString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory string field in the provided json model.*

#### REGISTERMANDATORYNONEMPTYSTRING

**SIGNATURE**

`proc registerMandatoryNonEmptyString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an mandatory non-empty string field in the provided json model.*

#### REGISTERMANDATORYOBJECT

**SIGNATURE**

`proc registerMandatoryObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory object field in the provided json model.*

#### REGISTERMANDATORYNONEMPTYOBJECT

**SIGNATURE**

`proc registerMandatoryNonEmptyObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory non-empty object field in the provided json model.*

#### REGISTERMANDATORYARRAY

**SIGNATURE**

`proc registerMandatoryArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory array field in the provided json model.*

#### REGISTERMANDATORYNONEMPTYARRAY

**SIGNATURE**

`proc registerMandatoryNonEmptyArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory non-empty array field in the provided json model.*

#### VALIDATE

**SIGNATURE**

`proc validate*(model: JsonModel, node: JsonNode): JsonModelValidationResult`

**DESCRIPTION**

*Validates the provided json node.*
