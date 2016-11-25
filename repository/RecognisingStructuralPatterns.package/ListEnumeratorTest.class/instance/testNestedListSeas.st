as yet unclassified
testNestedListSeas
	| parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { (NamedReferenceGenerator named: #list) / NilGenerator new }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#list -> p)].
	
	self assert: parsers anySatisfy: [ :parser  | 	parser end matches: '(foo, (1, (2), 3), bar)' 	].