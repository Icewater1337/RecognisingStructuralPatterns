as yet unclassified
testSimpleKeyValuePairWithStrings
	|  parsers |
	enumerator := BruteForceKeyValueGenerator new.
	enumerator keys: BruteForceStringGenerator new.
	enumerator values: BruteForceStringGenerator new.
	parsers := enumerator generate.
	
	

	self assert: parsers anySatisfy: [ :parser  | parser matches: '"hallo":"velo"' ].
		self assert: parsers anySatisfy: [ :parser  | parser matches: '''hallo'':"velo"' ].