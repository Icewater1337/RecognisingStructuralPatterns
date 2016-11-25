elements
string
	^ '@string' asParser / '@String' asParser
		, ('(' asParser / '{' asParser) trim , '=' asParser negate star
		, '=' asParser trim , quotesBlock trim
		, (')' asParser / '}' asParser)