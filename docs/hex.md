# hex

This is the documentation of the hex related constants module of the Xam library.

## CONSTANTS

### INDIVIDUAL HEX

- `const HEX_00*: string`
...
- `const HEX_FF*: string`

### NAMESPACED LET

The preceding constants are also grouped into a "let namespaced code constant" under the name of `HEX`.
So you can use `HEX.X00` as value equivalent to `HEX_00`, and so on. Note an X is preceding the byte numbers.

> REMEMBER: `let` introduces a variable that can not be re-assigned, `const` means "enforce compile time evaluation and put it into a data section".

### BYTES SEQUENCES

- `const HEX_ALL*: seq[string]`
