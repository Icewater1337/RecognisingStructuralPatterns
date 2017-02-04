accessing
list2
	^ (ListParserFactory new)
		begins: $( asParser token ;
		end: $) asParser ;
		delimiter: $: asParser;
		element:    keyValuePair / StringParserFactory identifier / NilParserFactory new generateParser;
		generateParser.