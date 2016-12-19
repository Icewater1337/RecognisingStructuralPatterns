accessing
keyValuePair
	|delim|
	delim:= $: asParser.
	
	^(KeyValueParserFactory new) 
		key: StringParserFactory identifier;
		value: NilParserFactory new generateParser;
		delimiter: delim;
		generateParser.
	