as yet unclassified
testListsFailure
	| bfListGenerator allListGenerators parsers |
	bfListGenerator := BruteForceListGenerator new.
	bfListGenerator elements: { GeneratorReference list }.
	
	allListGenerators := bfListGenerator generate.
	parsers := allListGenerators collect: #generateParser.
	self assert: parsers noneSatisfy: [ :parser  | parser matches: '(---)' ].