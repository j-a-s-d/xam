# html

This is the documentation of the html related constants and routines module of the Xam library.

## CONSTANTS

### GLOBAL ATTRIBUTES

- `const HTML_ATTRIBUTES_ACCESSKEY*: string`
- `const HTML_ATTRIBUTES_CLASS*: string`
- `const HTML_ATTRIBUTES_CONTENTEDITABLE*: string`
- `const HTML_ATTRIBUTES_DIR*: string`
- `const HTML_ATTRIBUTES_DRAGGABLE*: string`
- `const HTML_ATTRIBUTES_HIDDEN*: string`
- `const HTML_ATTRIBUTES_ID*: string`
- `const HTML_ATTRIBUTES_LANG*: string`
- `const HTML_ATTRIBUTES_SPELLCHECK*: string`
- `const HTML_ATTRIBUTES_STYLE*: string`
- `const HTML_ATTRIBUTES_TABINDEX*: string`
- `const HTML_ATTRIBUTES_TITLE*: string`
- `const HTML_ATTRIBUTES_TRANSLATE*: string`

### ALL VISIBLE ELEMENTS ATTRIBUTES

- `const HTML_ATTRIBUTES_ONBLUR*: string`
- `const HTML_ATTRIBUTES_ONCHANGE*: string`
- `const HTML_ATTRIBUTES_ONCLICK*: string`
- `const HTML_ATTRIBUTES_ONCONTEXTMENU*: string`
- `const HTML_ATTRIBUTES_ONCOPY*: string`
- `const HTML_ATTRIBUTES_ONCUT*: string`
- `const HTML_ATTRIBUTES_ONDBLCLICK*: string`
- `const HTML_ATTRIBUTES_ONDRAG*: string`
- `const HTML_ATTRIBUTES_ONDRAGEND*: string`
- `const HTML_ATTRIBUTES_ONDRAGENTER*: string`
- `const HTML_ATTRIBUTES_ONDRAGLEAVE*: string`
- `const HTML_ATTRIBUTES_ONDRAGOVER*: string`
- `const HTML_ATTRIBUTES_ONDRAGSTART*: string`
- `const HTML_ATTRIBUTES_ONDROP*: string`
- `const HTML_ATTRIBUTES_ONFOCUS*: string`
- `const HTML_ATTRIBUTES_ONINPUT*: string`
- `const HTML_ATTRIBUTES_ONINVALID*: string`
- `const HTML_ATTRIBUTES_ONKEYDOWN*: string`
- `const HTML_ATTRIBUTES_ONKEYPRESS*: string`
- `const HTML_ATTRIBUTES_ONKEYUP*: string`
- `const HTML_ATTRIBUTES_ONMOUSEDOWN*: string`
- `const HTML_ATTRIBUTES_ONMOUSEMOVE*: string`
- `const HTML_ATTRIBUTES_ONMOUSEOUT*: string`
- `const HTML_ATTRIBUTES_ONMOUSEOVER*: string`
- `const HTML_ATTRIBUTES_ONMOUSEUP*: string`
- `const HTML_ATTRIBUTES_ONMOUSEWHEEL*: string`
- `const HTML_ATTRIBUTES_ONPASTE*: string`
- `const HTML_ATTRIBUTES_ONSCROLL*: string`
- `const HTML_ATTRIBUTES_ONSELECT*: string`
- `const HTML_ATTRIBUTES_ONWHEEL*: string`

### TAG SPECIFIC ATTRIBUTES

