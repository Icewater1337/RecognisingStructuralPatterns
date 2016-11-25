statements
attribute
	^(('<' asParser / '</' asParser /'>' asParser / '/>' asParser) negate flatten, '=' asParser negate star , '=' asParser, (StringGenerator doubleQuoteString))trim star
	"==> [ :att |  att first, att second, ', ']"