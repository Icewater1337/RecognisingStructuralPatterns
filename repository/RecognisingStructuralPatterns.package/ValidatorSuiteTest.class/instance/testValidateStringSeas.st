as yet unclassified
"protocol: as yet unclassified"
testValidateStringSeas
|correctSolution enumerator parsers sol result string|	
	enumerator := BruteForceListGenerator new.
	enumerator elements: (BruteForceStringGenerator new) / {NilParserFactory new}.

	parsers:= enumerator enumerate.
	sol:= OrderedCollection new.
	string:= '("bar","huu", random, random2, "hen")'.
	
	
parsers do: [  :p | sol add:(p parse:string)].
		
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	correctSolution add:'LIST#1->hen'.
	correctSolution add:'LIST#1->random'.
	correctSolution add:'LIST#1->random2'.
	
	result := (((ValidatorSuite new)
		correctResult: correctSolution;
		results: sol;
		yourself) validate).

	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1.0]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).

