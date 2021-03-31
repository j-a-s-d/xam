# semanticversion

This is the documentation of the semantic version object module of the Xam library.

> this is inspired in the Java Ace Toolkit's SemanticVersion class following what is specified at http://semver.org/

## TYPES

### SEMANTICVERSION

**SIGNATURE**

```nim
  type TSemanticVersion = object
    major: int
    minor: int
    patch: int
  SemanticVersion* = ref TSemanticVersion
```

**DESCRIPTION**

*This is the semantic version type which contains the version information.*

#### NEWSEMANTICVERSION (INTEGERS)

**SIGNATURE**

`proc newSemanticVersion*(maj: int = DEFAULT_MAJOR, min: int = DEFAULT_MINOR, pat: int = DEFAULT_PATCH): SemanticVersion`

**DESCRIPTION**

*Makes a new semantic version object instance from the passed integer values.*

**USAGE**

```nim
  let sv = newSemanticVersion(3, 2, 1)
```

#### NEWSEMANTICVERSION (STRING)

**SIGNATURE**

`proc newSemanticVersion*(value: string): SemanticVersion`

**DESCRIPTION**

*Makes a new semantic version object instance from the passed string value.*

*NOTE: it returns the semantic version object instance created from the passed string value or an instance equivalent to "0.0.0" if it fails to convert the passed string.*

**USAGE**

```nim
  let sv = newSemanticVersion("3.2.1")
```

#### GETMAJOR

**SIGNATURE**

`proc getMajor*(sv: SemanticVersion): int {.inline.}`

**DESCRIPTION**

*Returns the major version number of the current semantic version.*

**USAGE**

```nim
  let sv = newSemanticVersion("3.2.1")
  echo sv.getMajor() # 3
```

#### GETMINOR

**SIGNATURE**

`proc getMinor*(sv: SemanticVersion): int {.inline.}`

**DESCRIPTION**

*Returns the minor version number of the current semantic version.*

**USAGE**

```nim
  let sv = newSemanticVersion("3.2.1")
  echo sv.getMajor() # 2
```

#### GETPATCH

**SIGNATURE**

`proc getPatch*(sv: SemanticVersion): int {.inline.}`

**DESCRIPTION**

*Returns the patch version number of the current semantic version.*

**USAGE**

```nim
  let sv = newSemanticVersion("3.2.1")
  echo sv.getMajor() # 1
```

#### $ (TOSTRING)

**SIGNATURE**

`proc ``$``*(sv: SemanticVersion): string {.inline.}`

**DESCRIPTION**

*Returns the string representation of the current semantic version.*

**USAGE**

```nim
  let sv = newSemanticVersion(3, 2, 1)
  echo $sv # 3.2.1
```

#### EQUALSTO

**SIGNATURE**

`proc equalsTo*(sv, other: SemanticVersion): bool`

**DESCRIPTION**

*Compares the first semantic version against the second and returns true if they are equal.*

**USAGE**

```nim
  let sv1 = newSemanticVersion(3, 2, 1)
  let sv2 = newSemanticVersion("3.2.1")
  if sv1.isEqualTo(sv2):
    echo "the versions are equal"
```

#### ISNEWERTHAN

**SIGNATURE**

`proc isNewerThan*(sv, other: SemanticVersion): bool`

**DESCRIPTION**

*Compares the first semantic version against the second and returns true if it is newer.*

**USAGE**

```nim
  let sv1 = newSemanticVersion(3, 2, 2)
  let sv2 = newSemanticVersion("3.2.1")
  if sv1.isNewerThan(sv2):
    echo "the version supplied version is newer"
```

#### ISOLDERTHAN

**SIGNATURE**

`proc isOlderThan*(sv, other: SemanticVersion): bool`

**DESCRIPTION**

*Compares the first semantic version against the second and returns true if it is older.*

**USAGE**

```nim
  let sv1 = newSemanticVersion(3, 2, 0)
  let sv2 = newSemanticVersion("3.2.1")
  if sv1.isOlderThan(sv2):
    echo "the version supplied version is older"
```
