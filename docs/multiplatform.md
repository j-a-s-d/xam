# multiplatform

This is the documentation of the multiplatform aliases (only harmless ones) module of the Xam library.

> This multiplatform aliases are intended to help in the process of migrating code from other languages. Besides being harmless in nature (some aliases are not even value equivalent, but will let your code be easily adapted), are not meant to be used in a regular basis. Be wise and translate all the code you are testing for migration asap.

## REEXPORTS

### ES6-LIKE FAT ARROW

**SIGNATURE**

`export =>`

**DESCRIPTION**

*ES6-like fat arrow functions*

## TYPES

### JAVA/C#-LIKE BYTE

**SIGNATURE**

`type byte* = uint8`

**DESCRIPTION**

*Java/C#-like "uint8 type"-like alias*

### C#-LIKE BYTE

**SIGNATURE**

`type sbyte* = int8`

**DESCRIPTION**

*C#-like "int8 type"-like signed byte alias*

### JAVA/PASCAL-LIKE BOOLEAN

**SIGNATURE**

`type boolean* = bool`

**DESCRIPTION**

*Java/Pascal-like "bool type"-like alias*

### PASCAL-LIKE INTEGER

**SIGNATURE**

`type integer* = int`

**DESCRIPTION**

*Pascal-like "int type"-like alias*

### PASCAL-LIKE REAL

**SIGNATURE**

`type real* = float`

**DESCRIPTION**

*Pascal-like "float type"-like alias*

## CONSTANTS

### JAVA/C#-LIKE NIL

**SIGNATURE**

`const NULL* = nil`

**DESCRIPTION**

*Java/C#-like "nil constant"-like alias*

### CPP-LIKE NIL

**SIGNATURE**

`const nullptr* = nil`

**DESCRIPTION**

*Cpp-like "nil constant"-like alias*

### VB.NET-LIKE NIL

**SIGNATURE**

`const Nothing* = nil`

**DESCRIPTION**

*VB.NET-like "nil constant"-like alias*

### PYTHON-LIKE NIL

**SIGNATURE**

`const None* = nil`

**DESCRIPTION**

*Python-like "nil constant"-like alias*

## OUTPUT ALIASES

### FORTRAN/PYTHON/LUA-LIKE TEXT OUTPUT

**SIGNATURE**

`template print*(s: varargs[string])`

**DESCRIPTION**

*Fortran/Python/Lua-like text output alias*

### JAVA/ARDUINO/KOTLIN/GO-LIKE LINE OUTPUT

**SIGNATURE**

`template println*(s: varargs[string])`

**DESCRIPTION**

*Java/Arduino/Kotlin/Go-like line output alias*

### PASCAL/D/DART-LIKE LINE OUTPUT

**SIGNATURE**

`template writeln*(s: varargs[string])`

**DESCRIPTION**

*Pascal/D/Dart-like line output alias*

### HASKELL-LIKE TEXT OUTPUT

**SIGNATURE**

`template putstr*(s: varargs[string])`

**DESCRIPTION**

*Haskell-like text output alias*

### HASKELL-LIKE LINE OUTPUT

**SIGNATURE**

`template putstrln*(s: varargs[string])`

**DESCRIPTION**

*Haskell-like line output alias*

### RACKET-LIKE TEXT OUTPUT

**SIGNATURE**

`template display*(s: varargs[string])`

**DESCRIPTION**

*Racket-like text output alias*

### RACKET-LIKE LINE OUTPUT

**SIGNATURE**

`template displayln*(s: varargs[string])`

**DESCRIPTION**

*Racket-like line output alias*

### C/RUBY-LIKE LINE OUTPUT

**SIGNATURE**

`template puts*(s: varargs[string])`

**DESCRIPTION**

*C/Ruby-like line output alias*

### APPLESCRIPT/SCRATCH-LIKE LINE OUTPUT

**SIGNATURE**

