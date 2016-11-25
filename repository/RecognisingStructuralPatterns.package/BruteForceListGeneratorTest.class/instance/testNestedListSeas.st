as yet unclassified
testNestedListSeas
	| bfListGenerator allListGenerators parsers |
	bfListGenerator := BruteForceListGenerator new.
	bfListGenerator elements: {  
		GeneratorReference list  / NilGenerator whatever
	}.

	allListGenerators := bfListGenerator generate.
	parsers := allListGenerators collect: #generateParser.
	
	self halt.
	self assert: parsers anySatisfy: [ :parser  | 
		parser end matches: '(foo, (1, (2), 3), bar)' 
	].