accessing
tag
	^ (BruteForceTagGenerator new)
		begins: begins;
		ends: ends;
		endTagSymbols: #($/);
		elements: singleLineTag /tag  /  { NilParserFactory new };
		yourself