`template say*(s: varargs[string])`

**DESCRIPTION**

*AppleScript/Scratch-like line output alias*

### EXIT VALUES

- `const EXIT_SUCCESS*: int`
- `const EXIT_FAILURE*: int`

## EXIT ROUTINES

### PASCAL-LIKE HALT

**SIGNATURE**

`proc halt*(errorCode: int = EXIT_SUCCESS)`

*Exits with the specified error code (omittion defaults to 0).*

*NOTE: inspired in Pascal's one.*

### PASCAL-LIKE EXIT

**SIGNATURE**

`proc exit*(errorCode: int)`

**DESCRIPTION**

*Exits with the specified error code.*

*NOTE: inspired in Pascal's one.*

### RUBY-LIKE EXIT

**SIGNATURE**

`proc exit*(success: bool = true)`

**DESCRIPTION**

*Exits with the specified success value (omittion defaults to true).*

*NOTE: inspired in Ruby's one.*

### PHP-LIKE DIE

**SIGNATURE**

`proc die*(errorMessage: string, errorCode: int = EXIT_SUCCESS)`

**DESCRIPTION**

*Exits with the specified error message and with an optional custom error code (omittion defaults to 0).*

*NOTE: inspired in PHP's one.*

## TEMPLATES

### INTROSPECTION

### GETCURRENTPROCNAME

**SIGNATURE**

`template getCurrentProcName*: string {.used.}`

**DESCRIPTION**

*NOTE: this is a modified version of "procName" present at https://github.com/nim-lang/Nim/issues/8212#issuecomment-657202258*

### CPP-LIKE FUNCTION_NAME

**SIGNATURE**

`template function_name*: string {.used.}`

**DESCRIPTION**

*Cpp's std::source_location function template*

### JAVASCRIPT-LIKE CALLEE

**SIGNATURE**

`template callee*: string {.used.}`

**DESCRIPTION**

*Javascript's argument variable object property template*

### JAVA-LIKE GETMETHODNAME

**SIGNATURE**

`template getMethodName*: string {.used.}`

**DESCRIPTION**

*Java's Thread.currentThread().getStackTrace() element function template*

### KOTLIN/GROOVY-LIKE METHODNAME

**SIGNATURE**

`template methodName*: string {.used.}`

**DESCRIPTION**

*Kotlin/Groovy's Thread.currentThread().stackTrace element function template*

### ERLANG-LIKE FUNCTION_NAME

**SIGNATURE**

`template ?FUNCTION_NAME*: string {.used.}`

**DESCRIPTION**

*Erlang's ?FUNCTION_NAME preprocessor-macro template*

*NOTE: it has to be called with backticks*

### OPERATORS

### GO-LIKE VARIABLE DECLARATION & PASCAL-LIKE VARIABLE ASSIGNATION

**SIGNATURE**

`template :=*(name, value: untyped): untyped {.used.}`

**DESCRIPTION**

*Golang-like shorthand variable declaration & Pascal-like variable assignation*

### C/CPP-LIKE AND ASSIGN

**SIGNATURE**

`template &=*(a, b: bool): untyped {.used.}`

**DESCRIPTION**

*C/Cpp-like and-assign operator*

### C/CPP-LIKE OR ASSIGN

**SIGNATURE**

`template |=*(a, b: bool): untyped {.used.}`

**DESCRIPTION**

*C/Cpp-like or-assign operator*

### C/CPP-LIKE AND OPERATOR

**SIGNATURE**

`template &&*(a, b: bool): bool {.used.}`

**DESCRIPTION**

*C/Cpp-like and logical operator*

### C/CPP-LIKE OR OPERATOR

**SIGNATURE**

`template ||*(a, b: bool): bool {.used.}`

**DESCRIPTION**

*C/Cpp-like or logical operator*

### C/CPP-LIKE NOT OPERATOR

**SIGNATURE**

