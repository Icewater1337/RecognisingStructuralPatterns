as yet unclassified
testTagFailure
	|  parsers |
	enumerator := BruteForceTagGenerator new.
	enumerator elements: { NamedReferenceGenerator named: #tag }.
	parsers := enumerator generate.
	parsers do: [:p | p deepResolve: (#tag -> p)].


	self assert: parsers noneSatisfy: [ :parser  | parser matches: '<a>b</b>' ].