as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string;
		delimiters: #($:);
		values: list / list1 / string / {(NilGeneratorDelimiter new
	delimiter:','
	yourself) generateParser};
		yourself