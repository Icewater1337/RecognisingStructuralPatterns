statements
definition
	^('<' asParser / '</' asParser /'>' asParser) negate, '=' asParser negate star , '=' asParser, quotationMark, quotationMark negate star, quotationMark