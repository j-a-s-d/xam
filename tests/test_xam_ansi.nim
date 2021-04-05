# xam by Javier Santo Domingo (j-a-s-d@coderesearchlabs.com)

import
  unittest,
  xam

suite "test xam ansi":

  const TEST = "test"

  test "test ansiResetBefore":
    check(ansiResetBefore(TEST) == ANSI.RESET & TEST)
  test "test ansiResetAfter":
    check(ansiResetAfter(TEST) == TEST & ANSI.RESET)

  test "test ansiBold":
    check(ansiBold(TEST) == ANSI_BOLD & TEST & ANSI_RESET)
  test "test ansiUnderlined":
    check(ansiUnderlined(TEST) == ANSI_UNDERLINED & TEST & ANSI_RESET)
  test "test ansiReversed":
    check(ansiReversed(TEST) == ANSI_REVERSED & TEST & ANSI_RESET)

  test "test ansiBlack":
    check(ansiBlack(TEST) == ANSI_BLACK & TEST & ANSI_RESET)
  test "test ansiRed":
    check(ansiRed(TEST) == ANSI_RED & TEST & ANSI_RESET)
  test "test ansiGreen":
    check(ansiGreen(TEST) == ANSI_GREEN & TEST & ANSI_RESET)
  test "test ansiYellow":
    check(ansiYellow(TEST) == ANSI_YELLOW & TEST & ANSI_RESET)
  test "test ansiBlue":
    check(ansiBlue(TEST) == ANSI_BLUE & TEST & ANSI_RESET)
  test "test ansiMagenta":
    check(ansiMagenta(TEST) == ANSI_MAGENTA & TEST & ANSI_RESET)
  test "test ansiCyan":
    check(ansiCyan(TEST) == ANSI_CYAN & TEST & ANSI_RESET)
  test "test ansiWhite":
    check(ansiWhite(TEST) == ANSI_WHITE & TEST & ANSI_RESET)

  test "test ansiBrightBlack":
    check(ansiBrightBlack(TEST) == ANSI_BRIGHT_BLACK & TEST & ANSI_RESET)
  test "test ansiBrightRed":
    check(ansiBrightRed(TEST) == ANSI_BRIGHT_RED & TEST & ANSI_RESET)
  test "test ansiBrightGreen":
    check(ansiBrightGreen(TEST) == ANSI_BRIGHT_GREEN & TEST & ANSI_RESET)
  test "test ansiBrightYellow":
    check(ansiBrightYellow(TEST) == ANSI_BRIGHT_YELLOW & TEST & ANSI_RESET)
  test "test ansiBrightBlue":
    check(ansiBrightBlue(TEST) == ANSI_BRIGHT_BLUE & TEST & ANSI_RESET)
  test "test ansiBrightMagenta":
    check(ansiBrightMagenta(TEST) == ANSI_BRIGHT_MAGENTA & TEST & ANSI_RESET)
  test "test ansiBrightCyan":
    check(ansiBrightCyan(TEST) == ANSI_BRIGHT_CYAN & TEST & ANSI_RESET)
  test "test ansiBrightWhite":
    check(ansiBrightWhite(TEST) == ANSI_BRIGHT_WHITE & TEST & ANSI_RESET)

  test "test ansiBgBlack":
    check(ansiBgBlack(TEST) == ANSI_BG_BLACK & TEST & ANSI_RESET)
  test "test ansiBgRed":
    check(ansiBgRed(TEST) == ANSI_BG_RED & TEST & ANSI_RESET)
  test "test ansiBgGreen":
    check(ansiBgGreen(TEST) == ANSI_BG_GREEN & TEST & ANSI_RESET)
  test "test ansiBgYellow":
    check(ansiBgYellow(TEST) == ANSI_BG_YELLOW & TEST & ANSI_RESET)
  test "test ansiBgBlue":
    check(ansiBgBlue(TEST) == ANSI_BG_BLUE & TEST & ANSI_RESET)
  test "test ansiBgMagenta":
    check(ansiBgMagenta(TEST) == ANSI_BG_MAGENTA & TEST & ANSI_RESET)
  test "test ansiBgCyan":
    check(ansiBgCyan(TEST) == ANSI_BG_CYAN & TEST & ANSI_RESET)
  test "test ansiBgWhite":
    check(ansiBgWhite(TEST) == ANSI_BG_WHITE & TEST & ANSI_RESET)

  test "test ansiBgBrightBlack":
    check(ansiBgBrightBlack(TEST) == ANSI_BG_BRIGHT_BLACK & TEST & ANSI_RESET)
  test "test ansiBgBrightRed":
    check(ansiBgBrightRed(TEST) == ANSI_BG_BRIGHT_RED & TEST & ANSI_RESET)
  test "test ansiBgBrightGreen":
    check(ansiBgBrightGreen(TEST) == ANSI_BG_BRIGHT_GREEN & TEST & ANSI_RESET)
  test "test ansiBgBrightYellow":
    check(ansiBgBrightYellow(TEST) == ANSI_BG_BRIGHT_YELLOW & TEST & ANSI_RESET)
  test "test ansiBgBrightBlue":
    check(ansiBgBrightBlue(TEST) == ANSI_BG_BRIGHT_BLUE & TEST & ANSI_RESET)
  test "test ansiBgBrightMagenta":
    check(ansiBgBrightMagenta(TEST) == ANSI_BG_BRIGHT_MAGENTA & TEST & ANSI_RESET)
  test "test ansiBgBrightCyan":
    check(ansiBgBrightCyan(TEST) == ANSI_BG_BRIGHT_CYAN & TEST & ANSI_RESET)
  test "test ansiBgBrightWhite":
    check(ansiBgBrightWhite(TEST) == ANSI_BG_BRIGHT_WHITE & TEST & ANSI_RESET)
