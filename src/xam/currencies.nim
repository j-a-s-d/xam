# xam
# ===
# CURRENCIES RELATED CONSTANTS

# ISO 4217

const CURRENCIES_CODES_NUMBERS* = (
  AED: 784,
  AFN: 971,
  ALL: 8,
  AMD: 51,
  ANG: 532,
  AOA: 973,
  ARS: 32,
  AUD: 36,
  AWG: 533,
  AZN: 944,
  BAM: 977,
  BBD: 52,
  BDT: 50,
  BGN: 975,
  BHD: 48,
  BIF: 108,
  BMD: 60,
  BND: 96,
  BOB: 68,
  BOV: 984,
  BRL: 986,
  BSD: 44,
  BTN: 64,
  BWP: 72,
  BYN: 933,
  BZD: 84,
  CAD: 124,
  CDF: 976,
  CHE: 947,
  CHF: 756,
  CHW: 948,
  CLF: 990,
  CLP: 152,
  CNY: 156,
  COP: 170,
  COU: 970,
  CRC: 188,
  CUC: 931,
  CUP: 192,
  CVE: 132,
  CZK: 203,
  DJF: 262,
  DKK: 208,
  DOP: 214,
  DZD: 12,
  EGP: 818,
  ERN: 232,
  ETB: 230,
  EUR: 978,
  FJD: 242,
  FKP: 238,
  GBP: 826,
  GEL: 981,
  GHS: 936,
  GIP: 292,
  GMD: 270,
  GNF: 324,
  GTQ: 320,
  GYD: 328,
  HKD: 344,
  HNL: 340,
  HRK: 191,
  HTG: 332,
  HUF: 348,
  IDR: 360,
  ILS: 376,
  INR: 356,
  IQD: 368,
  IRR: 364,
  ISK: 352,
  JMD: 388,
  JOD: 400,
  JPY: 392,
  KES: 404,
  KGS: 417,
  KHR: 116,
  KMF: 174,
  KPW: 408,
  KRW: 410,
  KWD: 414,
  KYD: 136,
  KZT: 398,
  LAK: 418,
  LBP: 422,
  LKR: 144,
  LRD: 430,
  LSL: 426,
  LYD: 434,
  MAD: 504,
  MDL: 498,
  MGA: 969,
  MKD: 807,
  MMK: 104,
  MNT: 496,
  MOP: 446,
  MRU: 929,
  MUR: 480,
  MVR: 462,
  MWK: 454,
  MXN: 484,
  MXV: 979,
  MYR: 458,
  MZN: 943,
  NAD: 516,
  NGN: 566,
  NIO: 558,
  NOK: 578,
  NPR: 524,
  NZD: 554,
  OMR: 512,
  PAB: 590,
  PEN: 604,
  PGK: 598,
  PHP: 608,
  PKR: 586,
  PLN: 985,
  PYG: 600,
  QAR: 634,
  RON: 946,
  RSD: 941,
  RUB: 643,
  RWF: 646,
  SAR: 682,
  SBD: 90,
  SCR: 690,
  SDG: 938,
  SEK: 752,
  SGD: 702,
  SHP: 654,
  SLE: 925,
  SOS: 706,
  SRD: 968,
  SSP: 728,
  STN: 930,
  SVC: 222,
  SYP: 760,
  SZL: 748,
  THB: 764,
  TJS: 972,
  TMT: 934,
  TND: 788,
  TOP: 776,
  TRY: 949,
  TTD: 780,
  TWD: 901,
  TZS: 834,
  UAH: 980,
  UGX: 800,
  USD: 840,
  USN: 997,
  UYI: 940,
  UYU: 858,
  UZS: 860,
  VED: 926,
  VEF: 937,
  VES: 928,
  VND: 704,
  VUV: 548,
  WST: 882,
  XAF: 950,
  XCD: 951,
  XDR: 960,
  XOF: 952,
  XPF: 953,
  XSU: 994,
  XUA: 965,
  YER: 886,
  ZAR: 710,
  ZMW: 967,
  ZWL: 932
)

