accessing
list
	^ (BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: #($,);
		elements: keyValuePair / string;
		yourself