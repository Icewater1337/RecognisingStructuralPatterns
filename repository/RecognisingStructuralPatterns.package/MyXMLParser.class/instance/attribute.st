statements
attribute
	^('<' asParser / '</' asParser /'>' asParser / '/>' asParser) negate flatten, '=' asParser negate star , '=' asParser, quotationMark, quotationMark negate star, quotationMark 
	"==> [ :att |  att first, att second, ', ']"