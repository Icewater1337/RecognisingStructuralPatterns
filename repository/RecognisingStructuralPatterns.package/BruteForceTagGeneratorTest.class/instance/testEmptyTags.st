as yet unclassified
testEmptyTags
	|  parsers |
	enumerator := BruteForceTagGenerator new.
	enumerator elements: { (NamedReferenceGenerator named: #tag) / NilParserFactory new generateParser }.
	parsers := enumerator generate.
	parsers do: [:p | p deepResolve: (#tag -> p)].
	

	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a></a>' ].