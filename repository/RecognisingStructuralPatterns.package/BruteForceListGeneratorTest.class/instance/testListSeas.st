as yet unclassified
testListSeas
	| bfListGenerator allListGenerators parsers |
	bfListGenerator := BruteForceListGenerator new.
	bfListGenerator elements: {  
		GeneratorReference list.
		NilGenerator whatever
	}.

	allListGenerators := bfListGenerator generate.
	parsers := allListGenerators collect: #generateParser.

	self assert: parsers anySatisfy: [ :parser  | 
		parser end matches: '(foo, bar)' 
	].