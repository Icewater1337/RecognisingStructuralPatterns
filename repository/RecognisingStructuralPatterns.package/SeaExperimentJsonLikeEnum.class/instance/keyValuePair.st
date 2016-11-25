as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string;
		delimiters: #($:);
		values: list / list1 / string / {"fixme"};
		yourself