- `const HTML_ATTRIBUTES_ACCEPT*: string`
- `const HTML_ATTRIBUTES_ACCEPT_CHARSET*: string`
- `const HTML_ATTRIBUTES_ACTION*: string`
- `const HTML_ATTRIBUTES_ALT*: string`
- `const HTML_ATTRIBUTES_ASYNC*: string`
- `const HTML_ATTRIBUTES_AUTOCOMPLETE*: string`
- `const HTML_ATTRIBUTES_AUTOFOCUS*: string`
- `const HTML_ATTRIBUTES_AUTOPLAY*: string`
- `const HTML_ATTRIBUTES_CHARSET*: string`
- `const HTML_ATTRIBUTES_CHECKED*: string`
- `const HTML_ATTRIBUTES_CITE*: string`
- `const HTML_ATTRIBUTES_COLS*: string`
- `const HTML_ATTRIBUTES_COLSPAN*: string`
- `const HTML_ATTRIBUTES_CONTENT*: string`
- `const HTML_ATTRIBUTES_CONTROLS*: string`
- `const HTML_ATTRIBUTES_COORDS*: string`
- `const HTML_ATTRIBUTES_DATA*: string`
- `const HTML_ATTRIBUTES_DATETIME*: string`
- `const HTML_ATTRIBUTES_DEFAULT*: string`
- `const HTML_ATTRIBUTES_DEFER*: string`
- `const HTML_ATTRIBUTES_DIRNAME*: string`
- `const HTML_ATTRIBUTES_DISABLED*: string`
- `const HTML_ATTRIBUTES_DOWNLOAD*: string`
- `const HTML_ATTRIBUTES_ENCTYPE*: string`
- `const HTML_ATTRIBUTES_FOR*: string`
- `const HTML_ATTRIBUTES_FORM*: string`
- `const HTML_ATTRIBUTES_FORMACTION*: string`
- `const HTML_ATTRIBUTES_HEADERS*: string`
- `const HTML_ATTRIBUTES_HEIGHT*: string`
- `const HTML_ATTRIBUTES_HIGH*: string`
- `const HTML_ATTRIBUTES_HREF*: string`
- `const HTML_ATTRIBUTES_HREFLANG*: string`
- `const HTML_ATTRIBUTES_HTTP_EQUIV*: string`
- `const HTML_ATTRIBUTES_ISMAP*: string`
- `const HTML_ATTRIBUTES_KIND*: string`
- `const HTML_ATTRIBUTES_LABEL*: string`
- `const HTML_ATTRIBUTES_LIST*: string`
- `const HTML_ATTRIBUTES_LOOP*: string`
- `const HTML_ATTRIBUTES_LOW*: string`
- `const HTML_ATTRIBUTES_MAX*: string`
- `const HTML_ATTRIBUTES_MAXLENGTH*: string`
- `const HTML_ATTRIBUTES_MEDIA*: string`
- `const HTML_ATTRIBUTES_METHOD*: string`
- `const HTML_ATTRIBUTES_MIN*: string`
- `const HTML_ATTRIBUTES_MULTIPLE*: string`
- `const HTML_ATTRIBUTES_MUTED*: string`
- `const HTML_ATTRIBUTES_NAME*: string`
- `const HTML_ATTRIBUTES_NOVALIDATE*: string`
- `const HTML_ATTRIBUTES_ONABORT*: string`
- `const HTML_ATTRIBUTES_ONAFTERPRINT*: string`
- `const HTML_ATTRIBUTES_ONBEFOREPRINT*: string`
- `const HTML_ATTRIBUTES_ONBEFOREUNLOAD*: string`
- `const HTML_ATTRIBUTES_ONCANPLAY*: string`
- `const HTML_ATTRIBUTES_ONCANPLAYTHROUGH*: string`
- `const HTML_ATTRIBUTES_ONCUECHANGE*: string`
- `const HTML_ATTRIBUTES_ONDURATIONCHANGE*: string`
- `const HTML_ATTRIBUTES_ONEMPTIED*: string`
- `const HTML_ATTRIBUTES_ONENDED*: string`
- `const HTML_ATTRIBUTES_ONERROR*: string`
- `const HTML_ATTRIBUTES_ONHASHCHANGE*: string`
- `const HTML_ATTRIBUTES_ONLOAD*: string`
- `const HTML_ATTRIBUTES_ONLOADEDDATA*: string`
- `const HTML_ATTRIBUTES_ONLOADEDMETADATA*: string`
- `const HTML_ATTRIBUTES_ONLOADSTART*: string`
- `const HTML_ATTRIBUTES_ONOFFLINE*: string`
- `const HTML_ATTRIBUTES_ONONLINE*: string`
- `const HTML_ATTRIBUTES_ONPAGEHIDE*: string`
- `const HTML_ATTRIBUTES_ONPAGESHOW*: string`
- `const HTML_ATTRIBUTES_ONPAUSE*: string`
- `const HTML_ATTRIBUTES_ONPLAY*: string`
- `const HTML_ATTRIBUTES_ONPLAYING*: string`
- `const HTML_ATTRIBUTES_ONPOPSTATE*: string`
- `const HTML_ATTRIBUTES_ONPROGRESS*: string`
- `const HTML_ATTRIBUTES_ONRATECHANGE*: string`
- `const HTML_ATTRIBUTES_ONRESET*: string`
- `const HTML_ATTRIBUTES_ONRESIZE*: string`
- `const HTML_ATTRIBUTES_ONSEARCH*: string`
- `const HTML_ATTRIBUTES_ONSEEKED*: string`
- `const HTML_ATTRIBUTES_ONSEEKING*: string`
- `const HTML_ATTRIBUTES_ONSTALLED*: string`
- `const HTML_ATTRIBUTES_ONSTORAGE*: string`
- `const HTML_ATTRIBUTES_ONSUBMIT*: string`
- `const HTML_ATTRIBUTES_ONSUSPEND*: string`
- `const HTML_ATTRIBUTES_ONTIMEUPDATE*: string`
- `const HTML_ATTRIBUTES_ONTOGGLE*: string`
- `const HTML_ATTRIBUTES_ONUNLOAD*: string`
- `const HTML_ATTRIBUTES_ONVOLUMECHANGE*: string`
- `const HTML_ATTRIBUTES_ONWAITING*: string`
- `const HTML_ATTRIBUTES_OPEN*: string`
- `const HTML_ATTRIBUTES_OPTIMUM*: string`
- `const HTML_ATTRIBUTES_PATTERN*: string`
- `const HTML_ATTRIBUTES_PLACEHOLDER*: string`
- `const HTML_ATTRIBUTES_POSTER*: string`
- `const HTML_ATTRIBUTES_PRELOAD*: string`
- `const HTML_ATTRIBUTES_READONLY*: string`
- `const HTML_ATTRIBUTES_REL*: string`
- `const HTML_ATTRIBUTES_REQUIRED*: string`
- `const HTML_ATTRIBUTES_REVERSED*: string`
- `const HTML_ATTRIBUTES_ROWS*: string`
- `const HTML_ATTRIBUTES_ROWSPAN*: string`
- `const HTML_ATTRIBUTES_SANDBOX*: string`
- `const HTML_ATTRIBUTES_SCOPE*: string`
- `const HTML_ATTRIBUTES_SELECTED*: string`
- `const HTML_ATTRIBUTES_SHAPE*: string`
- `const HTML_ATTRIBUTES_SIZE*: string`
- `const HTML_ATTRIBUTES_SIZES*: string`
- `const HTML_ATTRIBUTES_SPAN*: string`
- `const HTML_ATTRIBUTES_SRC*: string`
- `const HTML_ATTRIBUTES_SRCDOC*: string`
- `const HTML_ATTRIBUTES_SRCLANG*: string`
- `const HTML_ATTRIBUTES_SRCSET*: string`
- `const HTML_ATTRIBUTES_START*: string`
- `const HTML_ATTRIBUTES_STEP*: string`
- `const HTML_ATTRIBUTES_TARGET*: string`
- `const HTML_ATTRIBUTES_TYPE*: string`
- `const HTML_ATTRIBUTES_USEMAP*: string`
- `const HTML_ATTRIBUTES_VALUE*: string`
- `const HTML_ATTRIBUTES_WIDTH*: string`
- `const HTML_ATTRIBUTES_WRAP*: string`

