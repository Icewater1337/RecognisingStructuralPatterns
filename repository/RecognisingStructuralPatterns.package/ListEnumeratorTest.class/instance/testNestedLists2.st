as yet unclassified
testNestedLists2
	|  parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { GeneratorReference list }.
	parsers := enumerator enumerate.

	self assert: parsers anySatisfy: [ :parser  | parser matches: '((),(()))' ].