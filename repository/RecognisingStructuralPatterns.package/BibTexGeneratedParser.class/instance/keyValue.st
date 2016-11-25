as yet unclassified
keyValue
 	^ (KeyValueGenerator new)
		key: ((#word asParser star)token  ==> [ :_e | (RawText new)
	contents: _e inputValue;
	yourself] );
	delimiter: $= asParser;
	value: ($} asParser not, $, asParser not, NilGenerator whatever);
	generateParser