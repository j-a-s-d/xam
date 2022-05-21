# ansi

This is the documentation of the ansi related routines module of the Xam library.

> It offers a complementary and different approach to the *terminal* module's one.

## CONSTANTS

### CONTROL CODES

- `const ANSI_RESET*: string`

### TEXT STYLES

- `const ANSI_BOLD*: string`
- `const ANSI_UNDERLINED*: string`
- `const ANSI_REVERSED*: string`
  
### TEXT COLOURS

- `const ANSI_BLACK*: string`
- `const ANSI_RED*: string`
- `const ANSI_GREEN*: string`
- `const ANSI_YELLOW*: string`
- `const ANSI_BLUE*: string`
- `const ANSI_MAGENTA*: string`
- `const ANSI_CYAN*: string`
- `const ANSI_WHITE*: string`
- `const ANSI_BRIGHT_BLACK*: string`
- `const ANSI_BRIGHT_RED*: string`
- `const ANSI_BRIGHT_GREEN*: string`
- `const ANSI_BRIGHT_YELLOW*: string`
- `const ANSI_BRIGHT_BLUE*: string`
- `const ANSI_BRIGHT_MAGENTA*: string`
- `const ANSI_BRIGHT_CYAN*: string`
- `const ANSI_BRIGHT_WHITE*: string`

### BACKGROUND COLOURS

- `const ANSI_BG_BLACK*: string`
- `const ANSI_BG_RED*: string`
- `const ANSI_BG_GREEN*: string`
- `const ANSI_BG_YELLOW*: string`
- `const ANSI_BG_BLUE*: string`
- `const ANSI_BG_MAGENTA*: string`
- `const ANSI_BG_CYAN*: string`
- `const ANSI_BG_WHITE*: string`
- `const ANSI_BG_BRIGHT_BLACK*: string`
- `const ANSI_BG_BRIGHT_RED*: string`
- `const ANSI_BG_BRIGHT_GREEN*: string`
- `const ANSI_BG_BRIGHT_YELLOW*: string`
- `const ANSI_BG_BRIGHT_BLUE*: string`
- `const ANSI_BG_BRIGHT_MAGENTA*: string`
- `const ANSI_BG_BRIGHT_CYAN*: string`
- `const ANSI_BG_BRIGHT_WHITE*: string`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `ANSI`.
So you can use `ANSI.RESET` as value equivalent to `ANSI_RESET`, and so on.

## ROUTINES

### CONTROL CODES

- `func ansiResetBefore*(s: string): string`
- `func ansiResetAfter*(s: string): string`

### TEXT STYLES

- `func ansiBold*(s: string): string`
- `func ansiUnderlined*(s: string): string`
- `func ansiReversed*(s: string): string`

### TEXT COLOURS

- `func ansiBlack*(s: string): string`
- `func ansiRed*(s: string): string`
- `func ansiGreen*(s: string): string`
- `func ansiYellow*(s: string): string`
- `func ansiBlue*(s: string): string`
- `func ansiMagenta*(s: string): string`
- `func ansiCyan*(s: string): string`
- `func ansiWhite*(s: string): string`
- `func ansiBrightBlack*(s: string): string`
- `func ansiBrightRed*(s: string): string`
- `func ansiBrightGreen*(s: string): string`
- `func ansiBrightYellow*(s: string): string`
- `func ansiBrightBlue*(s: string): string`
- `func ansiBrightMagenta*(s: string): string`
- `func ansiBrightCyan*(s: string): string`
- `func ansiBrightWhite*(s: string): string`

### BACKGROUND COLOURS

- `func ansiBgBlack*(s: string): string`
- `func ansiBgRed*(s: string): string`
- `func ansiBgGreen*(s: string): string`
- `func ansiBgYellow*(s: string): string`
- `func ansiBgBlue*(s: string): string`
- `func ansiBgMagenta*(s: string): string`
- `func ansiBgCyan*(s: string): string`
- `func ansiBgWhite*(s: string): string`
- `func ansiBgBrightBlack*(s: string): string`
- `func ansiBgBrightRed*(s: string): string`
- `func ansiBgBrightGreen*(s: string): string`
- `func ansiBgBrightYellow*(s: string): string`
- `func ansiBgBrightBlue*(s: string): string`
- `func ansiBgBrightMagenta*(s: string): string`
- `func ansiBgBrightCyan*(s: string): string`
- `func ansiBgBrightWhite*(s: string): string`
