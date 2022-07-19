# xam
a multipurpose productivity library for nim

## MOTIVATION
> *"If you want more effective programmers, you will discover that they should not waste their time debugging, they should not introduce the bugs to starth with."*
- Edger Dijkstra, The Humble Programmer, 1972

## CHARACTERISTICS

* no external dependencies (just nim)
* self-documenting api (descriptive long proc names)
* full unit testing
* markdown documentation
> based on my Java Ace project https://github.com/j-a-s-d/ace

## MODULES

All the following modules are included in xam (no extra includes are required):

* [`xam`](docs/xam.md), *general features*
* [`ansi`](docs/ansi.md), *ansi related routines*
* [`bytes`](docs/bytes.md), *bytes related constants*
* [`callbacks`](docs/callbacks.md), *common callback declarations*
* [`chars`](docs/chars.md), *chars related constants*
* [`time`](docs/time.md), *time related constants and routines*
* [`exceptions`](docs/exceptions.md), *exceptions related routines*
* [`files`](docs/files.md), *files related routines*
* [`directories`](docs/directories.md), *directories related routines*
* [`hex`](docs/hex.md), *hex related constants*
* [`html`](docs/html.md), *html related constants and routines*
* [`jsons`](docs/jsons.md), *json related constants and routines*
* [`languages`](docs/languages.md), *languages related constants*
* [`looping`](docs/looping.md), *looping related routines*
* [`maths`](docs/maths.md), *math related constants and routines*
* [`multiplatform`](docs/multiplatform.md), *multiplatform aliases (only harmless ones)*
* [`nimlang`](docs/nimlang.md), *nimlang related constants and routines*
* [`semanticversion`](docs/semanticversion.md), *semantic version object*
* [`seqs`](docs/seqs.md), *sequences related routines*
* [`set`](docs/set.md), *sequences related routines*
* [`sizes`](docs/sizes.md), *sizes related constants and routines*
* [`strings`](docs/strings.md), *strings related constants and routines*
* [`structures`](docs/structures.md), *structures related routines*
* [`temp`](docs/temp.md), *temporary files related constants and routines*

## RELATED

Also check my projects which use `xam` as a dependency:

