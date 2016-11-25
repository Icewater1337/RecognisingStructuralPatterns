as yet unclassified
testTagSeas
	| listEnumerator parsers |
	listEnumerator := BruteForceTagGenerator new.
	listEnumerator elements: { NilParserFactory new generateParser}.

	parsers := listEnumerator generate.

	self assert: parsers anySatisfy: [ :parser  | parser end matches: '<a>/%///&</a>' ]
