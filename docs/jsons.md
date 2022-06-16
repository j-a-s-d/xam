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
    var arr = wrapInJArray(%1, %"2", JSON_NULL)
    if arr.len == 3:
      echo "wrapped!"
```

### WRAPINJARRAY

**SIGNATURE**

`proc wrapInJArray*(value: bool, values: varargs[bool]): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided boolean values in a json array.*

**USAGE**

```nim
    var arr = wrapInJArray(true, false, true)
    if arr.len == 3:
      echo "wrapped!"
```

### WRAPINJARRAY

**SIGNATURE**

`proc wrapInJArray*(value: BiggestInt, values: varargs[BiggestInt]): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided integer values in a json array.*

**USAGE**

```nim
    var arr = wrapInJArray(1, 2, 3)
    if arr.len == 3:
      echo "wrapped!"
```

### WRAPINJARRAY

**SIGNATURE**

`proc wrapInJArray*(value: float, values: varargs[float]): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided float values in a json array.*

**USAGE**

```nim
    var arr = wrapInJArray(1.1, 2.2, 3.3)
    if arr.len == 3:
      echo "wrapped!"
```

### WRAPINJARRAY

**SIGNATURE**

`proc wrapInJArray*(value: string, values: varargs[string]): JsonNode {.inline.}`

**DESCRIPTION**

*Wraps the provided string values in a json array.*

**USAGE**

```nim
    var arr = wrapInJArray("blah1", "blah2", "blah3")
    if arr.len == 3:
      echo "wrapped!"
```

### ENSUREJSONNODE

**SIGNATURE**

`proc ensureJsonNode*(node: JsonNode): JsonNode`

**DESCRIPTION**

*If the provided json node is not nil, it is returned.*
*Otherwise a new json null is returned.*

**USAGE**

```nim
  if ensureJsonNode(%* { "a": 1, "b": 2, "c": 3 }).len == 3 and ensureJsonNode(nil) == newJNull():
    echo "ensured!"
```

### ENSUREJOBJECT

**SIGNATURE**

`proc ensureJObject*(node: JsonNode): JsonNode`

**DESCRIPTION**

*If the provided json node is a json object, it is returned.*
*Otherwise a new json object is returned.*

**USAGE**

```nim
  if ensureJObject(%* { "a": 1, "b": 2, "c": 3 }).len == 3 and ensureJObject(newJNull()).len == 0:
    echo "ensured!"
```

### ENSUREJARRAY

**SIGNATURE**

`proc ensureJArray*(node: JsonNode): JsonNode`

**DESCRIPTION**

*If the provided json node is a json array, it is returned.*
*Otherwise a new json array is returned.*

**USAGE**

```nim
  if ensureJArray(%* ["hello", 123, true, nil, 456.789]).len == 5 and ensureJArray(newJNull()).len == 0:
    echo "ensured!"
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

```nim
  type TJArrayBuilder = object
    elements: seq[JsonNode]
  JArrayBuilder* = ref TJArrayBuilder
```

**DESCRIPTION**

*This is the json array builder type.*
*Use it to create json arrays fluently and/or incrementally.*

#### NEWJARRAYBUILDER

**SIGNATURE**

`proc newJArrayBuilder*(): JArrayBuilder`

**DESCRIPTION**

*Default JArrayBuilder constructor.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b != nil:
    echo "created!"
```

#### NEWJARRAYBUILDER

**SIGNATURE**

`proc newJArrayBuilder*(other: JArrayBuilder): JArrayBuilder`

**DESCRIPTION**

*Constructor accepting other json array builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b != nil:
    echo "created!"
```

#### NEWJARRAYBUILDER

**SIGNATURE**

`proc newJArrayBuilder*(arr: JsonNode): JArrayBuilder`

**DESCRIPTION**

*Constructor accepting a json array instance.*

**USAGE**

```nim
  let b = newJArrayBuilder(%* [1, 2])
  if b != nil:
    echo "created!"
```

#### CLEAR

**SIGNATURE**

`proc clear*(builder: JArrayBuilder, other: JArrayBuilder = nil)`

**DESCRIPTION**

*Resets the content of the builder by assigning the values of the specified json array builder instance (if any).*

*NOTE: this is the non-fluent version of reset.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  # add some content to b
  b.clear()
  if b.len == 0:
    echo "no items!"
```