### NOT SUPPORTED IN HTML 5 ATTRIBUTES

- `const HTML_ATTRIBUTES_ALIGN*: string`
- `const HTML_ATTRIBUTES_BGCOLOR*: string`
- `const HTML_ATTRIBUTES_BORDER*: string`
- `const HTML_ATTRIBUTES_COLOR*: string`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `HTML_ATTRIBUTES`.
So you can use `HTML_ATTRIBUTES.ALIGN` as value equivalent to `HTML_ATTRIBUTES_ALIGN`, and so on.

## HTML COLOURS CONSTANTS

- `const HTML_COLORS_MAROON*: string`
- `const HTML_COLORS_DARK_RED*: string`
- `const HTML_COLORS_BROWN*: string`
- `const HTML_COLORS_FIREBRICK*: string`
- `const HTML_COLORS_CRIMSON*: string`
- `const HTML_COLORS_RED*: string`
- `const HTML_COLORS_TOMATO*: string`
- `const HTML_COLORS_CORAL*: string`
- `const HTML_COLORS_INDIAN_RED*: string`
- `const HTML_COLORS_LIGHT_CORAL*: string`
- `const HTML_COLORS_DARK_SALMON*: string`
- `const HTML_COLORS_SALMON*: string`
- `const HTML_COLORS_LIGHT_SALMON*: string`
- `const HTML_COLORS_ORANGE_RED*: string`
- `const HTML_COLORS_DARK_ORANGE*: string`
- `const HTML_COLORS_ORANGE*: string`
- `const HTML_COLORS_GOLD*: string`
- `const HTML_COLORS_DARK_GOLDEN_ROD*: string`
- `const HTML_COLORS_GOLDEN_ROD*: string`
- `const HTML_COLORS_PALE_GOLDEN_ROD*: string`
- `const HTML_COLORS_DARK_KHAKI*: string`
- `const HTML_COLORS_KHAKI*: string`
- `const HTML_COLORS_OLIVE*: string`
- `const HTML_COLORS_YELLOW*: string`
- `const HTML_COLORS_YELLOW_GREEN*: string`
- `const HTML_COLORS_DARK_OLIVE_GREEN*: string`
- `const HTML_COLORS_OLIVE_DRAB*: string`
- `const HTML_COLORS_LAWN_GREEN*: string`
- `const HTML_COLORS_CHART_REUSE*: string`
- `const HTML_COLORS_GREEN_YELLOW*: string`
- `const HTML_COLORS_DARK_GREEN*: string`
- `const HTML_COLORS_GREEN*: string`
- `const HTML_COLORS_FOREST_GREEN*: string`
- `const HTML_COLORS_LIME*: string`
- `const HTML_COLORS_LIME_GREEN*: string`
- `const HTML_COLORS_LIGHT_GREEN*: string`
- `const HTML_COLORS_PALE_GREEN*: string`
- `const HTML_COLORS_DARK_SEA_GREEN*: string`
- `const HTML_COLORS_MEDIUM_SPRING_GREEN*: string`
- `const HTML_COLORS_SPRING_GREEN*: string`
- `const HTML_COLORS_SEA_GREEN*: string`
- `const HTML_COLORS_MEDIUM_AQUA_MARINE*: string`
- `const HTML_COLORS_MEDIUM_SEA_GREEN*: string`
- `const HTML_COLORS_LIGHT_SEA_GREEN*: string`
- `const HTML_COLORS_DARK_SLATE_GRAY*: string`
- `const HTML_COLORS_TEAL*: string`
- `const HTML_COLORS_DARK_CYAN*: string`
- `const HTML_COLORS_AQUA*: string`
- `const HTML_COLORS_CYAN*: string`
- `const HTML_COLORS_LIGHT_CYAN*: string`
- `const HTML_COLORS_DARK_TURQUOISE*: string`
- `const HTML_COLORS_TURQUOISE*: string`
- `const HTML_COLORS_MEDIUM_TURQUOISE*: string`
- `const HTML_COLORS_PALE_TURQUOISE*: string`
- `const HTML_COLORS_AQUA_MARINE*: string`
- `const HTML_COLORS_POWDER_BLUE*: string`
- `const HTML_COLORS_CADET_BLUE*: string`
- `const HTML_COLORS_STEEL_BLUE*: string`
- `const HTML_COLORS_CORN_FLOWER_BLUE*: string`
- `const HTML_COLORS_DEEP_SKY_BLUE*: string`
- `const HTML_COLORS_DODGER_BLUE*: string`
- `const HTML_COLORS_LIGHT_BLUE*: string`
- `const HTML_COLORS_SKY_BLUE*: string`
- `const HTML_COLORS_LIGHT_SKY_BLUE*: string`
- `const HTML_COLORS_MIDNIGHT_BLUE*: string`
- `const HTML_COLORS_NAVY*: string`
- `const HTML_COLORS_DARK_BLUE*: string`
- `const HTML_COLORS_MEDIUM_BLUE*: string`
- `const HTML_COLORS_BLUE*: string`
- `const HTML_COLORS_ROYAL_BLUE*: string`
- `const HTML_COLORS_BLUE_VIOLET*: string`
- `const HTML_COLORS_INDIGO*: string`
- `const HTML_COLORS_DARK_SLATE_BLUE*: string`
- `const HTML_COLORS_SLATE_BLUE*: string`
- `const HTML_COLORS_MEDIUM_SLATE_BLUE*: string`
- `const HTML_COLORS_MEDIUM_PURPLE*: string`
- `const HTML_COLORS_DARK_MAGENTA*: string`
- `const HTML_COLORS_DARK_VIOLET*: string`
- `const HTML_COLORS_DARK_ORCHID*: string`
- `const HTML_COLORS_MEDIUM_ORCHID*: string`
- `const HTML_COLORS_PURPLE*: string`
- `const HTML_COLORS_THISTLE*: string`
- `const HTML_COLORS_PLUM*: string`
- `const HTML_COLORS_VIOLET*: string`
- `const HTML_COLORS_MAGENTA*: string`
- `const HTML_COLORS_ORCHID*: string`
- `const HTML_COLORS_MEDIUM_VIOLET_RED*: string`
- `const HTML_COLORS_PALE_VIOLET_RED*: string`
- `const HTML_COLORS_DEEP_PINK*: string`
- `const HTML_COLORS_HOT_PINK*: string`
- `const HTML_COLORS_LIGHT_PINK*: string`
- `const HTML_COLORS_PINK*: string`
- `const HTML_COLORS_ANTIQUE_WHITE*: string`
- `const HTML_COLORS_BEIGE*: string`
- `const HTML_COLORS_BISQUE*: string`
- `const HTML_COLORS_BLANCHED_ALMOND*: string`
- `const HTML_COLORS_WHEAT*: string`
- `const HTML_COLORS_CORN_SILK*: string`
- `const HTML_COLORS_LEMON_CHIFFON*: string`
- `const HTML_COLORS_LIGHT_GOLDEN_ROD_YELLOW*: string`
- `const HTML_COLORS_LIGHT_YELLOW*: string`
- `const HTML_COLORS_SADDLE_BROWN*: string`
- `const HTML_COLORS_SIENNA*: string`
- `const HTML_COLORS_CHOCOLATE*: string`
- `const HTML_COLORS_PERU*: string`
- `const HTML_COLORS_SANDY_BROWN*: string`
- `const HTML_COLORS_BURLY_WOOD*: string`
- `const HTML_COLORS_TAN*: string`
- `const HTML_COLORS_ROSY_BROWN*: string`
- `const HTML_COLORS_MOCCASIN*: string`
- `const HTML_COLORS_NAVAJO_WHITE*: string`
- `const HTML_COLORS_PEACH_PUFF*: string`
- `const HTML_COLORS_MISTY_ROSE*: string`
- `const HTML_COLORS_LAVENDER_BLUSH*: string`
- `const HTML_COLORS_LINEN*: string`
- `const HTML_COLORS_OLD_LACE*: string`
- `const HTML_COLORS_PAPAYA_WHIP*: string`
- `const HTML_COLORS_SEA_SHELL*: string`
- `const HTML_COLORS_MINT_CREAM*: string`
- `const HTML_COLORS_SLATE_GRAY*: string`
- `const HTML_COLORS_LIGHT_SLATE_GRAY*: string`
- `const HTML_COLORS_LIGHT_STEEL_BLUE*: string`
- `const HTML_COLORS_LAVENDER*: string`
- `const HTML_COLORS_FLORAL_WHITE*: string`
- `const HTML_COLORS_ALICE_BLUE*: string`
- `const HTML_COLORS_GHOST_WHITE*: string`
- `const HTML_COLORS_HONEYDEW*: string`
- `const HTML_COLORS_IVORY*: string`
- `const HTML_COLORS_AZURE*: string`
- `const HTML_COLORS_SNOW*: string`
- `const HTML_COLORS_BLACK*: string`
- `const HTML_COLORS_DIM_GRAY*: string`
- `const HTML_COLORS_GRAY*: string`
- `const HTML_COLORS_DARK_GRAY*: string`
- `const HTML_COLORS_SILVER*: string`
- `const HTML_COLORS_LIGHT_GRAY*: string`
- `const HTML_COLORS_GAINSBORO*: string`
- `const HTML_COLORS_WHITE_SMOKE*: string`
- `const HTML_COLORS_WHITE*: string`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `HTML_COLORS`.
So you can use `HTML_COLORS.WHITE` as value equivalent to `HTML_COLORS_WHITE`, and so on.

