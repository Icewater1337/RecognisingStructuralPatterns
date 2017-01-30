accessing
command
	^ (BruteForceCommandGenerator new)
		keys:{NilParserFactory new};
		arguments: list ;
		yourself