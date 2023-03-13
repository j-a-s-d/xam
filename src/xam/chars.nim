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

  # HEX VALUE
  CHARS_X00*: char = '\x00'
  CHARS_X01*: char = '\x01'
  CHARS_X02*: char = '\x02'
  CHARS_X03*: char = '\x03'
  CHARS_X04*: char = '\x04'
  CHARS_X05*: char = '\x05'
  CHARS_X06*: char = '\x06'
  CHARS_X07*: char = '\x07'
  CHARS_X08*: char = '\x08'
  CHARS_X09*: char = '\x09'
  CHARS_X0A*: char = '\x0A'
  CHARS_X0B*: char = '\x0B'
  CHARS_X0C*: char = '\x0C'
  CHARS_X0D*: char = '\x0D'
  CHARS_X0E*: char = '\x0E'
  CHARS_X0F*: char = '\x0F'
  CHARS_X10*: char = '\x10'
  CHARS_X11*: char = '\x11'
  CHARS_X12*: char = '\x12'
  CHARS_X13*: char = '\x13'
  CHARS_X14*: char = '\x14'
  CHARS_X15*: char = '\x15'
  CHARS_X16*: char = '\x16'
  CHARS_X17*: char = '\x17'
  CHARS_X18*: char = '\x18'
  CHARS_X19*: char = '\x19'
  CHARS_X1A*: char = '\x1A'
  CHARS_X1B*: char = '\x1B'
  CHARS_X1C*: char = '\x1C'
  CHARS_X1D*: char = '\x1D'
  CHARS_X1E*: char = '\x1E'
  CHARS_X1F*: char = '\x1F'
  CHARS_X20*: char = '\x20'
  CHARS_X21*: char = '\x21'
  CHARS_X22*: char = '\x22'
  CHARS_X23*: char = '\x23'
  CHARS_X24*: char = '\x24'
  CHARS_X25*: char = '\x25'
  CHARS_X26*: char = '\x26'
  CHARS_X27*: char = '\x27'
  CHARS_X28*: char = '\x28'
  CHARS_X29*: char = '\x29'
  CHARS_X2A*: char = '\x2A'
  CHARS_X2B*: char = '\x2B'
  CHARS_X2C*: char = '\x2C'
  CHARS_X2D*: char = '\x2D'
  CHARS_X2E*: char = '\x2E'
  CHARS_X2F*: char = '\x2F'
  CHARS_X30*: char = '\x30'
  CHARS_X31*: char = '\x31'
  CHARS_X32*: char = '\x32'
  CHARS_X33*: char = '\x33'
  CHARS_X34*: char = '\x34'
  CHARS_X35*: char = '\x35'
  CHARS_X36*: char = '\x36'
  CHARS_X37*: char = '\x37'
  CHARS_X38*: char = '\x38'
  CHARS_X39*: char = '\x39'
  CHARS_X3A*: char = '\x3A'
  CHARS_X3B*: char = '\x3B'
  CHARS_X3C*: char = '\x3C'
  CHARS_X3D*: char = '\x3D'
  CHARS_X3E*: char = '\x3E'
  CHARS_X3F*: char = '\x3F'
  CHARS_X40*: char = '\x40'
  CHARS_X41*: char = '\x41'
  CHARS_X42*: char = '\x42'
  CHARS_X43*: char = '\x43'
  CHARS_X44*: char = '\x44'
  CHARS_X45*: char = '\x45'
  CHARS_X46*: char = '\x46'
  CHARS_X47*: char = '\x47'
  CHARS_X48*: char = '\x48'
  CHARS_X49*: char = '\x49'
  CHARS_X4A*: char = '\x4A'
  CHARS_X4B*: char = '\x4B'
  CHARS_X4C*: char = '\x4C'
  CHARS_X4D*: char = '\x4D'
  CHARS_X4E*: char = '\x4E'
  CHARS_X4F*: char = '\x4F'
  CHARS_X50*: char = '\x50'
  CHARS_X51*: char = '\x51'
  CHARS_X52*: char = '\x52'
  CHARS_X53*: char = '\x53'
  CHARS_X54*: char = '\x54'
  CHARS_X55*: char = '\x55'
  CHARS_X56*: char = '\x56'
  CHARS_X57*: char = '\x57'
  CHARS_X58*: char = '\x58'
  CHARS_X59*: char = '\x59'
  CHARS_X5A*: char = '\x5A'
  CHARS_X5B*: char = '\x5B'
  CHARS_X5C*: char = '\x5C'
  CHARS_X5D*: char = '\x5D'
  CHARS_X5E*: char = '\x5E'
  CHARS_X5F*: char = '\x5F'
  CHARS_X60*: char = '\x60'
  CHARS_X61*: char = '\x61'
  CHARS_X62*: char = '\x62'
  CHARS_X63*: char = '\x63'
  CHARS_X64*: char = '\x64'
  CHARS_X65*: char = '\x65'
  CHARS_X66*: char = '\x66'
  CHARS_X67*: char = '\x67'
  CHARS_X68*: char = '\x68'
  CHARS_X69*: char = '\x69'
  CHARS_X6A*: char = '\x6A'
  CHARS_X6B*: char = '\x6B'
  CHARS_X6C*: char = '\x6C'
  CHARS_X6D*: char = '\x6D'
  CHARS_X6E*: char = '\x6E'
  CHARS_X6F*: char = '\x6F'
  CHARS_X70*: char = '\x70'
  CHARS_X71*: char = '\x71'
  CHARS_X72*: char = '\x72'
  CHARS_X73*: char = '\x73'
  CHARS_X74*: char = '\x74'
  CHARS_X75*: char = '\x75'
  CHARS_X76*: char = '\x76'
  CHARS_X77*: char = '\x77'
  CHARS_X78*: char = '\x78'
  CHARS_X79*: char = '\x79'
  CHARS_X7A*: char = '\x7A'
  CHARS_X7B*: char = '\x7B'
  CHARS_X7C*: char = '\x7C'
  CHARS_X7D*: char = '\x7D'
  CHARS_X7E*: char = '\x7E'
  CHARS_X7F*: char = '\x7F'
  CHARS_X80*: char = '\x80'
  CHARS_X81*: char = '\x81'
  CHARS_X82*: char = '\x82'
  CHARS_X83*: char = '\x83'
  CHARS_X84*: char = '\x84'
  CHARS_X85*: char = '\x85'
  CHARS_X86*: char = '\x86'
  CHARS_X87*: char = '\x87'
  CHARS_X88*: char = '\x88'
  CHARS_X89*: char = '\x89'
  CHARS_X8A*: char = '\x8A'
  CHARS_X8B*: char = '\x8B'
  CHARS_X8C*: char = '\x8C'
  CHARS_X8D*: char = '\x8D'
  CHARS_X8E*: char = '\x8E'
  CHARS_X8F*: char = '\x8F'
  CHARS_X90*: char = '\x90'
  CHARS_X91*: char = '\x91'
  CHARS_X92*: char = '\x92'
  CHARS_X93*: char = '\x93'
  CHARS_X94*: char = '\x94'
  CHARS_X95*: char = '\x95'
  CHARS_X96*: char = '\x96'
  CHARS_X97*: char = '\x97'
  CHARS_X98*: char = '\x98'
  CHARS_X99*: char = '\x99'
  CHARS_X9A*: char = '\x9A'
  CHARS_X9B*: char = '\x9B'
  CHARS_X9C*: char = '\x9C'
  CHARS_X9D*: char = '\x9D'
  CHARS_X9E*: char = '\x9E'
  CHARS_X9F*: char = '\x9F'
  CHARS_XA0*: char = '\xA0'
  CHARS_XA1*: char = '\xA1'
  CHARS_XA2*: char = '\xA2'
  CHARS_XA3*: char = '\xA3'
  CHARS_XA4*: char = '\xA4'
  CHARS_XA5*: char = '\xA5'
  CHARS_XA6*: char = '\xA6'
  CHARS_XA7*: char = '\xA7'
  CHARS_XA8*: char = '\xA8'
  CHARS_XA9*: char = '\xA9'
  CHARS_XAA*: char = '\xAA'
  CHARS_XAB*: char = '\xAB'
  CHARS_XAC*: char = '\xAC'
  CHARS_XAD*: char = '\xAD'
  CHARS_XAE*: char = '\xAE'
  CHARS_XAF*: char = '\xAF'
  CHARS_XB0*: char = '\xB0'
  CHARS_XB1*: char = '\xB1'
  CHARS_XB2*: char = '\xB2'
  CHARS_XB3*: char = '\xB3'
  CHARS_XB4*: char = '\xB4'
  CHARS_XB5*: char = '\xB5'
  CHARS_XB6*: char = '\xB6'
  CHARS_XB7*: char = '\xB7'
  CHARS_XB8*: char = '\xB8'
  CHARS_XB9*: char = '\xB9'
  CHARS_XBA*: char = '\xBA'
  CHARS_XBB*: char = '\xBB'
  CHARS_XBC*: char = '\xBC'
  CHARS_XBD*: char = '\xBD'
  CHARS_XBE*: char = '\xBE'
  CHARS_XBF*: char = '\xBF'
  CHARS_XC0*: char = '\xC0'
  CHARS_XC1*: char = '\xC1'
  CHARS_XC2*: char = '\xC2'
  CHARS_XC3*: char = '\xC3'
  CHARS_XC4*: char = '\xC4'
  CHARS_XC5*: char = '\xC5'
  CHARS_XC6*: char = '\xC6'
  CHARS_XC7*: char = '\xC7'
  CHARS_XC8*: char = '\xC8'
  CHARS_XC9*: char = '\xC9'
  CHARS_XCA*: char = '\xCA'
  CHARS_XCB*: char = '\xCB'
  CHARS_XCC*: char = '\xCC'
  CHARS_XCD*: char = '\xCD'
  CHARS_XCE*: char = '\xCE'
  CHARS_XCF*: char = '\xCF'
  CHARS_XD0*: char = '\xD0'
  CHARS_XD1*: char = '\xD1'
  CHARS_XD2*: char = '\xD2'
  CHARS_XD3*: char = '\xD3'
  CHARS_XD4*: char = '\xD4'
  CHARS_XD5*: char = '\xD5'
  CHARS_XD6*: char = '\xD6'
  CHARS_XD7*: char = '\xD7'
  CHARS_XD8*: char = '\xD8'
  CHARS_XD9*: char = '\xD9'
  CHARS_XDA*: char = '\xDA'
  CHARS_XDB*: char = '\xDB'
  CHARS_XDC*: char = '\xDC'
  CHARS_XDD*: char = '\xDD'
  CHARS_XDE*: char = '\xDE'
  CHARS_XDF*: char = '\xDF'
  CHARS_XE0*: char = '\xE0'
  CHARS_XE1*: char = '\xE1'
  CHARS_XE2*: char = '\xE2'
  CHARS_XE3*: char = '\xE3'
  CHARS_XE4*: char = '\xE4'
  CHARS_XE5*: char = '\xE5'
  CHARS_XE6*: char = '\xE6'
  CHARS_XE7*: char = '\xE7'
  CHARS_XE8*: char = '\xE8'
  CHARS_XE9*: char = '\xE9'
  CHARS_XEA*: char = '\xEA'
  CHARS_XEB*: char = '\xEB'
  CHARS_XEC*: char = '\xEC'
  CHARS_XED*: char = '\xED'
  CHARS_XEE*: char = '\xEE'
  CHARS_XEF*: char = '\xEF'
  CHARS_XF0*: char = '\xF0'
  CHARS_XF1*: char = '\xF1'
  CHARS_XF2*: char = '\xF2'
  CHARS_XF3*: char = '\xF3'
  CHARS_XF4*: char = '\xF4'
  CHARS_XF5*: char = '\xF5'
  CHARS_XF6*: char = '\xF6'
  CHARS_XF7*: char = '\xF7'
  CHARS_XF8*: char = '\xF8'
  CHARS_XF9*: char = '\xF9'
  CHARS_XFA*: char = '\xFA'
  CHARS_XFB*: char = '\xFB'
  CHARS_XFC*: char = '\xFC'
  CHARS_XFD*: char = '\xFD'
  CHARS_XFE*: char = '\xFE'
  CHARS_XFF*: char = '\xFF'

