as yet unclassified
keyValuePair
	|delim|
	delim:= $: asParser.
	
	^(KeyValueGenerator new) 
		key: (#word asParser star)flatten;
		value: NilGenerator new generateParser;
		delimiter: delim;
		generateParser.
	