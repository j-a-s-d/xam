# maths

This is the documentation of the math related constants and routines module of the Xam library.

## CONSTANTS

### DIGITS

- `const F0*: float`
- `const F1*: float`
- `const F2*: float`
- `const F3*: float`
- `const F4*: float`
- `const F5*: float`
- `const F6*: float`
- `const F7*: float`
- `const F8*: float`
- `const F9*: float`
  
- `const I0*: int`
- `const I1*: int`
- `const I2*: int`
- `const I3*: int`
- `const I4*: int`
- `const I5*: int`
- `const I6*: int`
- `const I7*: int`
- `const I8*: int`
- `const I9*: int`
          
- `const U0*: uint`
- `const U1*: uint`
- `const U2*: uint`
- `const U3*: uint`
- `const U4*: uint`
- `const U5*: uint`
- `const U6*: uint`
- `const U7*: uint`
- `const U8*: uint`
- `const U9*: uint`
  
- `const CU0*: cuint`
- `const CU1*: cuint`
- `const CU2*: cuint`
- `const CU3*: cuint`
- `const CU4*: cuint`
- `const CU5*: cuint`
- `const CU6*: cuint`
- `const CU7*: cuint`
- `const CU8*: cuint`
- `const CU9*: cuint`
  
- `const CI0*: cint`
- `const CI1*: cint`
- `const CI2*: cint`
- `const CI3*: cint`
- `const CI4*: cint`
- `const CI5*: cint`
- `const CI6*: cint`
- `const CI7*: cint`
- `const CI8*: cint`
- `const CI9*: cint`
  
- `const CF0*: cfloat`
- `const CF1*: cfloat`
- `const CF2*: cfloat`
- `const CF3*: cfloat`
- `const CF4*: cfloat`
- `const CF5*: cfloat`
- `const CF6*: cfloat`
- `const CF7*: cfloat`
- `const CF8*: cfloat`
- `const CF9*: cfloat`
  
### COMMON DEGREES

- `const F45*: float`
- `const F90*: float`
- `const F135*: float`
- `const F180*: float`
- `const F225*: float`
- `const F270*: float`
- `const F315*: float`
- `const F360*: float`
  
- `const I45*: int`
- `const I90*: int`
- `const I135*: int`
- `const I180*: int`
- `const I225*: int`
- `const I270*: int`
- `const I315*: int`
- `const I360*: int`
  
- `const CI45*: cint`
- `const CI90*: cint`
- `const CI135*: cint`
- `const CI180*: cint`
- `const CI225*: cint`
- `const CI270*: cint`
- `const CI315*: cint`
- `const CI360*: cint`
  
- `const CF45*: cfloat`
- `const CF90*: cfloat`
- `const CF135*: cfloat`
- `const CF180*: cfloat`
- `const CF225*: cfloat`
- `const CF270*: cfloat`
- `const CF315*: cfloat`
- `const CF360*: cfloat`
  
### COMMON FACTORS

- `const FACTOR_SINGLE*: int`
- `const FACTOR_DOUBLE*: int`
- `const FACTOR_TRIPLE*: int`
- `const FACTOR_QUADRUPLE*: int`
- `const FACTOR_QUINTUPLE*: int`
- `const FACTOR_SEXTUPLE*: int`
- `const FACTOR_SEPTUPLE*: int`
- `const FACTOR_OCTUPLE*: int`
- `const FACTOR_NONUPLE*: int`
- `const FACTOR_DECUPLE*: int`
- `const FACTOR_CENTUPLE*: int`
- `const FACTOR_MILLIDRUPLE*: int`
- `const FACTOR_MEGADRUPLE*: int`
- `const FACTOR_GIGADRUPLE*: int`
  
### COMMON FRACTIONS

- `const FRACTION_HALF*: float`
- `const FRACTION_THIRD*: float`
- `const FRACTION_FOURTH*: float`
- `const FRACTION_FIFTH*: float`
- `const FRACTION_SIXTH*: float`
- `const FRACTION_SEVENTH*: float`
- `const FRACTION_EIGTH*: float`
- `const FRACTION_NINTH*: float`
- `const FRACTION_TENTH*: float`
- `const FRACTION_HUNDREDTH*: float`
- `const FRACTION_THOUSANDTH*: float`
  
### COMMON VALUES

