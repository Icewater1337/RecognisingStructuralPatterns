accessing
list
	^ (ListParserFactory new)
		begins: ${ asParser trim token ;
		end: $} asParser ;
		delimiter: $; asParser;
		element:    keyValuePair /command"/ StringParserFactory identifier / NilParserFactory new generateParser";
		generateParser.