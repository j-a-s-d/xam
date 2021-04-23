# xam
# ===
# ANSI ROUTINES

func ansiResetBefore*(s: string): string = ANSI_RESET & s
func ansiResetAfter*(s: string): string = s & ANSI_RESET
func ansiBold*(s: string): string = ansiResetAfter(ANSI_BOLD & s)
func ansiUnderlined*(s: string): string = ansiResetAfter(ANSI_UNDERLINED & s)
func ansiReversed*(s: string): string = ansiResetAfter(ANSI_REVERSED & s)
func ansiBlack*(s: string): string = ansiResetAfter(ANSI_BLACK & s)
func ansiRed*(s: string): string = ansiResetAfter(ANSI_RED & s)
func ansiGreen*(s: string): string = ansiResetAfter(ANSI_GREEN & s)
func ansiYellow*(s: string): string = ansiResetAfter(ANSI_YELLOW & s)
func ansiBlue*(s: string): string = ansiResetAfter(ANSI_BLUE & s)
func ansiMagenta*(s: string): string = ansiResetAfter(ANSI_MAGENTA & s)
func ansiCyan*(s: string): string = ansiResetAfter(ANSI_CYAN & s)
func ansiWhite*(s: string): string = ansiResetAfter(ANSI_WHITE & s)
func ansiBrightBlack*(s: string): string = ansiResetAfter(ANSI_BRIGHT_BLACK & s)
func ansiBrightRed*(s: string): string = ansiResetAfter(ANSI_BRIGHT_RED & s)
func ansiBrightGreen*(s: string): string = ansiResetAfter(ANSI_BRIGHT_GREEN & s)
func ansiBrightYellow*(s: string): string = ansiResetAfter(ANSI_BRIGHT_YELLOW & s)
func ansiBrightBlue*(s: string): string = ansiResetAfter(ANSI_BRIGHT_BLUE & s)
func ansiBrightMagenta*(s: string): string = ansiResetAfter(ANSI_BRIGHT_MAGENTA & s)
func ansiBrightCyan*(s: string): string = ansiResetAfter(ANSI_BRIGHT_CYAN & s)
func ansiBrightWhite*(s: string): string = ansiResetAfter(ANSI_BRIGHT_WHITE & s)
func ansiBgBlack*(s: string): string = ansiResetAfter(ANSI_BG_BLACK & s)
func ansiBgRed*(s: string): string = ansiResetAfter(ANSI_BG_RED & s)
func ansiBgGreen*(s: string): string = ansiResetAfter(ANSI_BG_GREEN & s)
func ansiBgYellow*(s: string): string = ansiResetAfter(ANSI_BG_YELLOW & s)
func ansiBgBlue*(s: string): string = ansiResetAfter(ANSI_BG_BLUE & s)
func ansiBgMagenta*(s: string): string = ansiResetAfter(ANSI_BG_MAGENTA & s)
func ansiBgCyan*(s: string): string = ansiResetAfter(ANSI_BG_CYAN & s)
func ansiBgWhite*(s: string): string = ansiResetAfter(ANSI_BG_WHITE & s)
func ansiBgBrightBlack*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_BLACK & s)
func ansiBgBrightRed*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_RED & s)
func ansiBgBrightGreen*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_GREEN & s)
func ansiBgBrightYellow*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_YELLOW & s)
func ansiBgBrightBlue*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_BLUE & s)
func ansiBgBrightMagenta*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_MAGENTA & s)
func ansiBgBrightCyan*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_CYAN & s)
func ansiBgBrightWhite*(s: string): string = ansiResetAfter(ANSI_BG_BRIGHT_WHITE & s)
