# xam
a multipurpose productivity library for nim

## MOTIVATION
> *"If you want more effective programmers, you will discover that they should not waste their time debugging, they should not introduce the bugs to starth with."*
- Edger Dijkstra, The Humble Programmer, 1972

## CHARACTERISTICS

* no external dependencies (just nim)
* self-documenting api (descriptive long proc names)
* full unit testing
* markdown documentation (TODO)
> based on my Java Ace project https://github.com/j-a-s-d/ace

## MODULES

All the following modules are included in xam (no extra includes are required):

* `ansi`, *ansi related routines*
* `bytes`, *bytes related constants*
* `callbacks`, *common callback declarations*
* `chars`, *chars related constants*
* `datetime`, *datetime related constants and routines*
* `hex`, *hex related constants*
* `htmlcolors`, *html colors related constants*
* `jsons`, *json related constants and routines*
* `looping`, *looping related routines*
* `maths`, *math related constants and routines*
* `multiplatform`, *multiplatform aliases (only harmless ones)*
* `parsing`, *parsing helper routines*
* `semanticversion`, *semantic version object*
* `seqstack`, *seq js-like stack routines*
* `sizes`, *sizes constants and routines*
* `strings`, *strings constants and routines*

## HISTORY
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
	- added `xam` silent routine
	- added `multiplatform` c/cpp-like boolean operators templates
* 13-02-21 *[0.2.0]*
	- added `jsons` constants and routines
* 08-02-21 *[0.1.4]*
	- added `datetime` constants and routines
	- added `looping` routines
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
