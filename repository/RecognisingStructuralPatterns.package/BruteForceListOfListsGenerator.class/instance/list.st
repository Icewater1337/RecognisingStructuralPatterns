accessing
list
	^ (BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: #($,);
		elements: list  / { NilParserFactory new } ;
		yourself