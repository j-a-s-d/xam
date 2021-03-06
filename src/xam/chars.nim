# xam
# ===
# CHARS CONSTANTS

const
  # SYMBOLS
  CHARS_TAB*: char = '\t'
  CHARS_LF*: char = '\n'
  CHARS_CR*: char = '\r'
  CHARS_SPACE*: char = ' '
  CHARS_EQUAL*: char = '='
  CHARS_NUMERAL*: char = '#'
  CHARS_PIPE*: char = '|'
  CHARS_MINUS*: char = '-'
  CHARS_PLUS*: char = '+'
  CHARS_PERCENT*: char = '%'
  CHARS_DOLLAR*: char = '$'
  CHARS_SLASH*: char = '/'
  CHARS_BACKSLASH*: char = '\\'
  CHARS_AMPERSAND*: char = '&'
  CHARS_ASTERISK*: char = '*'
  CHARS_UNDERSCORE*: char = '_'
  CHARS_COLON*: char = ':'
  CHARS_SEMICOLON*: char = ';'
  CHARS_COMMA*: char = ','
  CHARS_PERIOD*: char = '.'
  CHARS_APOSTROPHE*: char = '\''
  CHARS_QUOTE*: char = '\"'
  CHARS_CARET*: char = '^'
  CHARS_TILDE*: char = '~'
  CHARS_AT*: char = '@'
  CHARS_EXCLAMATION*: char = '!'
  CHARS_QUESTION*: char = '?'
  CHARS_INVERTED_EXCLAMATION*: char = "¡"[0]
  CHARS_INVERTED_QUESTION*: char = "¿"[0]
  CHARS_DEGREE*: char = "°"[0]
  CHARS_COPYRIGHT*: char = "©"[0]
  CHARS_REGISTERED*: char = "®"[0]
  CHARS_TRADEMARK*: char = "™"[0]
  CHARS_BULLET*: char = "•"[0]
  CHARS_PILCROW*: char = '\20' #'¶'
  CHARS_SECTION*: char = '\21' #'§'
  CHARS_MINOR*: char = '<'
  CHARS_MAJOR*: char = '>'
  CHARS_BRACES_OPEN*: char = '{'
  CHARS_BRACES_CLOSE*: char = '}'
  CHARS_BRACKETS_OPEN*: char = '['
  CHARS_BRACKETS_CLOSE*: char = ']'
  CHARS_PARENTHESES_OPEN*: char = '('
  CHARS_PARENTHESES_CLOSE*: char = ')'
  
  # NUMBERS
  CHARS_NUMBER_ZERO*: char = '0'
  CHARS_NUMBER_ONE*: char = '1'
  CHARS_NUMBER_TWO*: char = '2'
  CHARS_NUMBER_THREE*: char = '3'
  CHARS_NUMBER_FOUR*: char = '4'
  CHARS_NUMBER_FIVE*: char = '5'
  CHARS_NUMBER_SIX*: char = '6'
  CHARS_NUMBER_SEVEN*: char = '7'
  CHARS_NUMBER_EIGHT*: char = '8'
  CHARS_NUMBER_NINE*: char = '9'
  
  # UPPERCASE LETTERS
  CHARS_UPPERCASE_A*: char = 'A'
  CHARS_UPPERCASE_B*: char = 'B'
  CHARS_UPPERCASE_C*: char = 'C'
  CHARS_UPPERCASE_D*: char = 'D'
  CHARS_UPPERCASE_E*: char = 'E'
  CHARS_UPPERCASE_F*: char = 'F'
  CHARS_UPPERCASE_G*: char = 'G'
  CHARS_UPPERCASE_H*: char = 'H'
  CHARS_UPPERCASE_I*: char = 'I'
  CHARS_UPPERCASE_J*: char = 'J'
  CHARS_UPPERCASE_K*: char = 'K'
  CHARS_UPPERCASE_L*: char = 'L'
  CHARS_UPPERCASE_M*: char = 'M'
  CHARS_UPPERCASE_N*: char = 'N'
  CHARS_UPPERCASE_O*: char = 'O'
  CHARS_UPPERCASE_P*: char = 'P'
  CHARS_UPPERCASE_Q*: char = 'Q'
  CHARS_UPPERCASE_R*: char = 'R'
  CHARS_UPPERCASE_S*: char = 'S'
  CHARS_UPPERCASE_T*: char = 'T'
  CHARS_UPPERCASE_U*: char = 'U'
  CHARS_UPPERCASE_V*: char = 'V'
  CHARS_UPPERCASE_W*: char = 'W'
  CHARS_UPPERCASE_X*: char = 'X'
  CHARS_UPPERCASE_Y*: char = 'Y'
  CHARS_UPPERCASE_Z*: char = 'Z'
  
  # LOWERCASE LETTERS
  CHARS_LOWERCASE_A*: char = 'a'
  CHARS_LOWERCASE_B*: char = 'b'
  CHARS_LOWERCASE_C*: char = 'c'
  CHARS_LOWERCASE_D*: char = 'd'
  CHARS_LOWERCASE_E*: char = 'e'
  CHARS_LOWERCASE_F*: char = 'f'
  CHARS_LOWERCASE_G*: char = 'g'
  CHARS_LOWERCASE_H*: char = 'h'
  CHARS_LOWERCASE_I*: char = 'i'
  CHARS_LOWERCASE_J*: char = 'j'
  CHARS_LOWERCASE_K*: char = 'k'
  CHARS_LOWERCASE_L*: char = 'l'
  CHARS_LOWERCASE_M*: char = 'm'
  CHARS_LOWERCASE_N*: char = 'n'
  CHARS_LOWERCASE_O*: char = 'o'
  CHARS_LOWERCASE_P*: char = 'p'
  CHARS_LOWERCASE_Q*: char = 'q'
  CHARS_LOWERCASE_R*: char = 'r'
  CHARS_LOWERCASE_S*: char = 's'
  CHARS_LOWERCASE_T*: char = 't'
  CHARS_LOWERCASE_U*: char = 'u'
  CHARS_LOWERCASE_V*: char = 'v'
  CHARS_LOWERCASE_W*: char = 'w'
  CHARS_LOWERCASE_X*: char = 'x'
  CHARS_LOWERCASE_Y*: char = 'y'
  CHARS_LOWERCASE_Z*: char = 'z'

