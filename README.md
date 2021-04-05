# xam
a multipurpose productivity library for nim

## MOTIVATION
> *"If you want more effective programmers, you will discover that they should not waste their time debugging, they should not introduce the bugs to starth with."*
- Edger Dijkstra, The Humble Programmer, 1972

## CHARACTERISTICS

* no external dependencies (just nim)
* self-documenting api (descriptive long proc names)
* full unit testing
* markdown documentation -- *in progress*
> based on my Java Ace project https://github.com/j-a-s-d/ace

## MODULES

All the following modules are included in xam (no extra includes are required):

* [`xam`](docs/xam.md), *general features*
* [`ansi`](docs/ansi.md), *ansi related routines*
* [`bytes`](docs/bytes.md), *bytes related constants*
* [`callbacks`](docs/callbacks.md), *common callback declarations*
* [`chars`](docs/chars.md), *chars related constants*
* [`datetime`](docs/datetime.md), *datetime related constants and routines*
* [`exceptions`](docs/exceptions.md), *exceptions related routines*
* [`hex`](docs/hex.md), *hex related constants*
* [`html`](docs/html.md), *html related constants and routines*
* [`jsons`](docs/jsons.md), *json related constants and routines*
* [`looping`](docs/looping.md), *looping related routines*
* [`maths`](docs/maths.md), *math related constants and routines*
* [`multiplatform`](docs/multiplatform.md), *multiplatform aliases (only harmless ones)*
* [`semanticversion`](docs/semanticversion.md), *semantic version object*
* [`seqs`](docs/seqs.md), *sequences related routines*
* [`sizes`](docs/sizes.md), *sizes related constants and routines*
* [`strings`](docs/strings.md), *strings related constants and routines*

## HISTORY
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
