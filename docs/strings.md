# strings

This is the documentation of the strings related constants and routines module of the Xam library.

## CONSTANTS

### SPECIAL

- `const STRINGS_EMPTY*: string`
- `const STRINGS_EOL*: string`
- `const STRINGS_TAB*: string`
- `const STRINGS_LF*: string`
- `const STRINGS_CR*: string`
- `const STRINGS_SPACE*: string`

### SYMBOLS

- `const STRINGS_EQUAL*: string`
- `const STRINGS_NUMERAL*: string`
- `const STRINGS_PIPE*: string`
- `const STRINGS_MINUS*: string`
- `const STRINGS_PLUS*: string`
- `const STRINGS_PERCENT*: string`
- `const STRINGS_DOLLAR*: string`
- `const STRINGS_SLASH*: string`
- `const STRINGS_BACKSLASH*: string`
- `const STRINGS_AMPERSAND*: string`
- `const STRINGS_ASTERISK*: string`
- `const STRINGS_UNDERSCORE*: string`
- `const STRINGS_COLON*: string`
- `const STRINGS_SEMICOLON*: string`
- `const STRINGS_COMMA*: string`
- `const STRINGS_PERIOD*: string`
- `const STRINGS_APOSTROPHE*: string`
- `const STRINGS_QUOTE*: string`
- `const STRINGS_CARET*: string`
- `const STRINGS_TILDE*: string`
- `const STRINGS_AT*: string`
- `const STRINGS_EXCLAMATION*: string`
- `const STRINGS_QUESTION*: string`
- `const STRINGS_INVERTED_EXCLAMATION*: string`
- `const STRINGS_INVERTED_QUESTION*: string`
- `const STRINGS_DEGREE*: string`
- `const STRINGS_COPYRIGHT*: string`
- `const STRINGS_REGISTERED*: string`
- `const STRINGS_TRADEMARK*: string`
- `const STRINGS_BULLET*: string`
- `const STRINGS_PILCROW*: string`
- `const STRINGS_SECTION*: string`
- `const STRINGS_MINOR*: string`
- `const STRINGS_MAJOR*: string`
- `const STRINGS_BRACES_OPEN*: string`
- `const STRINGS_BRACES_CLOSE*: string`
- `const STRINGS_BRACKETS_OPEN*: string`
- `const STRINGS_BRACKETS_CLOSE*: string`
- `const STRINGS_PARENTHESES_OPEN*: string`
- `const STRINGS_PARENTHESES_CLOSE*: string`
  
### NUMBERS

- `const STRINGS_NUMBER_ZERO*: string`
- `const STRINGS_NUMBER_ONE*: string`
- `const STRINGS_NUMBER_TWO*: string`
- `const STRINGS_NUMBER_THREE*: string`
- `const STRINGS_NUMBER_FOUR*: string`
- `const STRINGS_NUMBER_FIVE*: string`
- `const STRINGS_NUMBER_SIX*: string`
- `const STRINGS_NUMBER_SEVEN*: string`
- `const STRINGS_NUMBER_EIGHT*: string`
- `const STRINGS_NUMBER_NINE*: string`
  
### UPPERCASE LETTERS

- `const STRINGS_UPPERCASE_A*: string`
- `const STRINGS_UPPERCASE_B*: string`
- `const STRINGS_UPPERCASE_C*: string`
- `const STRINGS_UPPERCASE_D*: string`
- `const STRINGS_UPPERCASE_E*: string`
- `const STRINGS_UPPERCASE_F*: string`
- `const STRINGS_UPPERCASE_G*: string`
- `const STRINGS_UPPERCASE_H*: string`
- `const STRINGS_UPPERCASE_I*: string`
- `const STRINGS_UPPERCASE_J*: string`
- `const STRINGS_UPPERCASE_K*: string`
- `const STRINGS_UPPERCASE_L*: string`
- `const STRINGS_UPPERCASE_M*: string`
- `const STRINGS_UPPERCASE_N*: string`
- `const STRINGS_UPPERCASE_O*: string`
- `const STRINGS_UPPERCASE_P*: string`
- `const STRINGS_UPPERCASE_Q*: string`
- `const STRINGS_UPPERCASE_R*: string`
- `const STRINGS_UPPERCASE_S*: string`
- `const STRINGS_UPPERCASE_T*: string`
- `const STRINGS_UPPERCASE_U*: string`
- `const STRINGS_UPPERCASE_V*: string`
- `const STRINGS_UPPERCASE_W*: string`
- `const STRINGS_UPPERCASE_X*: string`
- `const STRINGS_UPPERCASE_Y*: string`
- `const STRINGS_UPPERCASE_Z*: string`

