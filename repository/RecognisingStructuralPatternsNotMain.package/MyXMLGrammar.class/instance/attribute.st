statements
attribute
	^(('<' asParser / '</' asParser /'>' asParser / '/>' asParser) negate flatten, '=' asParser negate star , '=' asParser, (StringParserFactory doubleQuoteString))trim star
	"==> [ :att |  att first, att second, ', ']"