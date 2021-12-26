# xam
# ===
# MATHS CONSTANTS

# DIGITS, FACTORS, FRACTIONS AND VALUES CONSTANTS
const
  # DIGITS
  F0*: float = 0.0
  F1*: float = 1.0
  F2*: float = 2.0
  F3*: float = 3.0
  F4*: float = 4.0
  F5*: float = 5.0
  F6*: float = 6.0
  F7*: float = 7.0
  F8*: float = 8.0
  F9*: float = 9.0
  
  I0*: int = 0
  I1*: int = 1
  I2*: int = 2
  I3*: int = 3
  I4*: int = 4
  I5*: int = 5
  I6*: int = 6
  I7*: int = 7
  I8*: int = 8
  I9*: int = 9
          
  U0*: uint = 0
  U1*: uint = 1
  U2*: uint = 2
  U3*: uint = 3
  U4*: uint = 4
  U5*: uint = 5
  U6*: uint = 6
  U7*: uint = 7
  U8*: uint = 8
  U9*: uint = 9
  
  CU0*: cuint = 0
  CU1*: cuint = 1
  CU2*: cuint = 2
  CU3*: cuint = 3
  CU4*: cuint = 4
  CU5*: cuint = 5
  CU6*: cuint = 6
  CU7*: cuint = 7
  CU8*: cuint = 8
  CU9*: cuint = 9
  
  CI0*: cint = 0
  CI1*: cint = 1
  CI2*: cint = 2
  CI3*: cint = 3
  CI4*: cint = 4
  CI5*: cint = 5
  CI6*: cint = 6
  CI7*: cint = 7
  CI8*: cint = 8
  CI9*: cint = 9
  
  CF0*: cfloat = 0.0
  CF1*: cfloat = 1.0
  CF2*: cfloat = 2.0
  CF3*: cfloat = 3.0
  CF4*: cfloat = 4.0
  CF5*: cfloat = 5.0
  CF6*: cfloat = 6.0
  CF7*: cfloat = 7.0
  CF8*: cfloat = 8.0
  CF9*: cfloat = 9.0
  
  # COMMON DEGREES
  F45*: float = 45.0
  F90*: float = 90.0
  F135*: float = 135.0
  F180*: float = 180.0
  F225*: float = 225.0
  F270*: float = 270.0
  F315*: float = 315.0
  F360*: float = 360.0
  
  I45*: int = 45
  I90*: int = 90
  I135*: int = 135
  I180*: int = 180
  I225*: int = 225
  I270*: int = 270
  I315*: int = 315
  I360*: int = 360
  
  CI45*: cint = 45
  CI90*: cint = 90
  CI135*: cint = 135
  CI180*: cint = 180
  CI225*: cint = 225
  CI270*: cint = 270
  CI315*: cint = 315
  CI360*: cint = 360
  
  CF45*: cfloat = 45.0
  CF90*: cfloat = 90.0
  CF135*: cfloat = 135.0
  CF180*: cfloat = 180.0
  CF225*: cfloat = 225.0
  CF270*: cfloat = 270.0
  CF315*: cfloat = 315.0
  CF360*: cfloat = 360.0
  
  # COMMON FACTORS
  FACTOR_SINGLE*: int = I1
  FACTOR_DOUBLE*: int = I2
  FACTOR_TRIPLE*: int = I3
  FACTOR_QUADRUPLE*: int = I4
  FACTOR_QUINTUPLE*: int = I5
  FACTOR_SEXTUPLE*: int = I6
  FACTOR_SEPTUPLE*: int = I7
  FACTOR_OCTUPLE*: int = I8
  FACTOR_NONUPLE*: int = I9
  FACTOR_DECUPLE*: int = 10
  FACTOR_CENTUPLE*: int = FACTOR_DECUPLE * FACTOR_DECUPLE
  FACTOR_MILLIDRUPLE*: int = FACTOR_CENTUPLE * FACTOR_DECUPLE
  FACTOR_MEGADRUPLE*: int = FACTOR_MILLIDRUPLE * FACTOR_MILLIDRUPLE
  FACTOR_GIGADRUPLE*: int = FACTOR_MEGADRUPLE * FACTOR_MILLIDRUPLE
  
  # COMMON FRACTIONS
  FRACTION_HALF*: float = F1 / F2
  FRACTION_THIRD*: float = F1 / F3
  FRACTION_FOURTH*: float = F1 / F4
  FRACTION_FIFTH*: float = F1 / F5
  FRACTION_SIXTH*: float = F1 / F6
  FRACTION_SEVENTH*: float = F1 / F7
  FRACTION_EIGTH*: float = F1 / F8
  FRACTION_NINTH*: float = F1 / F9
  FRACTION_TENTH*: float = 0.1
  FRACTION_HUNDREDTH*: float = 0.01
  FRACTION_THOUSANDTH*: float = 0.001
  
  # COMMON VALUES
  VALUE_E*: float = math.E
  VALUE_LOG10E*: float = math.log10(math.E)
  VALUE_PI*: float = math.PI
  VALUE_2PI*: float = F2 * math.PI
  VALUE_TAU*: float = VALUE_2PI
  VALUE_PIDIV2*: float = math.PI / F2
  VALUE_PIDIV4*: float = math.PI / F4
  VALUE_1DIVPI*: float = F1 / math.PI
  VALUE_2DIVPI*: float = F2 / math.PI
  VALUE_2SQRTPI*: float = F2 / math.sqrt(math.PI)
  VALUE_SQRT2*: float = math.sqrt(F2)
  VALUE_1DIVSQRT2*: float = F1 / VALUE_SQRT2
  VALUE_PHI*: float = 1.618033988749894