#### RESET

**SIGNATURE**

`proc reset*(builder: JArrayBuilder, other: JArrayBuilder = nil): JArrayBuilder`

**DESCRIPTION**

*Resets the content of the builder by assigning the values of the specified json array builder instance (if any) and returns the builder instance.*

*NOTE: this is the fluent version of clear.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  # add some content to b
  if b.reset().len == 0:
    echo "no items!"
```

#### LEN

**SIGNATURE**

`proc len*(builder: JArrayBuilder): int`

**DESCRIPTION**

*Returns the current items count of the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.len == 0:
    echo "no items!"
```

#### SIZE

**SIGNATURE**

`proc size*(builder: JArrayBuilder, length: var int): JArrayBuilder`

**DESCRIPTION**

*Returns the current items count of the array being built and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  var l = 0
  if b.size(l).len == 0:
    if l == 0:
      echo "no items!"
```

#### ADD (NODE)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder`

**DESCRIPTION**

*Adds the specified json node and returns the builder instance.*

*NOTE: this is the fluent version of append.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.add(newJString("hello")).len == 1:
    echo "added!"
```

#### ADD (BOOLEAN)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: bool): JArrayBuilder`

**DESCRIPTION**

*Adds the specified boolean value and returns the builder instance.*

*NOTE: this is the fluent version of append.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.add(true).len == 1:
    echo "added!"
```

#### ADD (INTEGER)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: BiggestInt): JArrayBuilder`

**DESCRIPTION**

*Adds the specified integer value and returns the builder instance.*

*NOTE: this is the fluent version of append.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.add(123).len == 1:
    echo "added!"
```

#### ADD (FLOAT)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: float): JArrayBuilder`

**DESCRIPTION**

*Adds the specified float value and returns the builder instance.*

*NOTE: this is the fluent version of append.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.add(123.45).len == 1:
    echo "added!"
```

#### ADD (STRING)

**SIGNATURE**

`proc add*(builder: JArrayBuilder, value: string): JArrayBuilder`

**DESCRIPTION**

*Adds the specified string value and returns the builder instance.*

*NOTE: this is the fluent version of append.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.add("hello").len == 1:
    echo "added!"
```

#### ADDALL (VARARGS[JSONNODE])

**SIGNATURE**

`proc addAll*(builder: JArrayBuilder, nodes: varargs[JsonNode]): JArrayBuilder`

**DESCRIPTION**

*Adds all the specified json nodes and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addAll(newJString("hello"), newJInt(123)).addAll(newJBool(true), newJNull(), newJFloat(456.789)).len == 5:
    echo "added all!"
```

#### ADDALL (BOOLEAN)

**SIGNATURE**

`proc addAll*(builder: JArrayBuilder, value: bool, values: varargs[bool]): JArrayBuilder`

**DESCRIPTION**

*Adds all the specified boolean values and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addAll(true).addAll(false, true, false, true).len == 5:
    echo "added all!"
```

#### ADDALL (INTEGER)

**SIGNATURE**

`proc addAll*(builder: JArrayBuilder, value: BiggestInt, values: varargs[BiggestInt]): JArrayBuilder`

**DESCRIPTION**

*Adds all the specified integer values and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addAll(0).addAll(1, 2, 3, 4).len == 5:
    echo "added all!"
```

#### ADDALL (FLOAT)

**SIGNATURE**

`proc addAll*(builder: JArrayBuilder, value: float, values: varargs[float]): JArrayBuilder`

**DESCRIPTION**

*Adds all the specified float values and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addAll(0.0).addAll(1.1, 2.2, 3.3, 4.4).len == 5:
    echo "added all!"
```

#### ADDALL (STRING)

**SIGNATURE**

`proc addAll*(builder: JArrayBuilder, value: string, values: varargs[string]): JArrayBuilder`

**DESCRIPTION**

*Adds all the specified string values and returns the builder instance.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addAll("foo").addAll("bar", "baz", "hello", "world").len == 5:
    echo "added all!"
