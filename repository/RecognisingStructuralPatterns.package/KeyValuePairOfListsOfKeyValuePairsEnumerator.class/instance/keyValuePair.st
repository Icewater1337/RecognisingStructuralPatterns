as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string;
		delimiters: #($:);
		values: list / string;
		yourself