- `const VALUE_E*: float`
- `const VALUE_LOG10E*: float`
- `const VALUE_PI*: float`
- `const VALUE_2PI*: float`
- `const VALUE_TAU*: float`
- `const VALUE_PIDIV2*: float`
- `const VALUE_PIDIV4*: float`
- `const VALUE_1DIVPI*: float`
- `const VALUE_2DIVPI*: float`
- `const VALUE_2SQRTPI*: float`
- `const VALUE_SQRT2*: float`
- `const VALUE_1DIVSQRT2*: float`
- `const VALUE_PHI*: float`

## ROUTINES

### TRYPARSEFLOAT

**SIGNATURE**

`proc tryParseFloat*(s: string, default: float): float`

**DESCRIPTION**

*Tries to parse a float value from the provided string, otherwise it returns the provided default value.*

**USAGE**

```nim
  if tryParseFloat("1.2345", 0.0) == 1.2345:
    echo "parsed!"
```

### TRYPARSEINT

**SIGNATURE**

`proc tryParseInt*(s: string, default: int): int`

**DESCRIPTION**

*Tries to parse an interger value from the provided string, otherwise it returns the provided default value.*

**USAGE**

```nim
  if tryParseInt("-12345", 0) == -12345:
    echo "parsed!"
```

### TRYPARSEUINT

**SIGNATURE**

`proc tryParseUInt*(s: string, default: uint): uint`

**DESCRIPTION**

*Tries to parse an unsigned integer value from the provided string, otherwise it returns the provided default value.*

**USAGE**

```nim
  if tryParseUInt("12345", 0) == 12345:
    echo "parsed!"
```

### TRYPARSEBOOL

**SIGNATURE**

`proc tryParseBool*(s: string, default: bool): bool`

**DESCRIPTION**

*Tries to parse a boolean value from the provided string, otherwise it returns the provided default value.*

**USAGE**

```nim
  if tryParseBool("True", false) == true:
    echo "parsed!"
```

### FLOATROUND

**SIGNATURE**

`proc floatRound*[T: SomeFloat](x: T, places: int): T`

**DESCRIPTION**

*Alternative float round routine.*

*NOTE: use it wisely, see https://forum.nim-lang.org/t/4402*

**USAGE**

```nim
  if floatRound(1.2345, 2) == 1.23:
    echo "rounded!"
```

### FLOATISNAN

**SIGNATURE**

`func floatIsNaN*(x: SomeFloat): bool {.inline.}`

**DESCRIPTION**

*Tests if the specified float is NaN (not-a-number).*

**USAGE**

```nim
  if not floatIsNaN(1.2345):
    echo "not is NaN"
```

> most of the following routines are adaptations from the Java Ace Toolkit

### ISEVEN

**SIGNATURE**

`proc isEven*(x: SomeInteger): bool {.inline.}`

**DESCRIPTION**

*Returns true if the provided integer value is even.*

**USAGE**

```nim
  if not isEven(1):
    echo "not is an even integer"
```

### ISODD

**SIGNATURE**

`proc isOdd*(x: SomeInteger): bool {.inline.}`

**DESCRIPTION**

*Returns true if the provided integer value is odd.*

**USAGE**

```nim
  if not isOdd(-2):
    echo "not is an odd integer"
```

### ISDIVISIBLEBY

**SIGNATURE**

`proc isDivisibleBy*(number, factor: SomeInteger): bool {.inline.}`

**DESCRIPTION**

*Returns true if the provided integer value is divisible by the provided integer factor.*

**USAGE**

```nim
  if not isDivisibleBy(100, 3):
    echo "100 is not divisible by 3"
```

### ADD

**SIGNATURE**

`proc add*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber`

**DESCRIPTION**

*Returns the result of adding all the provided numbers.*

**USAGE**

```nim
  if add(1, 0, -1) == 0:
    echo "the numbers addition equals 0"
```

### SUBTRACT

**SIGNATURE**

`proc subtract*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber`

**DESCRIPTION**

*Returns the result of subtracting all the provided numbers.*

**USAGE**

```nim
  if subtract(3, 2, 1) == 0:
    echo "the numbers subtraction equals 0"
```

### MINIMUM

**SIGNATURE**

`proc minimum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber`

**DESCRIPTION**

*Returns the minimum value in the provided numbers.*

**USAGE**

```nim
  if minimum(1.1, 2.2, 3.3) == 1.1:
    echo "the minimum number provided is 1.1"
```

### MAXIMUM

**SIGNATURE**

`proc maximum*[SomeNumber](numbers: varargs[SomeNumber]): SomeNumber`

**DESCRIPTION**

*Returns the maximum value in the provided numbers.*

**USAGE**

```nim
  if maximum(1.1, 2.2, 3.3) == 3.3:
    echo "the maximum number provided was 3.3"
```
