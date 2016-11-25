as yet unclassified
testListOfString
	| parsers |
	enumerator := ListEnumerator new.
	enumerator elements: StringEnumerator new.

	parsers := enumerator enumerate.
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '("bar", "foo")' ]
