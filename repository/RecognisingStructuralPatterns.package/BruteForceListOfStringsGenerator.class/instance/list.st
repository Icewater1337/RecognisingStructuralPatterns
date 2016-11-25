accessing
list
	^ (BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: #($,);
		elements: string  / { NilParserFactory new };
		yourself
