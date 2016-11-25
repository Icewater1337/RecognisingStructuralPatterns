as yet unclassified
testTagFailure
	|  parsers |
	enumerator := TagEnumerator new.
	enumerator elements: { NamedReferenceGenerator named: #tag }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#tag -> p)].


	self assert: parsers noneSatisfy: [ :parser  | parser matches: '<a>b</b>' ].