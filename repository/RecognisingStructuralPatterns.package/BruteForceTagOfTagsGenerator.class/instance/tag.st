accessing
tag
	^ (BruteForceTagGenerator new)
		begins: begins;
		ends: ends;
		endTagSymbols: #($/);
		elements: tag  / {StringParserFactory identifier }/{StringParserFactory identifierDigit }/  { NilParserFactory new };
		yourself