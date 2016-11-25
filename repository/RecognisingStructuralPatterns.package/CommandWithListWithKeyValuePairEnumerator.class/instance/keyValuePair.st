as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: {StringGenerator new generateParser};
		values: string;
		delimiters: #($:);
		yourself
