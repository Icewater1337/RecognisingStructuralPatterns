as yet unclassified
testListsFailure
	|  parsers |
	enumerator := BruteForceListGenerator new.
	enumerator elements: { NamedReferenceGenerator named: #list }.
	parsers := enumerator generate.
	parsers do: [:p | p deepResolve: (#list -> p)].


	self assert: parsers noneSatisfy: [ :parser  | parser matches: '(---)' ].