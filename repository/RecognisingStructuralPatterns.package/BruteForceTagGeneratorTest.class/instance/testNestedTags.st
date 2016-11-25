as yet unclassified
testNestedTags
	|  parsers |
	enumerator := BruteForceTagGenerator new.
	enumerator elements: { (NamedReferenceGenerator named: #tag) / NilParserFactory new generateParser }.
	parsers := enumerator enumerate.
	parsers do: [:p | p deepResolve: (#tag -> p)].
	
	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a><b></b></a>' ].
	self assert: parsers anySatisfy: [ :parser  | parser matches: '<a>
		<b>
			<c></c>
		</b>
			</a>' ].