as yet unclassified
testEmptyLists
	| bfListGenerator allListGenerators parsers |
	bfListGenerator := BruteForceListGenerator new.
	allListGenerators := bfListGenerator generate.
	parsers := allListGenerators collect: #generateParser.

	self assert: parsers anySatisfy: [ :parser  | parser matches: '()' ].