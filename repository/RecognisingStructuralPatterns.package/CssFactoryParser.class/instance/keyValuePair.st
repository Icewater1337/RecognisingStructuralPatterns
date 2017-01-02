accessing
keyValuePair
	|delim|
	delim:= $: asParser.
	
	^(KeyValueParserFactory new) 
		key: StringParserFactory identifier/ StringParserFactory identifierDigit;
		value:  (${ asParser/ $; asParser / $} asParser )negate star flatten trim ==> [ :e |
		(RawText new)
			contents: e;
			yourself];
		delimiter: delim;
		generateParser.
	