as yet unclassified
keyValuePair
	|delim|
	delim:= $: asParser.
	
	^(KeyValueGenerator new) 
		key: StringGenerator identifier;
		value: NilGenerator new generateParser;
		delimiter: delim;
		generateParser.
	