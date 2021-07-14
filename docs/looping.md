# looping

This is the documentation of the looping related routines module of the Xam library.

## TEMPLATES

### FOREVER

**SIGNATURE**

`template forever*(code: untyped) {.used.}`

**DESCRIPTION**

*Repeats the provided code block.*
*The loop can be broken with the "break" keyword.*

*NOTE: inspired in Verilog's one.*

**USAGE**

```nim
  var l = 0
  forever:
    inc l
    if l == 10:
      break
  if l == 10:
    echo "looped!"
```

### TIMES

**SIGNATURE**

`template times*(amount: int, code: untyped) {.used.}`

**DESCRIPTION**

*Repeats the specified amount of times the provided code block.*
*The loop can be broken with the "break" keyword.*

*NOTE: inspired in Ruby's one.*

**USAGE**

```nim
  var l = 0
  10.times:
    inc l
  if l == 10:
    echo "looped!"
```

### EACH

**SIGNATURE**

`template each*(list, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided collection using the specified id and executing the provided code block.*

*NOTE: It uses the items iterator.*

**USAGE**

```nim
    var sq = newSeq[int]()
    [1,2,3].each(x):
      sq.add(x)
    if sq.len == 3:
      echo "the sequence has 3 elements"
```

### MEACH

**SIGNATURE**

`template meach*(list, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided collection using the specified id and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
    var a = [1,2,3]
    a.meach(x):
      if x == 3:
        x = 4
    if a[2] == 4:
      echo "modified!"
```

### EACH (JSON ARRAY)

**SIGNATURE**

`template each*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each item and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 123.newJInt
  a.add "hello world!".newJString
  a.add 456.newJInt
  a.each(x):
    if isJInt(x):
      echo x.getInt() # will show 123 the first time and 456 the second
    elif isJString(x):
      echo x.getStr() # will show "hello world!"
```

### MEACH (JSON ARRAY)

**SIGNATURE**

`template meach*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each item and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 1.newJInt
  a.add "test".newJString
  a.add 2.newJInt
  a.meach(x):
    if isJInt(x):
      x = newJInt(x.getInt() + 1)
  if a[0].getInt() == 2 and a[2].getInt() == 3:
    echo "modified!"
```

### EACHARRAY (JSON ARRAY)

**SIGNATURE**

`template eachArray*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json array items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  var a1 = newJArray()
  a1.add newJNull()
  a.add a1
  a.add newJNull()
  var a2 = newJArray()
  a2.add newJNull()
  a2.add newJNull()
  a.add a2
  var n = 0
  var m = 0
  a.eachArray(x):
    inc n
    if x.len == n:
      inc m
  if m == 2:
    echo "looped!"
```

### MEACHARRAY (JSON ARRAY)

**SIGNATURE**

`template meachArray*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json array items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add newJNull()
  var a1 = newJArray()
  a1.add newJNull()
  a.add a1
  a.add newJNull()
  var a2 = newJArray()
  a2.add newJNull()
  a2.add newJNull()
  a.add a2
  a.meachArray(x):
    var y = copy(x)
    y.add newJNull()
    x = y
  if a[1].len == 2 and a[3].len == 3:
    echo "modified!"
```

### EACHOBJECT (JSON ARRAY)

**SIGNATURE**

`template eachObject*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json object items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add newJNull()
  var o1 = newJObject()
  o1["name"] = "object".newJString
  a.add o1
  a.add newJNull()
  var o2 = newJObject()
  o2["name"] = "object".newJString
  a.add o2
  var n = 0
  a.eachObject(x):
    if x["name"].getStr() == "object":
      inc n
  if n == 2:
    echo "looped!"
```

### MEACHOBJECT (JSON ARRAY)

**SIGNATURE**

`template meachObject*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json object items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add newJNull()
  var o1 = newJObject()
  o1["name"] = "object".newJString
  a.add o1
  a.add newJNull()
  var o2 = newJObject()
  o2["name"] = "object".newJString
  a.add o2
  a.meachObject(x):
    var y = newJObject()
    y["name"] = newJString(x["name"].getStr() & "!")
    x = y
  if a[1]["name"].getStr() == "object!" and a[3]["name"].getStr() == "object!":
    echo "modified!"
```

### EACHSTRING (JSON ARRAY)

**SIGNATURE**

`template eachString*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json string items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 1.newJInt
  a.add "hello ".newJString
  a.add 2.newJInt
  a.add "world!".newJString
  var z = ""
  a.eachString(x):
    z &= x.getStr()
  if z == "hello world!":
    echo "looped!"
```

### MEACHSTRING (JSON ARRAY)

**SIGNATURE**

`template meachString*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json string items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 1.newJInt
  a.add "test".newJString
  a.add 2.newJInt
  a.add "testing".newJString
  a.meachString(x):
    x = newJString(x.getStr() & "!")
  if a[1].getStr() == "test!" and a[3].getStr() == "testing!":
    echo "modified!"
```

### EACHBOOL (JSON ARRAY)

**SIGNATURE**

`template eachBool*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json boolean items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add true.newJBool
  a.add "test".newJString
  a.add false.newJBool
  a.add "testing".newJString
  var z = 0
  a.eachBool(x):
    if x.getBool():
      inc z
  if z == 1:
    echo "looped!"
```

### MEACHBOOL (JSON ARRAY)

**SIGNATURE**

`template meachBool*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json boolean items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add true.newJBool
  a.add "test".newJString
  a.add false.newJBool
  a.add "testing".newJString
  a.meachBool(x):
    x = newJBool(not x.getBool())
  if a[0].getBool() == false and a[2].getBool() == true:
    echo "modified!"
```

### EACHINT (JSON ARRAY)

**SIGNATURE**

`template eachInt*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json integer items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 1.newJInt
  a.add "test".newJString
  a.add 2.newJInt
  a.add "testing".newJString
  var z = 0
  a.eachInt(x):
    z += x.getInt()
  if z == 3:
    echo "looped!"
```

### MEACHINT (JSON ARRAY)

**SIGNATURE**

`template meachInt*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json integer items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add 1.newJInt
  a.add "test".newJString
  a.add 2.newJInt
  a.meachInt(x):
    x = newJInt(x.getInt() + 1)
  if a[0].getInt() == 2 and a[2].getInt() == 3:
    echo "modified!"
```

### EACHFLOAT (JSON ARRAY)

**SIGNATURE**

`template eachFloat*(jarray: JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json float items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the read-only items iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add newJFloat(1.1)
  a.add "test".newJString
  a.add newJFloat(2.2)
  var z = 0.0
  a.eachFloat(x):
    z += x.getFloat()
  if z == 3.3:
    echo "looped!"
```

### MEACHFLOAT (JSON ARRAY)

**SIGNATURE**

`template meachFloat*(jarray: var JsonNode, id, code: untyped) {.used.}`

**DESCRIPTION**

*This template loops the provided json array using the specified id for each json float items (items of other types are ignored) and executing the provided code block.*

*NOTE: It uses the mitems iterator.*

**USAGE**

```nim
  var a = newJArray()
  a.add newJFloat(1.1)
  a.add "test".newJString
  a.add newJFloat(2.2)
  a.meachFloat(x):
    x = newJFloat(x.getFloat() + 1.0)
  if a[0].getFloat() == 2.1 and a[2].getFloat() == 3.2:
    echo "modified!"
```
