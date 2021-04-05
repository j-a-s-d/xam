# bytes

This is the documentation of the bytes related constants module of the Xam library.

## CONSTANTS

### INDIVIDUAL BYTES

- `const BYTES_00*: uint8`
...
- `const BYTES_FF: uint8`

### NAMESPACED LET

The preceding constants are also grouped into a "let namespaced code constant" under the name of `BYTES`.
So you can use `BYTES.X00` as value equivalent to `BYTES_00`, and so on. Note an X is preceding the byte numbers.

> REMEMBER: `let` introduces a variable that can not be re-assigned, `const` means "enforce compile time evaluation and put it into a data section".

### BYTES SEQUENCES

- `const BYTES_SEQ_EMPTY*: seq[uint8]`
- `const BYTES_SEQ_ALL*: seq[uint8]`

The following are sequences of 16 bytes with those that start with the specified number:

- `const BYTES_SEQ_0X*: seq[uint8]`
...
- `const BYTES_SEQ_FX*: seq[uint8]`

The following are sequences of 16 bytes with those that end with the specified number:

- `const BYTES_SEQ_X0*: seq[uint8]`
...
- `const BYTES_SEQ_XF*: seq[uint8]`

### BYTES ARRAYS

- `const BYTES_ARRAY_ALL*: array[0..255, uint8]`

The following are arrays of 16 bytes with those that start with the specified number:

- `const BYTES_ARRAY_0X*: array[0..15, uint8]`
...
- `const BYTES_ARRAY_FX*: array[0..15, uint8]`

The following are arrays of 16 bytes with those that end with the specified number:

- `const BYTES_ARRAY_X0*: array[0..15, uint8]`
...
- `const BYTES_ARRAY_XF*: array[0..15, uint8]`