### LOWERCASE LETTERS

- `const STRINGS_LOWERCASE_A*: string`
- `const STRINGS_LOWERCASE_B*: string`
- `const STRINGS_LOWERCASE_C*: string`
- `const STRINGS_LOWERCASE_D*: string`
- `const STRINGS_LOWERCASE_E*: string`
- `const STRINGS_LOWERCASE_F*: string`
- `const STRINGS_LOWERCASE_G*: string`
- `const STRINGS_LOWERCASE_H*: string`
- `const STRINGS_LOWERCASE_I*: string`
- `const STRINGS_LOWERCASE_J*: string`
- `const STRINGS_LOWERCASE_K*: string`
- `const STRINGS_LOWERCASE_L*: string`
- `const STRINGS_LOWERCASE_M*: string`
- `const STRINGS_LOWERCASE_N*: string`
- `const STRINGS_LOWERCASE_O*: string`
- `const STRINGS_LOWERCASE_P*: string`
- `const STRINGS_LOWERCASE_Q*: string`
- `const STRINGS_LOWERCASE_R*: string`
- `const STRINGS_LOWERCASE_S*: string`
- `const STRINGS_LOWERCASE_T*: string`
- `const STRINGS_LOWERCASE_U*: string`
- `const STRINGS_LOWERCASE_V*: string`
- `const STRINGS_LOWERCASE_W*: string`
- `const STRINGS_LOWERCASE_X*: string`
- `const STRINGS_LOWERCASE_Y*: string`
- `const STRINGS_LOWERCASE_Z*: string`

## ROUTINES

### CONCAT

**SIGNATURE**
`func concat*(strings: varargs[string]): string {.inline.}`

**DESCRIPTION**
*Concatenates the specified string values.*

**USAGE**
```nim
  if concat("a", "b", "c") == "abc":
    echo "concatenated!"
```

### ENCLOSE (WITH CHAR)

**SIGNATURE**
`func enclose*(s: string, chr: char): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between the specified borders char.*

**USAGE**
```nim
  if enclose("text", '|') == "|text|":
    echo "enclosed!"
