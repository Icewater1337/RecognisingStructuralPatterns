as yet unclassified
testEmptyLists
	|  parsers |
	enumerator := BruteForceListGenerator new.
	enumerator elements: { NamedReferenceGenerator named: #list }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#list -> p)].
	

	self assert: parsers anySatisfy: [ :parser  | parser matches: '()' ].