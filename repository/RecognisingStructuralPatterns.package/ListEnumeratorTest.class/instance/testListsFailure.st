as yet unclassified
testListsFailure
	|  parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { GeneratorReference list }.
	parsers := enumerator enumerate.

	self assert: parsers noneSatisfy: [ :parser  | parser matches: '(---)' ].