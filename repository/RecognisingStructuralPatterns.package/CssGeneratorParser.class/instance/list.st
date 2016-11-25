as yet unclassified
list
	^ (ListGenerator new)
		begin: ${ asParser token;
		end: $} asParser;
		delimiter: $; asParser;
		element:  keyValuePair / command;
		generateParser.