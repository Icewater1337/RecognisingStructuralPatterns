as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string;
		delimiters: #($,);
		values: {list / keyValuePair};
		yourself