# xam
# ===
# ANSI ROUTINES

# NOTE: this is a complementary and different approach to the terminal's one.

const
  ANSI_RESET* = "\e[0m"
  ANSI_BOLD* = "\e[1m"
  ANSI_UNDERLINED* = "\e[4m"
  ANSI_REVERSED* = "\e[7m"
  ANSI_BLACK* = "\e[30m"
  ANSI_RED* = "\e[31m"
  ANSI_GREEN* = "\e[32m"
  ANSI_YELLOW* = "\e[33m"
  ANSI_BLUE* = "\e[34m"
  ANSI_MAGENTA* = "\e[35m"
  ANSI_CYAN* = "\e[36m"
  ANSI_WHITE* = "\e[37m"
  ANSI_BRIGHT_BLACK* = "\e[90m"
  ANSI_BRIGHT_RED* = "\e[91m"
  ANSI_BRIGHT_GREEN* = "\e[92m"
  ANSI_BRIGHT_YELLOW* = "\e[93m"
  ANSI_BRIGHT_BLUE* = "\e[94m"
  ANSI_BRIGHT_MAGENTA* = "\e[95m"
  ANSI_BRIGHT_CYAN* = "\e[96m"
  ANSI_BRIGHT_WHITE* = "\e[97m"
  ANSI_BG_BLACK* = "\e[40m"
  ANSI_BG_RED* = "\e[41m"
  ANSI_BG_GREEN* = "\e[42m"
  ANSI_BG_YELLOW* = "\e[43m"
  ANSI_BG_BLUE* = "\e[44m"
  ANSI_BG_MAGENTA* = "\e[45m"
  ANSI_BG_CYAN* = "\e[46m"
  ANSI_BG_WHITE* = "\e[47m"
  ANSI_BG_BRIGHT_BLACK* = "\e[100m"
  ANSI_BG_BRIGHT_RED* = "\e[101m"
  ANSI_BG_BRIGHT_GREEN* = "\e[102m"
  ANSI_BG_BRIGHT_YELLOW* = "\e[103m"
  ANSI_BG_BRIGHT_BLUE* = "\e[104m"
  ANSI_BG_BRIGHT_MAGENTA* = "\e[105m"
  ANSI_BG_BRIGHT_CYAN* = "\e[106m"
  ANSI_BG_BRIGHT_WHITE* = "\e[107m"

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
