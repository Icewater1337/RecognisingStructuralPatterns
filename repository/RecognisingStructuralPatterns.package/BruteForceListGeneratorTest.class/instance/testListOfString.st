as yet unclassified
testListOfString
	| parsers |
	enumerator := BruteForceListGenerator new.
	enumerator elements: BruteForceStringGenerator new.

	parsers := enumerator enumerate.
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '("bar", "foo")' ]
