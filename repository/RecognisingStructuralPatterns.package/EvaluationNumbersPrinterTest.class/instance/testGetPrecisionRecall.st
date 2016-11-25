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
	
	result := (((EvaluationNumbersPrinter new)
		correctResult: correctSolution;
		results: sol;
		yourself) getEvaluationNumbers).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result allSatisfy: [ :e | e precision == 1]).
	self assert: (result allSatisfy: [:e | e recall == 1]).
	self assert: (result allSatisfy: [:e | e f1score == 1]).

	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	correctSolution add:'LIST#1->b'.
	
	result := (((EvaluationNumbersPrinter new)
		correctResult: correctSolution;
		results: sol;
		yourself) getEvaluationNumbers).
		
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
	self assert: (result allSatisfy: [:e | e f1score denominator == 7]).
	self assert: (result allSatisfy: [:e | e f1score numerator == 6]).
	"6/4  / 7/4 = 6*4 / 7*4 = 6 / 7 "
	
