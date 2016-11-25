as yet unclassified
testNestedTags
	|  parsers |
	enumerator := TagEnumerator new.
	enumerator elements: { (NamedReferenceGenerator named: #tag) / NilGenerator new generateParser }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#tag -> p)].
	
	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a><b></b></a>' ].
	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a>
		<b>
			<c></c>
		</b>
			</a>' ].