as yet unclassified
keywordValuePair
 	^ (KeyValueParserFactory new)
		key: StringParserFactory doubleQuoteString;
		delimiter: $: asParser;
		value: StringParserFactory doubleQuoteString/ jsonArray /jsonObject / StringParserFactory identifier / StringParserFactory identifierDigit;
		generateParser