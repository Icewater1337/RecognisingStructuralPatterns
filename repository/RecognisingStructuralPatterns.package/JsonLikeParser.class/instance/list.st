as yet unclassified
list
	^ (ListGenerator new)
		begin: $[ asParser;
		end: $] asParser;
		delimiter: $, asParser;
		element: string / list;
		generateParser