as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string / {StringGenerator identifier }/ {StringGenerator identifierDigit};
		values: string / {NilGenerator new};
		delimiters: #($:);
		yourself
