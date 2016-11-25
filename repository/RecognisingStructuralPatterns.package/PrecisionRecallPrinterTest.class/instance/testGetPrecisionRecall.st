as yet unclassified
testGetPrecisionRecall
|correctSolution enumerator parsers sol result |	
	enumerator := ListEnumerator new.
	enumerator elements: (StringEnumerator new).

	parsers:= enumerator enumerate.
	sol:= OrderedCollection new.
	

	parsers do: [  :p | sol add:(p parse: '("bar","huu")') ].
		
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	
	result := (((PrecisionRecallPrinter new)
		correctResult: correctSolution;
		results: sol;
		yourself) getPrecisionRecall).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result allSatisfy: [ :e | e precision == 1]).
	self assert: (result allSatisfy: [:e | e recall == 1]).

	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	correctSolution add:'LIST#1->b'.
	
	result := (((PrecisionRecallPrinter new)
		correctResult: correctSolution;
		results: sol;
		yourself) getPrecisionRecall).
		
	enumerator := ListEnumerator new.
	enumerator elements: (StringEnumerator new).

	parsers:= enumerator enumerate.
	sol:= OrderedCollection new.
	

	parsers do: [  :p | sol add:(p parse: '("bar","huu")') ].
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result allSatisfy: [ :e | e precision == 1]).
	self assert: (result allSatisfy: [:e | e recall denominator == 4]).
	self assert: (result allSatisfy: [:e | e recall numerator == 3]).
	