accessing
tag
	^ (BruteForceTagGenerator new)
		begins: begins;
		ends: ends;
		endTagSymbols: #($/);
		elements: tag  / { NilParserFactory new };
		yourself