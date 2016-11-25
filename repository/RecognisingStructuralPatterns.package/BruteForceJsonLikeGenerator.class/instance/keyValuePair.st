as yet unclassified
keyValuePair
	^ (BruteForceKeyValueGenerator new)
		keys: string / {StringParserFactory identifier }/ {StringParserFactory identifierDigit};
		delimiters: #($:);
		values: string /list / list1 / {StringParserFactory identifier }/ {StringParserFactory identifierDigit} / {NilParserFactory new} ;
		yourself