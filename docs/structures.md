# structures

This is the documentation of the structures related routines module of the Xam library.

## ROUTINES

### GETFIELDNAMES

**SIGNATURE**

`func getFieldNames*(t: tuple | object): seq[string]`

**DESCRIPTION**

*Returns an string sequence containing the names of the fields of the provided structure (tuple or object).*

**USAGE**

```nim
  let t = (hello: 123, abcd: "blah")
  echo t.getFieldNames() # @["hello", "abcd"]
```

### HASFIELD

**SIGNATURE**

`func hasField*(t: tuple | object, key: string): bool`

**DESCRIPTION**

*Determines if the provided structure (tuple or field) contains the specified field name.*

**USAGE**

```nim
  let t = (hello: 123)
  echo t.hasField("hello") # true
```

### HAVEFIELDS

**SIGNATURE**

`func haveFields*(st: tuple | object, names: varargs[string]): bool`

**DESCRIPTION**

*Determines if the provided structure (tuple or field) contains the specified field name.*

**USAGE**

```nim
  let t = (hello: 123, abcd: "blah", foo: "bar")
  echo t.haveFields("hello", "foo") # true
```