* [`rodster`](https://github.com/j-a-s-d/rodster), my application framework for nim
* [`webrod`](https://github.com/j-a-s-d/webrod), my http server for nim
* [`preprod`](https://github.com/j-a-s-d/preprod), my customizable preprocessor for nim

## HISTORY
* 19-07-22 *[1.9.3]*
	- added `seqs` prepend routine
	- added `multiplatform` zig unreachable-like code marker alias
* 16-06-22 *[1.9.2]*
	- added `jsons` wrapInJArray overloads supporting native types
	- added `jsons` JObjectBuilder setAll and putAll methods supporting json object
	- added `jsons` JObjectBuilder constructor overloads
	- added `jsons` JArrayBuilder addAll and appendAll methods supporting native types
	- added `jsons` JArrayBuilder addValues and appendValues methods supporting json array
	- added `jsons` JArrayBuilder constructor overloads
* 24-05-22 *[1.9.1]*
	- added `exceptions` ExceptionRef type
	- changed `seqs` peek and slice methods not to require a var sequence to operate
* 21-05-22 *[1.9.0]*
	- added `seqs` date time and json node sequences definitions and constructors
	- added `callbacks` date time callback definition
	- changed "namespaced let code" constants to "namespaced regular const" to allow optionally declaration (ex. let ALL_HTML_COLORS*: tuple = HTML_COLORS) of the let
	- added `multiplatform` delphi/cppbuilder/fpc-like FreeAndNil alias
	- added `multiplatform` c/cpp/etc-like argc arguments count and argc arguments vector alias
	- added `multiplatform` c#/javascript/swift/powershell/etc-like null coalescing operator
* 17-05-22 *[1.8.1]*
	- added `files` extractFileExtension and checkFileExtension routines
	- added `directories` ensureDir routine
* 04-05-22 *[1.8.0]*
	- added `structures` routines
	- added `languages` constants
* 25-04-22 *[1.7.4]*
	- added `jsons` size fluent methods to JsonArrayBuilder and JsonObjectBuilder
* 24-04-22 *[1.7.3]*
	- added `jsons` ensureJsonNode routine
	- added `jsons` addAll and appendAll methods for JsonArrayBuilder supporting varargs[JsonNode]
	- improved `sizes` implementation
* 02-03-22 *[1.7.2]*
	- added `files` filesExist, filesDontExist and removeFiles routines
	- added `directories` routines
* 23-01-22 *[1.7.1]*
	- added `semanticversion` isValidSemanticVersionString routine
* 15-01-22 *[1.7.0]*
	- added `sets` common types definitions
	- added `strings` STRINGS_BACKTICK and STRINGS_DIAERESIS constants
* 03-01-22 *[1.6.2]*
	- added `xam` exchange template
	- inlined `strings` piped, tabbed, spaced and lined routines
* 02-01-22 *[1.6.1]*
	- added `xam` withIt template
	- added `strings` piped, tabbed, spaced and lined routines
* 26-12-21 *[1.6.0]*
	- added `xam` noop, truthy and falsy dummy functions
	- added `nimlang` constants and routines
	- added `math` VALUE_TAU constant
	- added `callbacks` void proc callback definitions
	- added `seqs` append, isEmpty and hasContent routines
	- added `strings` stripLeft, stripRight, isEmpty and areEmpty routines
	- added `multiplatform` ruby-like unless template
	- added `multiplatform` pyhton/boo/gdscript-like pass template
	- added `multiplatform` some pascal/c#/js-like string manipulation templates
* 28-08-21 *[1.5.0]*
	- added `time` constants and routines
	- added `chronometer` into `time`
	- included `datetime` into `time`
* 01-08-21 *[1.4.2]*
	- added `jsons` ensureJObject and ensureJArray routines
* 24-07-21 *[1.4.1]*
	- added `semanticversion` isMajorNewerThan, isMinorNewerThan and isPatchNewerThan routines
* 14-07-21 *[1.4.0]*
	- added `callbacks` taker and treater callback definitions
	- added `looping` forever, times and json array each/meach templates
	- added `multiplatform` type aliases
	- added `seqs` treat routine
	- added `strings` between routine
* 11-07-21 *[1.3.0]*
	- added `callbacks` json node callback definition
	- added `seqs` remove routines
	- added `seqs` concrete-type sequence constructors
	- added `strings` csv routines
	- improved the markdown documentation for `jsons` and `seqs`
* 30-05-21 *[1.2.0]*
	- added `files` routines
* 26-05-21 *[1.1.1]*
	- added `exceptions` throw procedure overload with empty message
	- added `exceptions` tryIt template
* 22-05-21 *[1.1.0]*
	- added `temp` constants and routines
	- added `semanticversion` equalsTo, isNewerThan and isOlderThan string overloads
* 23-04-21 *[1.0.1]*
	- adjusted the primary source structure since `nimble check` did not recognized the includes
* 06-04-21 *[1.0.0]*
	- improved the markdown documentation for `multiplatform` and `jsons`
	- added `multiplatform` more "nil constant"-like aliases
* 05-04-21 *[0.9.2]*
	- added test.sh shell script file
	- added "namespaced let code" constants for all "strongnamed const data" constants in the packages `ansi`, `bytes`, `chars`, `datetime`, `hex`, `html`, `sizes` and `strings`
* 04-04-21 *[0.9.1]*
	- improved the markdown documentation for `jsons`
	- refactored `ansi` into individual includes
* 03-04-21 *[0.9.0]*
	- improved the markdown documentation for `jsons`
	- added `jsons` model and builders clear routines
	- added `jsons` model len routine
	- added `jsons` object builder put routines
* 31-03-21 *[0.8.1]*
	- improved the markdown documentation for `seqs`
	- improved `seqs` js stack-like slice support
* 30-03-21 *[0.8.0]*
	- improved the markdown documentation for `seqs`
	- added `seqs` common types definitions
	- added `seqs` csv routines
	- added used pragma to all the templates provided
* 28-03-21 *[0.7.3]*
	- improved the markdown documentation for `semanticversion` and `jsons`
	- added `looping` meach template
* 26-03-21 *[0.7.2]*
	- improved the markdown documentation for `xam`, `ansi`, `bytes`, `callbacks`, `chars`, `datetime`, `exceptions`, `hex`, `html`, `looping`, `math`, `sizes` and `strings`
	- added `exceptions` throw routine
* 21-03-21 *[0.7.1]*
	- added the markdown documentation structure
	- added `multiplatform` c/pascal/basic-like string concatenation template
* 15-03-21 *[0.7.0]*
	- added `xam` use template
	- refactored `xam`
	- added `multiplatform` shutdown routines
	- added `multiplatform` pascal-like variable assignation template
* 08-03-21 *[0.6.0]*
	- added `xam` isUndefined, inCompileTime and inRunTime templates
	- refactored `multiplatform` into individual includes
	- added `multiplatform` introspection aliases
* 07-03-21 *[0.5.0]*
    - added `jsons` serialization and deserialization in model
	- added `jsons` mandatory untyped fields in model
* 03-03-21 *[0.4.2]*
	- added `multiplatform` sugar's fat arrow functions syntax reexport
	- added `xam` inlined template
* 28-02-21 *[0.4.1]*
	- added `jsons` fluent api for model
	- refactored `xam` into individual includes
	- refactored `seqs` into individual includes
	- refactored `strings` into individual includes
* 27-02-21 *[0.4.0]*
	- refactored `hmtl` into individual includes
* 26-02-21 *[0.3.3]*
	- added `jsons` loadJsonNodeFromFile and saveJsonNodeToFile routines
	- added `exceptions` catch routine
* 23-02-21 *[0.3.2]*
	- added `jsons` jmeInvalidNode error for model
* 22-02-21 *[0.3.1]*
	- refactored `maths` into individual includes
	- included `parsing` into `maths`
	- added `jsons` tryParseJson routine
* 21-02-21 *[0.3.0]*
	- refactored `jsons` into individual includes
	- published `jsons` obtainNode* routines
	- added `jsons` incremental builders for objects and arrays
	- added `jsons` objects modelling validation
* 14-02-21 *[0.2.1]*
	- added `exceptions` silent routine
	- added `multiplatform` c/cpp-like boolean operators templates
* 13-02-21 *[0.2.0]*
	- added `jsons` constants and routines
* 08-02-21 *[0.1.4]*
	- added `datetime` constants and routines
	- added `looping` templates
	- added `multiplatform` golang-like shorthand variable declaration template
* 06-02-21 *[0.1.3]*
	- added `seqstack` extract routine
	- improved `seqstack` drop routine
	- improved `xam` pragmas
* 04-02-21 *[0.1.2]*
	- added `maths` common degrees constants
* 02-02-21 *[0.1.1]*
	- added `maths` floatIsNaN routine
* 28-01-21 *[0.1.0]*
	- first public release
* 14-01-21 *[0.0.1]*
	- started coding