```

#### ADDVALUES

**SIGNATURE**

`proc addValues*(builder: JArrayBuilder, node: JsonNode): JArrayBuilder`

**DESCRIPTION**

*Add the values of the provided json array into the builder and returns the builder instance.*

*NOTE: if the provided node is not a valid json array it does nothing.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  if b.addValues(%* ["foo", 1]).addValues(%* [true, 0.123]).len == 4:
    echo "added all!"
```

#### APPEND (NODE)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json node to the array being built.*

*NOTE: this is the non-fluent version of add.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.append(newJString("hello"))
  if b.len == 1:
    echo "appended!"
```

#### APPEND (BOOLEAN)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: bool)`

**DESCRIPTION**

*Appends the specified boolean value to the array being built.*

*NOTE: this is the non-fluent version of add.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.append(true)
  if b.len == 1:
    echo "appended!"
```

#### APPEND (INTEGER)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: BiggestInt)`

**DESCRIPTION**

*Appends the specified integer value to the array being built.*

*NOTE: this is the non-fluent version of add.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.append(123)
  if b.len == 1:
    echo "appended!"
```

#### APPEND (FLOAT)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: float)`

**DESCRIPTION**

*Appends the specified float value to the array being built.*

*NOTE: this is the non-fluent version of add.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.append(123.45)
  if b.len == 1:
    echo "appended!"
```

#### APPEND (STRING)

**SIGNATURE**

`proc append*(builder: JArrayBuilder, value: string)`

**DESCRIPTION**

*Appends the specified string value to the array being built.*

*NOTE: this is the non-fluent version of add.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.append("hello")
  if b.len == 1:
    echo "appended!"
```

#### APPENDALL (VARARGS[JSONNODE])

**SIGNATURE**

`proc appendAll*(builder: JArrayBuilder, nodes: varargs[JsonNode])`

**DESCRIPTION**

*Appends all the specified json nodes to the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendAll(newJString("hello"), newJInt(123))
  b.appendAll(newJBool(true), newJNull(), newJFloat(456.789))
  if b.len == 5:
    echo "appended all!"
```

#### APPENDALL (BOOLEAN)

**SIGNATURE**

`proc appendAll*(builder: JArrayBuilder, value: bool, values: varargs[bool])`

**DESCRIPTION**

*Adds all the specified boolean values to the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendAll(true)
  b.appendAll(false, true, false, true)
  if b.len == 5:
    echo "appended all!"
```

#### APPENDALL (INTEGER)

**SIGNATURE**

`proc appendAll*(builder: JArrayBuilder, value: BiggestInt, values: varargs[BiggestInt])`

**DESCRIPTION**

*Adds all the specified integer values to the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendAll(0)
  b.appendAll(1, 2, 3, 4)
  if b.len == 5:
    echo "appended all!"
```

#### APPENDALL (FLOAT)

**SIGNATURE**

`proc appendAll*(builder: JArrayBuilder, value: float, values: varargs[float])`

**DESCRIPTION**

*Adds all the specified float values to the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendAll(0.0)
  b.appendAll(1.1, 2.2, 3.3, 4.4)
  if b.len == 5:
    echo "appended all!"
```

#### APPENDALL (STRING)

**SIGNATURE**

`proc appendAll*(builder: JArrayBuilder, value: string, values: varargs[string])`

**DESCRIPTION**

*Adds all the specified string values to the array being built.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendAll("foo")
  b.appendAll("bar", "baz", "hello", "world")
  if b.len == 5:
    echo "appended all!"
```

#### APPENDVALUES

**SIGNATURE**

`proc appendValues*(builder: JArrayBuilder, node: JsonNode)`

**DESCRIPTION**

*Add the values of the provided json array into the array being built.*

*NOTE: if the provided node is not a valid json array it does nothing.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.appendValues(%* ["foo", 1, true, 0.123])
  if b.len == 4:
    echo "appended all!"
```

#### GETASJARRAY

**SIGNATURE**

`proc getAsJArray*(builder: JArrayBuilder): JsonNode`

**DESCRIPTION**

*Builds the resulting json array and returns it.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.add("hello").add(123).add(true).add(nil).append(456.789)
  if b.getAsJArray() == %* ["hello", 123, true, nil, 456.789]:
    echo "got!"
