as yet unclassified
testListsFailure
	|  parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { NamedReferenceGenerator named: #list }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#list -> p)].


	self assert: parsers noneSatisfy: [ :parser  | parser matches: '(---)' ].