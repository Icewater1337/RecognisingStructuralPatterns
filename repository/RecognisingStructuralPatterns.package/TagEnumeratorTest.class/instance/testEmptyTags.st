as yet unclassified
testEmptyTags
	|  parsers |
	enumerator := TagEnumerator new.
	enumerator elements: { (NamedReferenceGenerator named: #tag) / NilGenerator new generateParser }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#tag -> p)].
	

	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a></a>' ].