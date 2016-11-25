as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string / {StringGenerator identifier }/ {StringGenerator identifierDigit};
		delimiters: #($:);
		values: string /list / list1 / {StringGenerator identifier }/ {StringGenerator identifierDigit} / {NilGenerator new} ;
		yourself