```

#### GETASSTRING

**SIGNATURE**

`proc getAsString*(builder: JArrayBuilder): string`

**DESCRIPTION**

*Builds the resulting json array and returns it as its string representation.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.add("hello").add(123).add(true).add(nil).append(456.789)
  if b.getAsString() == """["hello",123,true,null,456.789]""":
    echo "got!"
```

#### GETASPRETTYSTRING

**SIGNATURE**

`proc getAsPrettyString*(builder: JArrayBuilder): string`

**DESCRIPTION**

*Builds the resulting json array and returns it as its prettily formatted string representation.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.add("hello").add(123).add(true).add(nil).append(456.789)
  if b.getAsPrettyString() == """{
    "test1": "hello",
    "test2": 123,
    "test3": true,
    "test4": null,
    "test5": 456.789
  }""":
    echo "got!"
```

#### GETASJSONNODESEQUENCE

**SIGNATURE**

`proc getAsJsonNodeSequence*(builder: JArrayBuilder): seq[JsonNode]`

**DESCRIPTION**

*Returns the array being built as a sequence of JsonNode items.*

**USAGE**

```nim
  let b = newJArrayBuilder()
  b.add("hello").add(123).add(true).add(nil).append(456.789)
  if b.getAsJsonNodeSequence() == @[newJString("hello"), newJInt(123), newJBool(true), newJNull(), newJFloat(456.789)]:
    echo "got!"
```

### JOBJECTBUILDER

**SIGNATURE**

```nim
  type TJObjectBuilder = object
    fields: OrderedTable[string, JsonNode]
  JObjectBuilder* = ref TJObjectBuilder
```

**DESCRIPTION**

*This is the json object builder type.*
*Use it to create json objects fluently and/or incrementally.*

#### NEWJOBJECTBUILDER

**SIGNATURE**

`proc newJObjectBuilder*(): JObjectBuilder`

**DESCRIPTION**

*Default JObjectBuilder constructor.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b != nil:
    echo "created!"
```

#### NEWJOBJECTBUILDER

**SIGNATURE**

`proc newJObjectBuilder*(other: JObjectBuilder): JObjectBuilder`

**DESCRIPTION**

*Constructor accepting other json object builder instance.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b != nil:
    echo "created!"
```

#### NEWJOBJECTBUILDER

**SIGNATURE**

`proc newJObjectBuilder*(obj: JsonNode): JObjectBuilder`

**DESCRIPTION**

*Constructor accepting a json object instance.*

**USAGE**

```nim
  let b = newJObjectBuilder(%* { "a": 1, "b": 2 })
  if b != nil:
    echo "created!"
```

#### CLEAR

**SIGNATURE**

`proc clear*(builder: JArrayBuilder, other: JArrayBuilder = nil)`

**DESCRIPTION**

*Resets the content of the builder by assigning the values of the specified json array builder instance (if any).*

*NOTE: this is the non-fluent version of reset.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  # add some content to b
  b.clear()
  if b.len == 0:
    echo "no items!"
```

#### RESET

**SIGNATURE**

`proc reset*(builder: JObjectBuilder, other: JObjectBuilder = nil): JObjectBuilder`

**DESCRIPTION**

*Resets the content of the builder by assigning the value of the specified json object builder instance (if any) and returns the builder instance.*

*NOTE: this is the fluent version of clear.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  # add some content to b
  if b.reset().len == 0:
    echo "no items!"
```

#### LEN

**SIGNATURE**

`proc len*(builder: JObjectBuilder): int`

**DESCRIPTION**

*Returns the current keys count of the object being built.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.len == 0:
    echo "no items!"
```

#### SIZE

**SIGNATURE**

`proc size*(builder: JObjectBuilder, length: var int): JObjectBuilder`

**DESCRIPTION**

*Returns the current keys count of the object being built and returns the builder instance.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  var l = 0
  if b.size(l).len == 0:
    if l == 0:
      echo "no items!"
