as yet unclassified
list
	^ (ListParserFactory new)
		begin: $[ asParser token;
		end: $] asParser;
		delimiter: $, asParser;
		element: string / list;
		generateParser