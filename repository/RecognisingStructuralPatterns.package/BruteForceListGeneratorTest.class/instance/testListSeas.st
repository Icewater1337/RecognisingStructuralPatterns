as yet unclassified
testListSeas
	| listEnumerator parsers |
	listEnumerator := BruteForceListGenerator new.
	listEnumerator elements: { NilParserFactory new }.

	parsers := listEnumerator enumerate.

	self assert: parsers anySatisfy: [ :parser  | parser end matches: '(foo, 123)' ]
