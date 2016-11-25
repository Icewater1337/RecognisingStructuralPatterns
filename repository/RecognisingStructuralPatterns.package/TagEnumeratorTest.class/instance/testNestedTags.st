as yet unclassified
testNestedTags
	|  parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { NamedReferenceGenerator named: #list }.
	parsers := enumerator generate.
	parsers do: [:p | p deepResolve: (#list -> p)].


	self assert: parsers anySatisfy: [ :parser  | parser matches: '((),())' ].