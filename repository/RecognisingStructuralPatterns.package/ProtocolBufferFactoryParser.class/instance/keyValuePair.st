accessing
keyValuePair
	|delim|
	delim:= $= asParser.
	
	^(KeyValueParserFactory new) 
		key: StringParserFactory identifier;
		value: NilParserFactory new generateParser;"($; asParser negate star) flatten ==> [:e |
			(RawText new)
				contents: e;
				yourself];"
		delimiter: delim;
		generateParser.
	