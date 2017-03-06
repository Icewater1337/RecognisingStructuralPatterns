accessing
keyValuePair
	^ (BruteForceKeyValueGenerator new)
		keys: string / {StringParserFactory identifier }/ {StringParserFactory identifierDigit};
		delimiters: #($:);
		values: string /innerList / outerList / {StringParserFactory identifier }/ {StringParserFactory identifierDigit} / {NilParserFactory new} ;
		yourself