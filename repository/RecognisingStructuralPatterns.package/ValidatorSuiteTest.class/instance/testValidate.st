as yet unclassified
"protocol: as yet unclassified"
testValidate
|correctSolution enumerator parsers sol result |	
	enumerator := BruteForceListGenerator new.
	enumerator elements: (BruteForceStringGenerator new).

	parsers:= enumerator generate.
	sol:= OrderedCollection new.
	

	parsers do: [  :p | sol add:(p parse: '("bar","huu")') ].
		
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	
	result := (((ValidatorSuite new)
		correctResult: correctSolution;
		results: sol;
		yourself) validate).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).