```

#### PUT (NODE)

**SIGNATURE**

`proc put*(builder: JObjectBuilder, name: string, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json node with the specified name.*

*NOTE: this is the non-fluent version of set.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.put("test", newJString("hello"))
  if b.len == 1:
    echo "it has an item!"
```

#### PUT (BOOLEAN)

**SIGNATURE**

`proc put*(builder: JObjectBuilder, name: string, value: bool)`

**DESCRIPTION**

*Adds the specified boolean value with the specified name.*

*NOTE: this is the non-fluent version of set.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.put("test", true)
  if b.len == 1:
    echo "it has an item!"
```

#### PUT (INTEGER)

**SIGNATURE**

`proc put*(builder: JObjectBuilder, name: string, value: BiggestInt)`

**DESCRIPTION**

*Adds the specified integer value with the specified name.*

*NOTE: this is the non-fluent version of set.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.put("test", 123)
  if b.len == 1:
    echo "it has an item!"
```

#### PUT (FLOAT)

**SIGNATURE**

`proc put*(builder: JObjectBuilder, name: string, value: float)`

**DESCRIPTION**

*Adds the specified float value with the specified name.*

*NOTE: this is the non-fluent version of set.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.put("test", 123.45)
  if b.len == 1:
    echo "it has an item!"
```

#### PUT (STRING)

**SIGNATURE**

`proc put*(builder: JObjectBuilder, name: string, value: string)`

**DESCRIPTION**

*Adds the specified string value with the specified name.*

*NOTE: this is the non-fluent version of set.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.put("test", "hello")
  if b.len == 1:
    echo "it has an item!"
```

#### PUTALL

**SIGNATURE**

`proc putAll*(builder: JObjectBuilder, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json object keys and values into the builder.*

*NOTE: if the provided node is not a valid json object it does nothing.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.putAll(%* { "test": 1, "hello": 2 })
  if b.len == 2:
    echo "it has two items!"
```

#### SET (NODE)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, node: JsonNode): JObjectBuilder`

**DESCRIPTION**

*Adds the specified json node with the specified name and returns the builder instance.*

*NOTE: this is the fluent version of put.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.set("test", newJString("hello")).len == 1:
    echo "it has an item!"
```

#### SET (BOOLEAN)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: bool): JObjectBuilder`

**DESCRIPTION**

*Adds the specified boolean value with the specified name and returns the builder instance.*

*NOTE: this is the fluent version of put.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.set("test", true).len == 1:
    echo "it has an item!"
```

#### SET (INTEGER)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: BiggestInt): JObjectBuilder`

**DESCRIPTION**

*Adds the specified integer value with the specified name and returns the builder instance.*

*NOTE: this is the fluent version of put.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.set("test", 123).len == 1:
    echo "it has an item!"
```

#### SET (FLOAT)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: float): JObjectBuilder`

**DESCRIPTION**

*Adds the specified float value with the specified name and returns the builder instance.*

*NOTE: this is the fluent version of put.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.set("test", 123.45).len == 1:
    echo "it has an item!"
```

#### SET (STRING)

**SIGNATURE**

`proc set*(builder: JObjectBuilder, name: string, value: string): JObjectBuilder`

**DESCRIPTION**

*Adds the specified string value with the specified name and returns the builder instance.*

*NOTE: this is the fluent version of put.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.set("test", "hello").len == 1:
    echo "it has an item!"
```

#### SETALL

**SIGNATURE**

`proc setAll*(builder: JObjectBuilder, node: JsonNode): JObjectBuilder`

**DESCRIPTION**

*Adds the specified json object keys and values into the builder and returns the builder instance.*

*NOTE: if the provided node is not a valid json object it does nothing. This is the fluent version of putAll.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  if b.setAll(%* { "test": 1, "hello": 2 }).len == 2:
    echo "it has two items!"
```

#### FIELD ACCESSOR (NODE)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, node: JsonNode)`

**DESCRIPTION**

*Adds the specified json node with the specified name.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b["test"] = newJString("hello")
  if b.len == 1:
    echo "it has an item!"
```

#### FIELD ACCESSOR (BOOLEAN)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: bool)`

**DESCRIPTION**

*Adds the specified boolean value with the specified name.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b["test"] = true
  if b.len == 1:
    echo "it has an item!"
```

#### FIELD ACCESSOR (INTEGER)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: BiggestInt)`

**DESCRIPTION**

*Adds the specified integer value with the specified name.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b["test"] = 123
  if b.len == 1:
    echo "it has an item!"
```

#### FIELD ACCESSOR (FLOAT)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: float)`

**DESCRIPTION**

*Adds the specified float value with the specified name.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b["test"] = 123.45
  if b.len == 1:
    echo "it has an item!"
```

#### FIELD ACCESSOR (STRING)

**SIGNATURE**

`proc `[]=`*(builder: JObjectBuilder, name: string, value: string)`

**DESCRIPTION**

*Adds the specified string value with the specified name.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b["test"] = "hello"
  if b.len == 1:
    echo "it has an item!"
```

#### GETASJOBJECT

**SIGNATURE**

`proc getAsJObject*(builder: JObjectBuilder): JsonNode`

**DESCRIPTION**

*Builds the resulting json object and returns it.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.set("test1", "hello").set("test2", 123).set("test3", true).set("test4", nil)["test5"] = 456.789
  if b.getAsJObject() == %* { "test1": "hello", "test2": 123, "test3": true, "test4": nil, "test5": 456.789 }:
    echo "got!"
```

#### GETASSTRING

**SIGNATURE**

`proc getAsString*(builder: JObjectBuilder): string`

**DESCRIPTION**

*Builds the resulting json object and returns it as its string representation.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.set("test1", "hello").set("test2", 123).set("test3", true).set("test4", nil)["test5"] = 456.789
  if b.getAsString() == """{"test1":"hello","test2":123,"test3":true,"test4":null,"test5":456.789}""":
    echo "got!"
```

#### GETASPRETTYSTRING

**SIGNATURE**

`proc getAsPrettyString*(builder: JObjectBuilder): string`

**DESCRIPTION**

*Builds the resulting json object and returns it as its prettily formatted string representation.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.set("test1", "hello").set("test2", 123).set("test3", true).set("test4", nil)["test5"] = 456.789
  if b.getAsPrettyString() == """{
    "test1": "hello",
    "test2": 123,
    "test3": true,
    "test4": null,
    "test5": 456.789
  }""":
    echo "got!"
```

#### GETASNAMEDJSONNODEORDEREDTABLE

**SIGNATURE**

`proc getAsNamedJsonNodeOrderedTable*(builder: JObjectBuilder): OrderedTable[string, JsonNode]`

**DESCRIPTION**

*Returns the object being built as a ordered table of named JsonNode items.*

**USAGE**

```nim
  let b = newJObjectBuilder()
  b.set("test1", "hello").set("test2", 123).set("test3", true).set("test4", nil)["test5"] = 456.789
  var t = initOrderedTable[string, JsonNode]()
  t.add("test1", newJString("hello"))
  t.add("test2", newJInt(123))
  t.add("test3", newJBool(true))
  t.add("test4", newJNull())
  t.add("test5", newJFloat(456.789))
  if b.getAsNamedJsonNodeOrderedTable() == t:
    echo "got!"
```

### JSONMODELERRORKIND

**SIGNATURE**

```nim
  type JsonModelErrorKind* = enum
    jmeNoError, jmeInvalidNode, jmeNotExists, jmeBadKind, jmeIsEmpty
```

**DESCRIPTION**

*This is the json model error kind type.*

### JSONMODELVALIDATIONRESULT

**SIGNATURE**

```nim
  type JsonModelValidationResult* = tuple[success: bool, errorField: string, errorKind: JsonModelErrorKind]
```

**DESCRIPTION**

*This is the json model validation result type.*

### JNODEKIND

**SIGNATURE**

```nim
  type JNodeKind = enum
    JsonAny, JsonBoolean, JsonInteger, JsonFloat, JsonString, JsonObject, JsonArray
```

**DESCRIPTION**

*This is the json model node kind type.*

### JSONMODELFIELDSDEFINITION

**SIGNATURE**

```nim
  type JsonModelFieldDefinition* = tuple[path: string, kind: JNodeKind, mandatory: bool, nonempty: bool]
```

**DESCRIPTION**

*This is the json model fields definition type.*

### JSONMODELFIELDSDEFINITIONS

**SIGNATURE**

```nim
  type JsonModelFieldsDefinitions* = seq[JsonModelFieldDefinition]
```

**DESCRIPTION**

*This is the json model fields definitions type.*

### JSONMODEL

**SIGNATURE**

```nim
type
  TJModel = object
    fields: JsonModelFieldsDefinitions
  JsonModel* = ref TJModel
```

**DESCRIPTION**

*This is the json model type.*
*Use it to validate json objects fields.*

#### NEWJSONMODEL

**SIGNATURE**

`proc newJsonModel*(): JsonModel`

**DESCRIPTION**

*Creates a new json model instance.*

**USAGE**

```nim
  let m = newJsonModel()
  if m != nil:
    echo "created!"
```

#### LEN

**SIGNATURE**

`proc len*(model: JsonModel): int`

**DESCRIPTION**

*Returns the number of registered fields in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.len == 0:
    echo "no items!"
```

#### CLEAR

**SIGNATURE**

`proc clear*(model: JsonModel)`

**DESCRIPTION**

*Clears the registered fields in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  # add some fields to m
  m.clear()
  if m.len == 0:
    echo "no items!"
```

#### RESET

**SIGNATURE**

`proc reset*(model: JsonModel): JsonModel`

**DESCRIPTION**

*Clears the registered fields in the provided json model and returns this instance back.*

**USAGE**

```nim
  let m = newJsonModel()
  # add some fields to m
  if m.reset().len == 0:
    echo "no items!"
```

#### DEFINEOPTIONALBOOLEAN

**SIGNATURE**

`proc defineOptionalBoolean*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional boolean field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalBoolean("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALINTEGER

**SIGNATURE**

`proc defineOptionalInteger*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional integer field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalInteger("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALFLOAT

**SIGNATURE**

`proc defineOptionalFloat*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional float field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalFloat("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALSTRING

**SIGNATURE**

`proc defineOptionalString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalString("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALNONEMPTYSTRING

**SIGNATURE**

`proc defineOptionalNonEmptyString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalNonEmptyString("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALOBJECT

**SIGNATURE**

`proc defineOptionalObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalObject("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALNONEMPTYOBJECT

**SIGNATURE**

`proc defineOptionalNonEmptyObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalNonEmptyObject("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALARRAY

**SIGNATURE**

`proc defineOptionalArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalArray("abc").len == 1:
    echo "registered!"
```

#### DEFINEOPTIONALNONEMPTYARRAY

**SIGNATURE**

`proc defineOptionalNonEmptyArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an optional non-empty array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineOptionalNonEmptyArray("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYUNTYPED

**SIGNATURE**

`proc defineMandatoryUntyped*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory untyped field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryUntyped("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYBOOLEAN

**SIGNATURE**

`proc defineMandatoryBoolean*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory boolean field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryBoolean("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYINTEGER

**SIGNATURE**

`proc defineMandatoryInteger*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory integer field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryInteger("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYFLOAT

**SIGNATURE**

`proc defineMandatoryFloat*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory float field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryFloat("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYSTRING

**SIGNATURE**

`proc defineMandatoryString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryString("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYNONEMPTYSTRING

**SIGNATURE**

`proc defineMandatoryNonEmptyString*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers an mandatory non-empty string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryNonEmptyString("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYOBJECT

**SIGNATURE**

`proc defineMandatoryObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryObject("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYNONEMPTYOBJECT

**SIGNATURE**

`proc defineMandatoryNonEmptyObject*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory non-empty object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryNonEmptyObject("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYARRAY

**SIGNATURE**

`proc defineMandatoryArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryArray("abc").len == 1:
    echo "registered!"
```

#### DEFINEMANDATORYNONEMPTYARRAY

**SIGNATURE**

`proc defineMandatoryNonEmptyArray*(model: JsonModel, path: string): JsonModel`

**DESCRIPTION**

*Fluently, registers a mandatory non-empty array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  if m.defineMandatoryNonEmptyArray("abc").len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALBOOLEAN

**SIGNATURE**

`proc registerOptionalBoolean*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional boolean field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalBoolean("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALINTEGER

**SIGNATURE**

`proc registerOptionalInteger*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional integer field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalInteger("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALFLOAT

**SIGNATURE**

`proc registerOptionalFloat*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional float field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalFloat("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALSTRING

**SIGNATURE**

`proc registerOptionalString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalString("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALNONEMPTYSTRING

**SIGNATURE**

`proc registerOptionalNonEmptyString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalNonEmptyString("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALOBJECT

**SIGNATURE**

`proc registerOptionalObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalObject("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALNONEMPTYOBJECT

**SIGNATURE**

`proc registerOptionalNonEmptyObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalNonEmptyObject("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALARRAY

**SIGNATURE**

`proc registerOptionalArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalArray("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTEROPTIONALNONEMPTYARRAY

**SIGNATURE**

`proc registerOptionalNonEmptyArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an optional non-empty array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerOptionalNonEmptyArray("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYUNTYPED

**SIGNATURE**

`proc registerMandatoryUntyped*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory untyped field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryUntyped("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYBOOLEAN

**SIGNATURE**

`proc registerMandatoryBoolean*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory boolean field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryBoolean("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYINTEGER

**SIGNATURE**

`proc registerMandatoryInteger*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory integer field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryInteger("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYFLOAT

**SIGNATURE**

`proc registerMandatoryFloat*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory float field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryFloat("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYSTRING

**SIGNATURE**

`proc registerMandatoryString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryString("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYNONEMPTYSTRING

**SIGNATURE**

`proc registerMandatoryNonEmptyString*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers an mandatory non-empty string field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryNonEmptyString("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYOBJECT

**SIGNATURE**

`proc registerMandatoryObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryObject("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYNONEMPTYOBJECT

**SIGNATURE**

`proc registerMandatoryNonEmptyObject*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory non-empty object field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryNonEmptyObject("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYARRAY

**SIGNATURE**

`proc registerMandatoryArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryArray("abc")
  if m.len == 1:
    echo "registered!"
```

#### REGISTERMANDATORYNONEMPTYARRAY

**SIGNATURE**

`proc registerMandatoryNonEmptyArray*(model: JsonModel, path: string)`

**DESCRIPTION**

*Registers a mandatory non-empty array field in the provided json model.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryNonEmptyArray("abc")
  if m.len == 1:
    echo "registered!"
```

#### SAVETOJARRAY

**SIGNATURE**

`proc saveToJArray*(model: JsonModel): JsonNode`

**DESCRIPTION**

*Gets the registered field definitions in the provided json model as json array.*

**USAGE**

```nim
  let m = newJsonModel()
  m.defineOptionalNonEmptyObject("d").defineOptionalInteger("d/x").registerMandatoryUntyped("e")
  let t = m.saveToJArray()
  if $t == """["optional nonempty object d","optional integer d/x","mandatory untyped e"]""":
    echo "saved!"
```

#### LOADFROMJARRAY

**SIGNATURE**

`proc loadFromJArray*(model: JsonModel, node: JsonNode)`

**DESCRIPTION**

*Adds the registered field definitions to the provided json model.*

*NOTE: it does not clears the precedent registered fields.*

**USAGE**

```nim
  let t = newJArray()
  t.add(newJString("optional nonempty object d"))
  t.add(newJString("optional integer d/x"))
  t.add(newJString("mandatory untyped e"))
  let m = newJsonModel()
  m.loadFromJArray(t)
  if $m.saveToJArray() == """["optional nonempty object d","optional integer d/x","mandatory untyped e"]""":
    echo "loaded!"
```

#### VALIDATE

**SIGNATURE**

`proc validate*(model: JsonModel, node: JsonNode): JsonModelValidationResult`

**DESCRIPTION**

*Validates the provided json node.*

**USAGE**

```nim
  let m = newJsonModel()
  m.registerMandatoryInteger("a")
  let v1 = m.validate(%* { "a": 123 })
  m.registerOptionalNonEmptyString("b")
  let v2 = m.validate(%* { "a": 123, "b": "hello" })
  if v1.success and v2.success:
    echo "also validated!"
  let v3 = m.validate(%* { "b": "hello" })
  if not v3.success and v3.errorKind != jmeNoError and v3.errorField != "":
    echo "not validated!"
```
