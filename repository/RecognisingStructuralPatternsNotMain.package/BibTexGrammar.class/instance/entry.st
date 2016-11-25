elements
entry
	^ '@' asParser
		, tagName,  '{' asParser , varName , nameValuePair trim star, '}' asParser, ','asParser optional
		