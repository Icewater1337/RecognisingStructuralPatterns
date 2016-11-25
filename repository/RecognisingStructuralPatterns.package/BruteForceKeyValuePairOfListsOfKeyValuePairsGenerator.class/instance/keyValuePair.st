as yet unclassified
keyValuePair
	^ (BruteForceKeyValueGenerator new)
		keys: string;
		delimiters: #($:);
		values: list / string;
		yourself