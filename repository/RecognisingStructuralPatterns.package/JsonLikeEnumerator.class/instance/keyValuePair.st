as yet unclassified
keyValuePair
	^ (KeyValueEnumerator new)
		keys: string / {StringGenerator identifier }/ {StringGenerator identifierDigit};
		delimiters: #($:);
		values: list / list1 / string /{StringGenerator identifier }/ {StringGenerator identifierDigit} / {NilGenerator new} ;
		yourself