`template !*(a: bool): bool {.used.}`

**DESCRIPTION**

*C/Cpp-like not logical operator*

### C/PASCAL/BASIC-LIKE STRING CONCAT

**SIGNATURE**

`template +(x, y: string): string {.used.}`

**DESCRIPTION**

*C/Pascal/Basic-like string concatenation*

### C/JAVASCRIPT/SWIFT/POWERSHELL-LIKE NULL COALESCING OPERATOR

**SIGNATURE**

`template `??`*[T](left: T, right: T): T {.used.}`

**DESCRIPTION**

*C#/Javascript/Swift/PowerShell/etc-like null coalescing operator*

*NOTE: same approach as in https://github.com/piedar/coalesce*

## COMMENTS

> see https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Inline_comments

### C/CPP/JAVA-LIKE COMMENT

**SIGNATURE**

`template //*(something: untyped) {.used.}`

**DESCRIPTION**

*C/Cpp/Java-like line comment*

### ADA/HASKELL/LUA-LIKE COMMENT

**SIGNATURE**

`template --*(something: untyped) {.used.}`

**DESCRIPTION**

*Ada/Haskell/Lua-like line comment*

### BASIC/BATCH-LIKE COMMENT

**SIGNATURE**

`template REM*(something: untyped) {.used.}`

**DESCRIPTION**

*Basic/Batch-like line comment*

### FORTRAN-LIKE COMMENT

**SIGNATURE**

`template !*(something: untyped) {.used.}`

**DESCRIPTION**

*Fortran-like line comment*

### FORTH-LIKE COMMENT

**SIGNATURE**

`template \*(something: untyped) {.used.}`

**DESCRIPTION**

*Forth-like line comment*

### KEYWORDS

### PYTHON/BOO/GDSCRIPT-LIKE PASS

**SIGNATURE**

`template pass* {.used.}`
`template pass*(something: untyped = nil): untyped {.used.}`

**DESCRIPTION**

*Python/Boo/GDScript-like discard aliases*

### RUBY-LIKE UNLESS

**SIGNATURE**

`template unless*(expr, body: untyped): untyped {.used.}`

**DESCRIPTION**

*Ruby unless-like alias*

### ZIG-LIKE UNREACHABLE

**SIGNATURE**

`template unreachable*() {.used.}`

**DESCRIPTION**

*Zig unreachable-like code marker alias*

*NOTE: when not compiled with the option --threads:on it will show thread 0 as the origin.*

### SWIFT-LIKE TYPEALIAS

**SIGNATURE**

`template typealias*(X, Y) {.used.}`

**DESCRIPTION**

*Swift typealias-like alias*

*NOTE: the generated type will be public.*

### PASCAL-LIKE DEPRECATED

**SIGNATURE**

`template deprecated* {.used.}`

**DESCRIPTION**

*Pascal deprecated-like alias*

### PASCAL-LIKE EXPERIMENTAL

**SIGNATURE**

`template experimental* {.used.}`

**DESCRIPTION**

*Pascal experimental-like alias*

### PASCAL-LIKE PLATFORM

**SIGNATURE**

`template platform* {.used.}`

**DESCRIPTION**

*Pascal platform-like alias*

### PASCAL-LIKE UNIMPLEMENTED

**SIGNATURE**

`template unimplemented* {.used.}`

**DESCRIPTION**

*Pascal unimplemented-like alias*

### STRINGS

### PASCAL/C#-LIKE LENGTH

**SIGNATURE**

`template length*(s: string): int {.used.}`

**DESCRIPTION**

*Pascal/C#-like len alias*

### PASCAL/C#-LIKE POS

**SIGNATURE**

`proc pos*(s, sub: string, offset: int = 0): int {.used.}`

**DESCRIPTION**

*Pascal/C#-like find alias*

### JAVASCRIPT-LIKE INDEXOF

**SIGNATURE**

