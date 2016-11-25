as yet unclassified
testListSeas
	| listEnumerator parsers |
	listEnumerator := ListEnumerator new.
	listEnumerator elements: { NilGenerator new }.

	parsers := listEnumerator enumerate.

	self assert: parsers anySatisfy: [ :parser  | parser end matches: '(foo, 123)' ]
