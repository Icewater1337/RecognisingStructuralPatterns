as yet unclassified
testWithSeas
	| generator parser sol correctSolution result |
	generator := ListGenerator new.
generator element: (StringGenerator doubleQuoteString) / NilGenerator new generateParser.

	parser:= generator generateParser.
		
	sol:= parser parse:'["bar","huu" nonoasuh "zun"]'.
		
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	correctSolution add:'LIST#1->zun'.
	
		result := (((Validator new)
		correctResult: correctSolution;
		result: sol;
		yourself) validate). 
		
	self assert: (result isKindOf: ResultNode).
	self assert: (result precision denominator ==5).
	self assert: (result precision numerator ==4).
	self assert: (result recall == 1).
	self assert: ( result f1score denominator ==9).
	self assert: ( result f1score numerator ==8).
	self assert: ((result asString)='LIST#1: precision: (4/5) recall: 1 f1score: (8/9)').