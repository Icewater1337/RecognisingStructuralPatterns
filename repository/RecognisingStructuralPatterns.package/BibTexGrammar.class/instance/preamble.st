elements
preamble
	^ '@' asParser
		, 'Preamble' asParser,  '{' asParser , varName , '}' asParser negate star , '}' asParser, ','asParser optional