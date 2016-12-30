accessing
keyValuePair
	|delim|
	delim:= $: asParser.
	
	^(KeyValueParserFactory new) 
		key: StringParserFactory identifier/ StringParserFactory identifierDigit;
		value:  StringParserFactory identifier / NilParserFactory new generateParser ;
		delimiter: delim;
		generateParser.
	