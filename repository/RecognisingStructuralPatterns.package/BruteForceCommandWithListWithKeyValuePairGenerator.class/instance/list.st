accessing
list
	^ (BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: delimiters;
		elements: keyValuePair /command / {StringParserFactory identifier}/ {NilParserFactory new} ;
		yourself
