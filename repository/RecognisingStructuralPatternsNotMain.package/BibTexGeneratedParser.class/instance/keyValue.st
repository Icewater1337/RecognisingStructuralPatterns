as yet unclassified
keyValue
 	^ (KeyValueParserFactory new)
		key: ((#word asParser star)token  ==> [ :_e | (RawText new)
	contents: _e inputValue;
	yourself] );
	delimiter: $= asParser;
	value:  list /string/ StringParserFactory identifier/ NilParserFactory new generateParser;
	generateParser