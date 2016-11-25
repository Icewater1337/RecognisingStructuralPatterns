as yet unclassified
testSimpleKeyValuePairWithStrings
	|  parsers |
	enumerator := KeyValueEnumerator new.
	enumerator keys: StringEnumerator new.
	enumerator values: StringEnumerator new.
	parsers := enumerator enumerate.
	
	

	self assert: parsers anySatisfy: [ :parser  | parser matches: '"hallo":"velo"' ].
		self assert: parsers anySatisfy: [ :parser  | parser matches: '''hallo'':"velo"' ].