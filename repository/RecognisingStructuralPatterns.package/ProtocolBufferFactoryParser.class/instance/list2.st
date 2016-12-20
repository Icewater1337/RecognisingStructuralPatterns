accessing
list2
	^ (ListParserFactory new)
		begin: $( asParser token ;
		end: $) asParser ;
		delimiter: $: asParser;
		element:    keyValuePair / StringParserFactory identifier / NilParserFactory new generateParser;
		generateParser.