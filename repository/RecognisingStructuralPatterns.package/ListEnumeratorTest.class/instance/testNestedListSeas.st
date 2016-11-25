as yet unclassified
testNestedListSeas
	| parsers |
	enumerator := ListEnumerator new.
	enumerator elements: { GeneratorReference list / NilGenerator new }.
	parsers := enumerator enumerate.
	
	self assert: parsers anySatisfy: [ :parser  | 	parser end matches: '(foo, (1, (2), 3), bar)' 	].