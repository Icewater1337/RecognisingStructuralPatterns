as yet unclassified
command
	^ (BruteForceCommandGenerator new)
		keys: {NilParserFactory new};
		arguments: list ;
		yourself