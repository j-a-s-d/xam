# xam
# ===
# ANSI CONSTANTS

const
  ANSI_RESET*: string = "\e[0m"
  ANSI_BOLD*: string = "\e[1m"
  ANSI_UNDERLINED*: string = "\e[4m"
  ANSI_REVERSED*: string = "\e[7m"
  ANSI_BLACK*: string = "\e[30m"
  ANSI_RED*: string = "\e[31m"
  ANSI_GREEN*: string = "\e[32m"
  ANSI_YELLOW*: string = "\e[33m"
  ANSI_BLUE*: string = "\e[34m"
  ANSI_MAGENTA*: string = "\e[35m"
  ANSI_CYAN*: string = "\e[36m"
  ANSI_WHITE*: string = "\e[37m"
  ANSI_BRIGHT_BLACK*: string = "\e[90m"
  ANSI_BRIGHT_RED*: string = "\e[91m"
  ANSI_BRIGHT_GREEN*: string = "\e[92m"
  ANSI_BRIGHT_YELLOW*: string = "\e[93m"
  ANSI_BRIGHT_BLUE*: string = "\e[94m"
  ANSI_BRIGHT_MAGENTA*: string = "\e[95m"
  ANSI_BRIGHT_CYAN*: string = "\e[96m"
  ANSI_BRIGHT_WHITE*: string = "\e[97m"
  ANSI_BG_BLACK*: string = "\e[40m"
  ANSI_BG_RED*: string = "\e[41m"
  ANSI_BG_GREEN*: string = "\e[42m"
  ANSI_BG_YELLOW*: string = "\e[43m"
  ANSI_BG_BLUE*: string = "\e[44m"
  ANSI_BG_MAGENTA*: string = "\e[45m"
  ANSI_BG_CYAN*: string = "\e[46m"
  ANSI_BG_WHITE*: string = "\e[47m"
  ANSI_BG_BRIGHT_BLACK*: string = "\e[100m"
  ANSI_BG_BRIGHT_RED*: string = "\e[101m"
  ANSI_BG_BRIGHT_GREEN*: string = "\e[102m"
  ANSI_BG_BRIGHT_YELLOW*: string = "\e[103m"
  ANSI_BG_BRIGHT_BLUE*: string = "\e[104m"
  ANSI_BG_BRIGHT_MAGENTA*: string = "\e[105m"
  ANSI_BG_BRIGHT_CYAN*: string = "\e[106m"
  ANSI_BG_BRIGHT_WHITE*: string = "\e[107m"

const
  ANSI*: tuple = (
    RESET: ANSI_RESET,
    BOLD: ANSI_BOLD,
    UNDERLINED: ANSI_UNDERLINED,
    REVERSED: ANSI_REVERSED,
    BLACK: ANSI_BLACK,
    RED: ANSI_RED,
    GREEN: ANSI_GREEN,
    YELLOW: ANSI_YELLOW,
    BLUE: ANSI_BLUE,
    MAGENTA: ANSI_MAGENTA,
    CYAN: ANSI_CYAN,
    WHITE: ANSI_WHITE,
    BRIGHT_BLACK: ANSI_BRIGHT_BLACK,
    BRIGHT_RED: ANSI_BRIGHT_RED,
    BRIGHT_GREEN: ANSI_BRIGHT_GREEN,
    BRIGHT_YELLOW: ANSI_BRIGHT_YELLOW,
    BRIGHT_BLUE: ANSI_BRIGHT_BLUE,
    BRIGHT_MAGENTA: ANSI_BRIGHT_MAGENTA,
    BRIGHT_CYAN: ANSI_BRIGHT_CYAN,
    BRIGHT_WHITE: ANSI_BRIGHT_WHITE,
    BG_BLACK: ANSI_BG_BLACK,
    BG_RED: ANSI_BG_RED,
    BG_GREEN: ANSI_BG_GREEN,
    BG_YELLOW: ANSI_BG_YELLOW,
    BG_BLUE: ANSI_BG_BLUE,
    BG_MAGENTA: ANSI_BG_MAGENTA,
    BG_CYAN: ANSI_BG_CYAN,
    BG_WHITE: ANSI_BG_WHITE,
    BG_BRIGHT_BLACK: ANSI_BG_BRIGHT_BLACK,
    BG_BRIGHT_RED: ANSI_BG_BRIGHT_RED,
    BG_BRIGHT_GREEN: ANSI_BG_BRIGHT_GREEN,
    BG_BRIGHT_YELLOW: ANSI_BG_BRIGHT_YELLOW,
    BG_BRIGHT_BLUE: ANSI_BG_BRIGHT_BLUE,
    BG_BRIGHT_MAGENTA: ANSI_BG_BRIGHT_MAGENTA,
    BG_BRIGHT_CYAN: ANSI_BG_BRIGHT_CYAN,
    BG_BRIGHT_WHITE: ANSI_BG_BRIGHT_WHITE
  )