## HTML TAGS CONSTANTS

- `const HTML_TAGS_A*: string`
- `const HTML_TAGS_ABBR*: string`
- `const HTML_TAGS_ACRONYM*: string`
- `const HTML_TAGS_ADDRESS*: string`
- `const HTML_TAGS_APPLET*: string`
- `const HTML_TAGS_AREA*: string`
- `const HTML_TAGS_ARTICLE*: string`
- `const HTML_TAGS_ASIDE*: string`
- `const HTML_TAGS_AUDIO*: string`
- `const HTML_TAGS_B*: string`
- `const HTML_TAGS_BASE*: string`
- `const HTML_TAGS_BASEFONT*: string`
- `const HTML_TAGS_BDI*: string`
- `const HTML_TAGS_BDO*: string`
- `const HTML_TAGS_BIG*: string`
- `const HTML_TAGS_BLOCKQUOTE*: string`
- `const HTML_TAGS_BODY*: string`
- `const HTML_TAGS_BR*: string`
- `const HTML_TAGS_BUTTON*: string`
- `const HTML_TAGS_CANVAS*: string`
- `const HTML_TAGS_CAPTION*: string`
- `const HTML_TAGS_CENTER*: string`
- `const HTML_TAGS_CITE*: string`
- `const HTML_TAGS_CODE*: string`
- `const HTML_TAGS_COL*: string`
- `const HTML_TAGS_COLGROUP*: string`
- `const HTML_TAGS_DATALIST*: string`
- `const HTML_TAGS_DD*: string`
- `const HTML_TAGS_DEL*: string`
- `const HTML_TAGS_DETAILS*: string`
- `const HTML_TAGS_DFN*: string`
- `const HTML_TAGS_DIALOG*: string`
- `const HTML_TAGS_DIR*: string`
- `const HTML_TAGS_DIV*: string`
- `const HTML_TAGS_DL*: string`
- `const HTML_TAGS_DT*: string`
- `const HTML_TAGS_EM*: string`
- `const HTML_TAGS_EMBED*: string`
- `const HTML_TAGS_FIELDSET*: string`
- `const HTML_TAGS_FIGCAPTION*: string`
- `const HTML_TAGS_FIGURE*: string`
- `const HTML_TAGS_FONT*: string`
- `const HTML_TAGS_FOOTER*: string`
- `const HTML_TAGS_FORM*: string`
- `const HTML_TAGS_FRAME*: string`
- `const HTML_TAGS_FRAMESET*: string`
- `const HTML_TAGS_H1*: string`
- `const HTML_TAGS_H2*: string`
- `const HTML_TAGS_H3*: string`
- `const HTML_TAGS_H4*: string`
- `const HTML_TAGS_H5*: string`
- `const HTML_TAGS_H6*: string`
- `const HTML_TAGS_HEAD*: string`
- `const HTML_TAGS_HEADER*: string`
- `const HTML_TAGS_HR*: string`
- `const HTML_TAGS_HTML*: string`
- `const HTML_TAGS_I*: string`
- `const HTML_TAGS_IFRAME*: string`
- `const HTML_TAGS_IMG*: string`
- `const HTML_TAGS_INPUT*: string`
- `const HTML_TAGS_INS*: string`
- `const HTML_TAGS_KBD*: string`
- `const HTML_TAGS_LABEL*: string`
- `const HTML_TAGS_LEGEND*: string`
- `const HTML_TAGS_LI*: string`
- `const HTML_TAGS_LINK*: string`
- `const HTML_TAGS_MAIN*: string`
- `const HTML_TAGS_MAP*: string`
- `const HTML_TAGS_MARK*: string`
- `const HTML_TAGS_META*: string`
- `const HTML_TAGS_METER*: string`
- `const HTML_TAGS_NAV*: string`
- `const HTML_TAGS_NOFRAMES*: string`
- `const HTML_TAGS_NOSCRIPT*: string`
- `const HTML_TAGS_OBJECT*: string`
- `const HTML_TAGS_OL*: string`
- `const HTML_TAGS_OPTGROUP*: string`
- `const HTML_TAGS_OPTION*: string`
- `const HTML_TAGS_OUTPUT*: string`
- `const HTML_TAGS_P*: string`
- `const HTML_TAGS_PARAM*: string`
- `const HTML_TAGS_PRE*: string`
- `const HTML_TAGS_PROGRESS*: string`
- `const HTML_TAGS_Q*: string`
- `const HTML_TAGS_RP*: string`
- `const HTML_TAGS_RT*: string`
- `const HTML_TAGS_RUBY*: string`
- `const HTML_TAGS_S*: string`
- `const HTML_TAGS_SAMP*: string`
- `const HTML_TAGS_SCRIPT*: string`
- `const HTML_TAGS_SECTION*: string`
- `const HTML_TAGS_SELECT*: string`
- `const HTML_TAGS_SMALL*: string`
- `const HTML_TAGS_SOURCE*: string`
- `const HTML_TAGS_SPAN*: string`
- `const HTML_TAGS_STRIKE*: string`
- `const HTML_TAGS_STRONG*: string`
- `const HTML_TAGS_STYLE*: string`
- `const HTML_TAGS_SUB*: string`
- `const HTML_TAGS_SUMMARY*: string`
- `const HTML_TAGS_SUP*: string`
- `const HTML_TAGS_TABLE*: string`
- `const HTML_TAGS_TBODY*: string`
- `const HTML_TAGS_TD*: string`
- `const HTML_TAGS_TEXTAREA*: string`
- `const HTML_TAGS_TFOOT*: string`
- `const HTML_TAGS_TH*: string`
- `const HTML_TAGS_THEAD*: string`
- `const HTML_TAGS_TIME*: string`
- `const HTML_TAGS_TITLE*: string`
- `const HTML_TAGS_TR*: string`
- `const HTML_TAGS_TRACK*: string`
- `const HTML_TAGS_TT*: string`
- `const HTML_TAGS_U*: string`
- `const HTML_TAGS_UL*: string`
- `const HTML_TAGS_VAR*: string`
- `const HTML_TAGS_VIDEO*: string`
- `const HTML_TAGS_WBR*: string`

