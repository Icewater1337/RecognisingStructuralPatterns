as yet unclassified
list
	^ (ListParserFactory new)
		begins: $[ asParser token;
		end: $] asParser;
		delimiter: $, asParser;
		element: string / list;
		generateParser