const CURRENCIES_CODES_NAMES* = (
  AED: "UAE Dirham",
  AFN: "Afghani",
  ALL: "Lek",
  AMD: "Armenian Dram",
  ANG: "Netherlands Antillean Guilder",
  AOA: "Kwanza",
  ARS: "Argentine Peso",
  AUD: "Australian Dollar",
  AWG: "Aruban Florin",
  AZN: "Azerbaijanian Manat",
  BAM: "Convertible Mark",
  BBD: "Barbados Dollar",
  BDT: "Taka",
  BGN: "Bulgarian Lev",
  BHD: "Bahraini Dinar",
  BIF: "Burundi Franc",
  BMD: "Bermudian Dollar",
  BND: "Brunei Dollar",
  BOB: "Boliviano",
  BOV: "Bolivian Mvdol",
  BRL: "Brazilian Real",
  BSD: "Bahamian Dollar",
  BTN: "Ngultrum",
  BWP: "Pula",
  BYN: "Belarussian Ruble",
  BZD: "Belize Dollar",
  CAD: "Canadian Dollar",
  CDF: "Congolese Franc",
  CHE: "Swiss WIR Euro",
  CHF: "Swiss Franc",
  CHW: "Swiss WIR Franc",
  CLF: "Chilean Unidad de Fomento",
  CLP: "Chilean Peso",
  CNY: "Yuan Renminbi",
  COP: "Colombian Peso",
  COU: "Colombian Unidad de Valor Real",
  CRC: "Costa Rican Colon",
  CUC: "Cuban Peso Convertible",
  CUP: "Cuban Peso",
  CVE: "Cabo Verde Escudo",
  CZK: "Czech Koruna",
  DJF: "Djibouti Franc",
  DKK: "Danish Krone",
  DOP: "Dominican Peso",
  DZD: "Algerian Dinar",
  EGP: "Egyptian Pound",
  ERN: "Nakfa",
  ETB: "Ethiopian Birr",
  EUR: "Euro",
  FJD: "Fiji Dollar",
  FKP: "Falkland Islands Pound",
  GBP: "Pound Sterling",
  GEL: "Lari",
  GHS: "Ghana Cedi",
  GIP: "Gibraltar Pound",
  GMD: "Dalasi",
  GNF: "Guinea Franc",
  GTQ: "Quetzal",
  GYD: "Guyana Dollar",
  HKD: "Hong Kong Dollar",
  HNL: "Lempira",
  HRK: "Kuna",
  HTG: "Gourde",
  HUF: "Forint",
  IDR: "Rupiah",
  ILS: "New Israeli Sheqel",
  INR: "Indian Rupee",
  IQD: "Iraqi Dinar",
  IRR: "Iranian Rial",
  ISK: "Iceland Krona",
  JMD: "Jamaican Dollar",
  JOD: "Jordanian Dinar",
  JPY: "Yen",
  KES: "Kenyan Shilling",
  KGS: "Som",
  KHR: "Riel",
  KMF: "Comoro Franc",
  KPW: "North Korean Won",
  KRW: "Won",
  KWD: "Kuwaiti Dinar",
  KYD: "Cayman Islands Dollar",
  KZT: "Tenge",
  LAK: "Kip",
  LBP: "Lebanese Pound",
  LKR: "Sri Lanka Rupee",
  LRD: "Liberian Dollar",
  LSL: "Loti",
  LYD: "Libyan Dinar",
  MAD: "Moroccan Dirham",
  MDL: "Moldovan Leu",
  MGA: "Malagasy Ariary",
  MKD: "Denar",
  MMK: "Kyat",
  MNT: "Tugrik",
  MOP: "Pataca",
  MRU: "Ouguiya",
  MUR: "Mauritius Rupee",
  MVR: "Rufiyaa",
  MWK: "Kwacha",
  MXN: "Mexican Peso",
  MXV: "Mexican Unidad de Inversion (UDI)",
  MYR: "Malaysian Ringgit",
  MZN: "Mozambique Metical",
  NAD: "Namibia Dollar",
  NGN: "Naira",
  NIO: "Cordoba Oro",
  NOK: "Norwegian Krone",
  NPR: "Nepalese Rupee",
  NZD: "New Zealand Dollar",
  OMR: "Rial Omani",
  PAB: "Balboa",
  PEN: "Nuevo Sol",
  PGK: "Kina",
  PHP: "Philippine Peso",
  PKR: "Pakistan Rupee",
  PLN: "Zloty",
  PYG: "Guarani",
  QAR: "Qatari Rial",
  RON: "Romanian Leu",
  RSD: "Serbian Dinar",
  RUB: "Russian Ruble",
  RWF: "Rwanda Franc",
  SAR: "Saudi Riyal",
  SBD: "Solomon Islands Dollar",
  SCR: "Seychelles Rupee",
  SDG: "Sudanese Pound",
  SEK: "Swedish Krona",
  SGD: "Singapore Dollar",
  SHP: "Saint Helena Pound",
  SLE: "Leone",
  SOS: "Somali Shilling",
  SRD: "Surinam Dollar",
  SSP: "South Sudanese Pound",
  STN: "Dobra",
  SVC: "El Salvador Colon",
  SYP: "Syrian Pound",
  SZL: "Lilangeni",
  THB: "Baht",
  TJS: "Somoni",
  TMT: "Turkmenistan New Manat",
  TND: "Tunisian Dinar",
  TOP: "Pa'anga",
  TRY: "Turkish Lira",
  TTD: "Trinidad and Tobago Dollar",
  TWD: "New Taiwan Dollar",
  TZS: "Tanzanian Shilling",
  UAH: "Hryvnia",
  UGX: "Uganda Shilling",
  USD: "US Dollar",
  USN: "US Dollar (Next day)",
  UYI: "Uruguayan Peso en Unidades Indexadas (URUIURUI)",
  UYU: "Peso Uruguayo",
  UZS: "Uzbekistan Sum",
  VED: "Bolivar",
  VEF: "Bolivar Fuerte",
  VES: "Bolivar Solidario",
  VND: "Dong",
  VUV: "Vatu",
  WST: "Tala",
  XAF: "CFA Franc BEAC",
  XCD: "East Caribbean Dollar",
  XDR: "SDR (Special Drawing Right)",
  XOF: "CFA Franc BCEAO",
  XPF: "CFP Franc",
  XSU: "Sucre",
  XUA: "ADB Unit of Account",
  YER: "Yemeni Rial",
  ZAR: "Rand",
  ZMW: "Zambian Kwacha",
  ZWL: "Zimbabwe Dollar"
)
