accessing
keyValuePair
	^ (BruteForceKeyValueGenerator new)
		keys: string / {StringParserFactory identifier }/ {StringParserFactory identifierDigit};
		values:  string / list/ {NilParserFactory new};
		delimiters: #($: $=);
		yourself
