accessing
tag
	^ (BruteForceTagGenerator new)
		begins: begins;
		ends: ends;
		endTagSymbols: #($/);
		elements: string1 /tag  /  { NilParserFactory new };
		yourself