let
  CHARS*: tuple = (
    TAB: CHARS_TAB,
    LF: CHARS_LF,
    CR: CHARS_CR,
    SPACE: CHARS_SPACE,
    EQUAL: CHARS_EQUAL,
    NUMERAL: CHARS_NUMERAL,
    PIPE: CHARS_PIPE,
    MINUS: CHARS_MINUS,
    PLUS: CHARS_PLUS,
    PERCENT: CHARS_PERCENT,
    DOLLAR: CHARS_DOLLAR,
    SLASH: CHARS_SLASH,
    BACKSLASH: CHARS_BACKSLASH,
    AMPERSAND: CHARS_AMPERSAND,
    ASTERISK: CHARS_ASTERISK,
    UNDERSCORE: CHARS_UNDERSCORE,
    COLON: CHARS_COLON,
    SEMICOLON: CHARS_SEMICOLON,
    COMMA: CHARS_COMMA,
    PERIOD: CHARS_PERIOD,
    APOSTROPHE: CHARS_APOSTROPHE,
    QUOTE: CHARS_QUOTE,
    CARET: CHARS_CARET,
    TILDE: CHARS_TILDE,
    AT: CHARS_AT,
    EXCLAMATION: CHARS_EXCLAMATION,
    QUESTION: CHARS_QUESTION,
    INVERTED_EXCLAMATION: CHARS_INVERTED_EXCLAMATION,
    INVERTED_QUESTION: CHARS_INVERTED_QUESTION,
    DEGREE: CHARS_DEGREE,
    COPYRIGHT: CHARS_COPYRIGHT,
    REGISTERED: CHARS_REGISTERED,
    TRADEMARK: CHARS_TRADEMARK,
    BULLET: CHARS_BULLET,
    PILCROW: CHARS_PILCROW,
    SECTION: CHARS_SECTION,
    MINOR: CHARS_MINOR,
    MAJOR: CHARS_MAJOR,
    BRACES_OPEN: CHARS_BRACES_OPEN,
    BRACES_CLOSE: CHARS_BRACES_CLOSE,
    BRACKETS_OPEN: CHARS_BRACKETS_OPEN,
    BRACKETS_CLOSE: CHARS_BRACKETS_CLOSE,
    PARENTHESES_OPEN: CHARS_PARENTHESES_OPEN,
    PARENTHESES_CLOSE: CHARS_PARENTHESES_CLOSE,
    NUMBER_ZERO: CHARS_NUMBER_ZERO,
    NUMBER_ONE: CHARS_NUMBER_ONE,
    NUMBER_TWO: CHARS_NUMBER_TWO,
    NUMBER_THREE: CHARS_NUMBER_THREE,
    NUMBER_FOUR: CHARS_NUMBER_FOUR,
    NUMBER_FIVE: CHARS_NUMBER_FIVE,
    NUMBER_SIX: CHARS_NUMBER_SIX,
    NUMBER_SEVEN: CHARS_NUMBER_SEVEN,
    NUMBER_EIGHT: CHARS_NUMBER_EIGHT,
    NUMBER_NINE: CHARS_NUMBER_NINE,
    UPPERCASE_A: CHARS_UPPERCASE_A,
    UPPERCASE_B: CHARS_UPPERCASE_B,
    UPPERCASE_C: CHARS_UPPERCASE_C,
    UPPERCASE_D: CHARS_UPPERCASE_D,
    UPPERCASE_E: CHARS_UPPERCASE_E,
    UPPERCASE_F: CHARS_UPPERCASE_F,
    UPPERCASE_G: CHARS_UPPERCASE_G,
    UPPERCASE_H: CHARS_UPPERCASE_H,
    UPPERCASE_I: CHARS_UPPERCASE_I,
    UPPERCASE_J: CHARS_UPPERCASE_J,
    UPPERCASE_K: CHARS_UPPERCASE_K,
    UPPERCASE_L: CHARS_UPPERCASE_L,
    UPPERCASE_M: CHARS_UPPERCASE_M,
    UPPERCASE_N: CHARS_UPPERCASE_N,
    UPPERCASE_O: CHARS_UPPERCASE_O,
    UPPERCASE_P: CHARS_UPPERCASE_P,
    UPPERCASE_Q: CHARS_UPPERCASE_Q,
    UPPERCASE_R: CHARS_UPPERCASE_R,
    UPPERCASE_S: CHARS_UPPERCASE_S,
    UPPERCASE_T: CHARS_UPPERCASE_T,
    UPPERCASE_U: CHARS_UPPERCASE_U,
    UPPERCASE_V: CHARS_UPPERCASE_V,
    UPPERCASE_W: CHARS_UPPERCASE_W,
    UPPERCASE_X: CHARS_UPPERCASE_X,
    UPPERCASE_Y: CHARS_UPPERCASE_Y,
    UPPERCASE_Z: CHARS_UPPERCASE_Z,
    LOWERCASE_A: CHARS_LOWERCASE_A,
    LOWERCASE_B: CHARS_LOWERCASE_B,
    LOWERCASE_C: CHARS_LOWERCASE_C,
    LOWERCASE_D: CHARS_LOWERCASE_D,
    LOWERCASE_E: CHARS_LOWERCASE_E,
    LOWERCASE_F: CHARS_LOWERCASE_F,
    LOWERCASE_G: CHARS_LOWERCASE_G,
    LOWERCASE_H: CHARS_LOWERCASE_H,
    LOWERCASE_I: CHARS_LOWERCASE_I,
    LOWERCASE_J: CHARS_LOWERCASE_J,
    LOWERCASE_K: CHARS_LOWERCASE_K,
    LOWERCASE_L: CHARS_LOWERCASE_L,
    LOWERCASE_M: CHARS_LOWERCASE_M,
    LOWERCASE_N: CHARS_LOWERCASE_N,
    LOWERCASE_O: CHARS_LOWERCASE_O,
    LOWERCASE_P: CHARS_LOWERCASE_P,
    LOWERCASE_Q: CHARS_LOWERCASE_Q,
    LOWERCASE_R: CHARS_LOWERCASE_R,
    LOWERCASE_S: CHARS_LOWERCASE_S,
    LOWERCASE_T: CHARS_LOWERCASE_T,
    LOWERCASE_U: CHARS_LOWERCASE_U,
    LOWERCASE_V: CHARS_LOWERCASE_V,
    LOWERCASE_W: CHARS_LOWERCASE_W,
    LOWERCASE_X: CHARS_LOWERCASE_X,
    LOWERCASE_Y: CHARS_LOWERCASE_Y,
    LOWERCASE_Z: CHARS_LOWERCASE_Z
  )