```

### ENCLOSE (WITH STRING)

**SIGNATURE**
`func enclose*(s: string, borders: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between the specified borders string.*

**USAGE**
```nim
  if enclose("text", "|") == "|text|":
    echo "enclosed!"
```

### APOSTROPHE

**SIGNATURE**
`func apostrophe*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between apostrophes.*

**USAGE**
```nim
  if apostrophe("hello") == "'hello'":
    echo "apostrophed!"
```

### QUOTE

**SIGNATURE**
`func quote*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between quotes.*

**USAGE**
```nim
  if quote("hello") == "\"hello\"":
    echo "quoted!"
```

### BRACE

**SIGNATURE**
`func brace*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between braces.*

**USAGE**
```nim
  if brace("hello") == "{hello}":
    echo "braced!"
```

### BRACKETIZE

**SIGNATURE**
`func bracketize*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between brackets.*

**USAGE**
```nim
  if bracketize("hello") == "[hello]":
    echo "bracketized!"
```

### PARENTHESIZE

**SIGNATURE**
`func parenthesize*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between parenthesis.*

**USAGE**
```nim
  if parenthesize("hello") == "(hello)":
    echo "parenthesized!"
```

### CHEVRONIZE

**SIGNATURE**
`func chevronize*(s: string): string {.inline.}`

**DESCRIPTION**
*Encloses the specified string between chevrons.*

**USAGE**
```nim
  if chevronize("hello") == "<hello>":
    echo "chevronized!"
```

### HASCONTENT

**SIGNATURE**
`func hasContent*(s: string): bool {.inline.}`

**DESCRIPTION**
*Determines if the specified string is not empty.*

**USAGE**
```nim
  if not hasContent(""):
    echo "it does not has text!"
```

### HAVECONTENT

**SIGNATURE**
`func haveContent*(strings: varargs[string]): bool {.inline.}`

**DESCRIPTION**
*Determines if the specified strings are not empty.*

**USAGE**
```nim
  if not haveContent("1", "22", ""):
    echo "at least one of them does not have content!"
```

### HASTEXT

**SIGNATURE**
`func hasText*(s: string): bool {.inline.}`

**DESCRIPTION**
*Determines if the specified strings have text.*
*NOTE: white space is ignored.*

**USAGE**
```nim
  if not hasText(" "):
    echo "it does not has text!"
```

### HAVETEXT

**SIGNATURE**
`func haveText*(strings: varargs[string]): bool {.inline.}`

**DESCRIPTION**
*Determines if the specified strings have text.*
*NOTE: white space is ignored.*

**USAGE**
```nim
  if not haveText("1", "22", " "):
    echo "at least one of them does not have text!"
```

### LEFTCOUNT

**SIGNATURE**
`func leftCount*(s: string, sub: char): int {.inline.}`

**DESCRIPTION**
*Count the occurrences of the character `sub` in the left size (head) of the string `s`.*
*NOTE: specialized version of the strutils.count.*

**USAGE**
```nim
  if leftCount("00123", '0') == 2:
    echo "counted!"
```

### RIGHTCOUNT

**SIGNATURE**
`func rightCount*(s: string, sub: char): int {.inline.}`

**DESCRIPTION**
*Count the occurrences of the character `sub` in the right side (trail) of the string `s`.*
*NOTE: specialized version of the strutils.count.*

**USAGE**
```nim
  if rightCount("12300", '0') == 2:
    echo "counted!"
```

### DROPLEFT

**SIGNATURE**
`func dropLeft*(s: string, amount: int): string {.inline.}`

**DESCRIPTION**
*Drops the specified `amount` of characters from the left side (head) of the string `s`.*

**USAGE**
```nim
  if dropLeft("12345", 1) == "2345":
    echo "dropped!"
```

### DROPRIGHT

**SIGNATURE**
`func dropRight*(s: string, amount: int): string {.inline.}`

**DESCRIPTION**
*Drops the specified `amount` of characters from the right side (trail) of the string `s`.*

**USAGE**
```nim
  if dropRight("12345", 1) == "1234":
    echo "dropped!"
```

### DROPBOTH

**SIGNATURE**
`func dropBoth*(s: string, amount: int): string {.inline.}`

**DESCRIPTION**
*Drops the specified `amount` of characters from the both sides (head and trail) of the string `s`.*

**USAGE**
```nim
  if dropBoth("12345", 1) == "234":
    echo "dropped!"
```

### ISNUMERICSTRING

**SIGNATURE**
`proc isNumericString*(s: string, additional: set[char] = {}, leading: set[char] = {}): bool`

**DESCRIPTION**
*Determines if the specified string is numeric.*
*NOTE: it allows an optional set of chars to be tested (useful to add math symbols for example).*

**USAGE**
```nim
  if isNumericString("-123.45", {',', '.'}, {'+', '-'}):
    echo "it is a numeric string"
```

### ISALPHANUMERICSTRING

**SIGNATURE**
`proc isAlphaNumericString*(s: string, additional: set[char] = {}, leading: set[char] = {}): bool`

**DESCRIPTION**
*Determines if the specified string is alphanumeric.*
*NOTE: it allows an optional set of chars to be tested (useful to add math symbols for example).*

**USAGE**
```nim
  if isAlphaNumericString("+12345,A.BC", {',', '.'}, {'+', '-'}):
    echo "it is an alpha numeric string"
```