const
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
    LOWERCASE_Z: CHARS_LOWERCASE_Z,
    X00: CHARS_X00,
    X01: CHARS_X01,
    X02: CHARS_X02,
    X03: CHARS_X03,
    X04: CHARS_X04,
    X05: CHARS_X05,
    X06: CHARS_X06,
    X07: CHARS_X07,
    X08: CHARS_X08,
    X09: CHARS_X09,
    X0A: CHARS_X0A,
    X0B: CHARS_X0B,
    X0C: CHARS_X0C,
    X0D: CHARS_X0D,
    X0E: CHARS_X0E,
    X0F: CHARS_X0F,
    X10: CHARS_X10,
    X11: CHARS_X11,
    X12: CHARS_X12,
    X13: CHARS_X13,
    X14: CHARS_X14,
    X15: CHARS_X15,
    X16: CHARS_X16,
    X17: CHARS_X17,
    X18: CHARS_X18,
    X19: CHARS_X19,
    X1A: CHARS_X1A,
    X1B: CHARS_X1B,
    X1C: CHARS_X1C,
    X1D: CHARS_X1D,
    X1E: CHARS_X1E,
    X1F: CHARS_X1F,
    X20: CHARS_X20,
    X21: CHARS_X21,
    X22: CHARS_X22,
    X23: CHARS_X23,
    X24: CHARS_X24,
    X25: CHARS_X25,
    X26: CHARS_X26,
    X27: CHARS_X27,
    X28: CHARS_X28,
    X29: CHARS_X29,
    X2A: CHARS_X2A,
    X2B: CHARS_X2B,
    X2C: CHARS_X2C,
    X2D: CHARS_X2D,
    X2E: CHARS_X2E,
    X2F: CHARS_X2F,
    X30: CHARS_X30,
    X31: CHARS_X31,
    X32: CHARS_X32,
    X33: CHARS_X33,
    X34: CHARS_X34,
    X35: CHARS_X35,
    X36: CHARS_X36,
    X37: CHARS_X37,
    X38: CHARS_X38,
    X39: CHARS_X39,
    X3A: CHARS_X3A,
    X3B: CHARS_X3B,
    X3C: CHARS_X3C,
    X3D: CHARS_X3D,
    X3E: CHARS_X3E,
    X3F: CHARS_X3F,
    X40: CHARS_X40,
    X41: CHARS_X41,
    X42: CHARS_X42,
    X43: CHARS_X43,
    X44: CHARS_X44,
    X45: CHARS_X45,
    X46: CHARS_X46,
    X47: CHARS_X47,
    X48: CHARS_X48,
    X49: CHARS_X49,
    X4A: CHARS_X4A,
    X4B: CHARS_X4B,
    X4C: CHARS_X4C,
    X4D: CHARS_X4D,
    X4E: CHARS_X4E,
    X4F: CHARS_X4F,
    X50: CHARS_X50,
    X51: CHARS_X51,
    X52: CHARS_X52,
    X53: CHARS_X53,
    X54: CHARS_X54,
    X55: CHARS_X55,
    X56: CHARS_X56,
    X57: CHARS_X57,
    X58: CHARS_X58,
    X59: CHARS_X59,
    X5A: CHARS_X5A,
    X5B: CHARS_X5B,
    X5C: CHARS_X5C,
    X5D: CHARS_X5D,
    X5E: CHARS_X5E,
    X5F: CHARS_X5F,
    X60: CHARS_X60,
    X61: CHARS_X61,
    X62: CHARS_X62,
    X63: CHARS_X63,
    X64: CHARS_X64,
    X65: CHARS_X65,
    X66: CHARS_X66,
    X67: CHARS_X67,
    X68: CHARS_X68,
    X69: CHARS_X69,
    X6A: CHARS_X6A,
    X6B: CHARS_X6B,
    X6C: CHARS_X6C,
    X6D: CHARS_X6D,
    X6E: CHARS_X6E,
    X6F: CHARS_X6F,
    X70: CHARS_X70,
    X71: CHARS_X71,
    X72: CHARS_X72,
    X73: CHARS_X73,
    X74: CHARS_X74,
    X75: CHARS_X75,
    X76: CHARS_X76,
    X77: CHARS_X77,
    X78: CHARS_X78,
    X79: CHARS_X79,
    X7A: CHARS_X7A,
    X7B: CHARS_X7B,
    X7C: CHARS_X7C,
    X7D: CHARS_X7D,
    X7E: CHARS_X7E,
    X7F: CHARS_X7F,
    X80: CHARS_X80,
    X81: CHARS_X81,
    X82: CHARS_X82,
    X83: CHARS_X83,
    X84: CHARS_X84,
    X85: CHARS_X85,
    X86: CHARS_X86,
    X87: CHARS_X87,
    X88: CHARS_X88,
    X89: CHARS_X89,
    X8A: CHARS_X8A,
    X8B: CHARS_X8B,
    X8C: CHARS_X8C,
    X8D: CHARS_X8D,
    X8E: CHARS_X8E,
    X8F: CHARS_X8F,
    X90: CHARS_X90,
    X91: CHARS_X91,
    X92: CHARS_X92,
    X93: CHARS_X93,
    X94: CHARS_X94,
    X95: CHARS_X95,
    X96: CHARS_X96,
    X97: CHARS_X97,
    X98: CHARS_X98,
    X99: CHARS_X99,
    X9A: CHARS_X9A,
    X9B: CHARS_X9B,
    X9C: CHARS_X9C,
    X9D: CHARS_X9D,
    X9E: CHARS_X9E,
    X9F: CHARS_X9F,
    XA0: CHARS_XA0,
    XA1: CHARS_XA1,
    XA2: CHARS_XA2,
    XA3: CHARS_XA3,
    XA4: CHARS_XA4,
    XA5: CHARS_XA5,
    XA6: CHARS_XA6,
    XA7: CHARS_XA7,
    XA8: CHARS_XA8,
    XA9: CHARS_XA9,
    XAA: CHARS_XAA,
    XAB: CHARS_XAB,
    XAC: CHARS_XAC,
    XAD: CHARS_XAD,
    XAE: CHARS_XAE,
    XAF: CHARS_XAF,
    XB0: CHARS_XB0,
    XB1: CHARS_XB1,
    XB2: CHARS_XB2,
    XB3: CHARS_XB3,
    XB4: CHARS_XB4,
    XB5: CHARS_XB5,
    XB6: CHARS_XB6,
    XB7: CHARS_XB7,
    XB8: CHARS_XB8,
    XB9: CHARS_XB9,
    XBA: CHARS_XBA,
    XBB: CHARS_XBB,
    XBC: CHARS_XBC,
    XBD: CHARS_XBD,
    XBE: CHARS_XBE,
    XBF: CHARS_XBF,
    XC0: CHARS_XC0,
    XC1: CHARS_XC1,
    XC2: CHARS_XC2,
    XC3: CHARS_XC3,
    XC4: CHARS_XC4,
    XC5: CHARS_XC5,
    XC6: CHARS_XC6,
    XC7: CHARS_XC7,
    XC8: CHARS_XC8,
    XC9: CHARS_XC9,
    XCA: CHARS_XCA,
    XCB: CHARS_XCB,
    XCC: CHARS_XCC,
    XCD: CHARS_XCD,
    XCE: CHARS_XCE,
    XCF: CHARS_XCF,
    XD0: CHARS_XD0,
    XD1: CHARS_XD1,
    XD2: CHARS_XD2,
    XD3: CHARS_XD3,
    XD4: CHARS_XD4,
    XD5: CHARS_XD5,
    XD6: CHARS_XD6,
    XD7: CHARS_XD7,
    XD8: CHARS_XD8,
    XD9: CHARS_XD9,
    XDA: CHARS_XDA,
    XDB: CHARS_XDB,
    XDC: CHARS_XDC,
    XDD: CHARS_XDD,
    XDE: CHARS_XDE,
    XDF: CHARS_XDF,
    XE0: CHARS_XE0,
    XE1: CHARS_XE1,
    XE2: CHARS_XE2,
    XE3: CHARS_XE3,
    XE4: CHARS_XE4,
    XE5: CHARS_XE5,
    XE6: CHARS_XE6,
    XE7: CHARS_XE7,
    XE8: CHARS_XE8,
    XE9: CHARS_XE9,
    XEA: CHARS_XEA,
    XEB: CHARS_XEB,
    XEC: CHARS_XEC,
    XED: CHARS_XED,
    XEE: CHARS_XEE,
    XEF: CHARS_XEF,
    XF0: CHARS_XF0,
    XF1: CHARS_XF1,
    XF2: CHARS_XF2,
    XF3: CHARS_XF3,
    XF4: CHARS_XF4,
    XF5: CHARS_XF5,
    XF6: CHARS_XF6,
    XF7: CHARS_XF7,
    XF8: CHARS_XF8,
    XF9: CHARS_XF9,
    XFA: CHARS_XFA,
    XFB: CHARS_XFB,
    XFC: CHARS_XFC,
    XFD: CHARS_XFD,
    XFE: CHARS_XFE,
    XFF: CHARS_XFF,
  )
