tests
"protocol: as yet unclassified"
testValidate
|correctSolution enumerator parsers sol result parser|	
	enumerator := BruteForceListGenerator new.
	enumerator elements: (BruteForceStringGenerator new).

	parsers:= enumerator generate.
	sol:= OrderedCollection new.
	

	parsers do: [  :p | sol add:(p parse: '("bar","huu")') ].
		
	
	parser:= (ListParserFactory new)
					begins: '(' asParser token;
					end: ')' asParser;
					delimiter: ',' asParser;
					element: StringParserFactory doubleQuoteString;
					generateParser.

	correctSolution := parser parse:'("bar","huu")'.
	
	result := (((ValidatorSuite new)
		correctResult: correctSolution;
		results: sol;
		yourself) validate).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).

