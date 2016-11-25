as yet unclassified
testSimpleTagOfString
	| parsers |
	enumerator := ListEnumerator new.
	enumerator elements: StringEnumerator new.

	parsers := enumerator generate.
	self assert: parsers anySatisfy: [ :parser  | parser end matches: '("bar", "foo")' ]
