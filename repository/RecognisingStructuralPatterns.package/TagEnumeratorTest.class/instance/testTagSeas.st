as yet unclassified
testTagSeas
	| listEnumerator parsers |
	listEnumerator := ListEnumerator new.
	listEnumerator elements: { NilGenerator new }.

	parsers := listEnumerator generate.

	self assert: parsers anySatisfy: [ :parser  | parser end matches: '(foo, 123)' ]
