as yet unclassified
keyValue
 	^ (KeyValueGenerator new)
		key: ((#word asParser star)token  ==> [ :_e | (RawText new)
	contents: _e inputValue;
	yourself] );
	delimiter: $= asParser;
	value:  list /string/ StringGenerator identifier/ NilGenerator new generateParser;
	generateParser