`proc indexOf*(s, sub: string, fromIndex: int = 0): int {.used.}`

**DESCRIPTION**

*Javascript-like find alias*

### PASCAL/C#/JAVASCRIPT-LIKE TRIM

**SIGNATURE**

`proc trim*(s: string): string {.used.}`

**DESCRIPTION**

*Pascal/C#/Javascript/etc-like strip alias*

### PASCAL/JAVASCRIPT-LIKE TRIMLEFT

**SIGNATURE**

`proc trimLeft*(s: string): string {.used.}`

**DESCRIPTION**

*Pascal/Javascript/etc-like stripLeft alias*

### PASCAL/JAVASCRIPT-LIKE TRIMRIGHT

**SIGNATURE**

`proc trimRight*(s: string): string {.used.}`

**DESCRIPTION**

*Pascal/Javascript/etc-like stripRight alias*

### C#/JAVASCRIPT-LIKE TRIMSTART

**SIGNATURE**

`proc trimStart*(s: string): string {.used.}`

**DESCRIPTION**

*C#/Javascript/etc-like stripLeft alias*

### C#/JAVASCRIPT-LIKE TRIMEND

**SIGNATURE**

`proc trimEnd*(s: string): string {.used.}`

**DESCRIPTION**

*C#/Javascript/etc-like stripRight alias*

### PASCAL-LIKE SPLITSTRING

**SIGNATURE**

`proc splitString*(s, delimiter: string): string {.used.}`

**DESCRIPTION**

*Pascal-like splitString alias*

### MEMORY

### DELPHI/CPPBUILDER/FPC-LIKE FREEANDNIL

**SIGNATURE**

`template freeAndNil*[T](obj: var T) {.used.}`

**DESCRIPTION**

*Delphi/CppBuilder/FPC-like FreeAndNil alias*

### ARGUMENTS

### C/CPP-LIKE ARGC

**SIGNATURE**

`template argc*: int {.used.}`

**DESCRIPTION**

*C/CPP/etc-like argc arguments count alias*

### C/CPP-LIKE ARGV

**SIGNATURE**

`type TArgv = ref object`
`let argv* {.used.}: TArgv = nil`
`template `[]`*(a: TArgv, i: int): string {.used.}`

**DESCRIPTION**

*C/CPP/etc-like argc arguments vector alias*

### CONVERTERS

### JAVASCRIPT/PHP/C#/JAVA-LIKE INTEGER TO STRING

**SIGNATURE**

`converter integerToString*(x: SomeInteger): string {.used.}`

**DESCRIPTION**

*Javascript/PHP/C#/Java/etc-like integer to string converter*

### JAVASCRIPT/PHP/C#/JAVA-LIKE FLOAT TO STRING

**SIGNATURE**

`converter floatToString*(x: SomeFloat): string {.used.}`

**DESCRIPTION**

*Javascript/PHP/C#/Java/etc-like float to string converter*

### C/CPP/JAVASCRIPT/PHP-LIKE NUMBER TO BOOLEAN

**SIGNATURE**

`converter numberToBoolean*(x: SomeNumber): bool {.used.}`

**DESCRIPTION**

*C/Cpp/Javascript/PHP/etc-like number to boolean converter*

*NOTE: this is more idomatic than the 'x != 0' present at https://nim-lang.org/docs/manual.html#converters*

### C/CPP/JAVASCRIPT/PHP-LIKE BOOLEAN TO INTEGER

**SIGNATURE**

`converter booleanToInteger*(b: bool): int {.used.}`

**DESCRIPTION**

*C/Cpp/Javascript/PHP/etc-like boolean to integer converter*

### C/CPP/JAVASCRIPT/PHP-LIKE BOOLEAN TO FLOAT

**SIGNATURE**

`converter booleanToFloat*(b: bool): float {.used.}`

**DESCRIPTION**

*C/Cpp/Javascript/PHP/etc-like boolean to float converter*
