accessing
list
	^ (ListParserFactory new)
		begin: ${ asParser token ;
		end: $} asParser ;
		delimiter: $; asParser;
		element:    keyValuePair /command/ StringParserFactory identifier / NilParserFactory new generateParser;
		generateParser.