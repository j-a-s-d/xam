# nimlang

This is the documentation of the Nim language related constants and routines module of the Xam library.

## CONSTANTS

- `const NIM_EXTENSION*: string`
- `const NIMSCRIPT_EXTENSION*: string`
- `const NIMBLE_EXTENSION*: string`
- `const NIMLANG_KEYWORDS*: seq[string]`

## ROUTINES

### ISVALIDNIMIDENTIFIER

**SIGNATURE**

`func isValidNimIdentifier*(s: string): bool`

**DESCRIPTION**

*Validates the provided string with the rules for nim identifiers specified at: https://nim-lang.org/docs/manual.html#lexical-analysis-identifiers-amp-keywords*

**USAGE**

```nim
  if isValidNimIdentifier("test"):
    echo "validated!"
```
