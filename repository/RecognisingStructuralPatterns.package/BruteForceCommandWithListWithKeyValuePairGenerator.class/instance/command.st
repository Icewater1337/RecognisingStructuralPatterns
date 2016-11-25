accessing
command
	^ (BruteForceCommandGenerator new)
		keys:{NilParserFactory new generateParser};
		arguments: list ;
		yourself