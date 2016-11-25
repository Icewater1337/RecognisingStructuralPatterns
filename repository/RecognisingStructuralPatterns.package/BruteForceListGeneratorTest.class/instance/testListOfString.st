as yet unclassified
testListOfString
	| parsers |
	enumerator := BruteForceListGenerator new.
	enumerator elements: BruteForceStringGenerator new.

	parsers := enumerator generate.
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '("bar", "foo")' ]