### NAMESPACED CONST

The preceding constants are also grouped into a "namespaced" constant under the name of `HTML_TAGS`.
So you can use `HTML_TAGS.A` as value equivalent to `HTML_TAGS_A`, and so on.

## TYPES

### SHORTHANDINFO

**SIGNATURE**

```nim
  TShorthandInfo = object
    tag*: string
    id*: string
    classes*: seq[string]
  ShorthandInfo* = ref TShorthandInfo
```

**DESCRIPTION**

*This type holds the resulting information of the shorthand notation parsing containing the tag, the id and the classes included in it.*

## ROUTINES

### PARSESHORTHAND

**SIGNATURE**

`proc parseShorthand*(shorthandNotation: string): ShorthandInfo`

**DESCRIPTION**

*Parses the supplied html shorthand notation string storing the resulting information in a ShorthandInfo instance.*

**USAGE**

```nim
    let x = parseShorthand("textarea#hey.classA.classB")
    if x != nil:
      echo "parsed ok"
    if x.tag == "textarea":
      echo "parsed a textarea"
    if x.id == "hey":
      echo "parsed an element with id 'hey'"
    if x.classes.len == 2:
      echo "parsed an element with 2 classes"
```

### COMPILESHORTHAND (WITHOUT CONTENT)

**SIGNATURE**

`proc compileShorthand*(shorthandNotation: string): string`

**DESCRIPTION**

*Compiles the provided shorthand notation string to an html element without any content.*

**USAGE**

```nim
  let node = "<div id=\'test\' class=\'classA classB\'/>"
  if compileShorthand("div#test.classA.classB") == node:
    echo "the html node was generated correctly"
```

### COMPILESHORTHAND (WITH CONTENT)

**SIGNATURE**

`proc compileShorthand*(shorthandNotation: string, content: string): string`

**DESCRIPTION**

*Compiles the provided shorthand notation string to an html element containing the supplied content.*

**USAGE**

```nim
  let node = "<div id=\'test\' class=\'classA classB\'>blah</div>"
  if compileShorthand("div#test.classA.classB", "blah") == node:
    echo "the html node was generated correctly"
```
