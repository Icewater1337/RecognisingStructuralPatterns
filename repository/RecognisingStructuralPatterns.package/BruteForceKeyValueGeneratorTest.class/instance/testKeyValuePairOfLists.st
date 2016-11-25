as yet unclassified
testKeyValuePairOfLists
	| parsers |
	enumerator := BruteForceKeyValueGenerator new.
	enumerator keys: {NilParserFactory new generateParser}.
	enumerator values: BruteForceListGenerator new generate.

	parsers := enumerator generate.
	
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '"foo":("bar1","bar2")' ]
