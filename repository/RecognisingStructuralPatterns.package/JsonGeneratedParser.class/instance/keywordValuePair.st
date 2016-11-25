as yet unclassified
keywordValuePair
 	^ (KeyValueGenerator new)
		key: StringGenerator doubleQuoteString;
		delimiter: $: asParser;
		value: StringGenerator doubleQuoteString/ jsonArray /jsonObject / StringGenerator identifier / StringGenerator identifierDigit;
		generateParser