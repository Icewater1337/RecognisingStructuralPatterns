as yet unclassified
testTagSeas
	| listEnumerator parsers |
	listEnumerator := TagEnumerator new.
	listEnumerator elements: { NilGenerator new generateParser}.

	parsers := listEnumerator enumerate.

	self assert: parsers anySatisfy: [ :parser  | parser end matches: '<a>/%///&</a>' ]
