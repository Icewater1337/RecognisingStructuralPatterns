as yet unclassified
testNestedTagSeas
	| parsers |
	enumerator := BruteForceListGenerator new.
	enumerator elements: { (NamedReferenceGenerator named: #list) / NilParserFactory new }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#list -> p)].
	
	self assert: parsers anySatisfy: [ :parser  | 	parser end matches: '(foo, (1, (2), 3), bar)' 	].