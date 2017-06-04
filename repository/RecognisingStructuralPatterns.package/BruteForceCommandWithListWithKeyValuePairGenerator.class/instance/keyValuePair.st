accessing
keyValuePair
	^ (BruteForceKeyValueGenerator new)
		keys: string / {StringParserFactory identifier }/ {StringParserFactory identifierDigit};
		values:  string / list/ {((NegateParserFactory new)
						negateChar:${ asParser/ $; asParser / $} asParser;
						yourself)};
		delimiters: delimiters;
		yourself
