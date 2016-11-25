as yet unclassified
testPrecisionRecall
	| generator parser sol correctSolution result |
	generator := ListGenerator new.
	generator element: (StringGenerator doubleQuoteString).

	parser:= generator generateParser.
		
	sol:= parser parse:'["bar","huu"]'.
		
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->LIST#1'.
	correctSolution add:'LIST#1->bar'.
	correctSolution add:'LIST#1->huu'.
	
	

	result := (((Validator new)
		correctResult: correctSolution;
		result: sol;
		yourself) validate).
		
	self assert: (result isKindOf: ResultNode).
	self assert: (result precision ==1).
	self assert: (result recall == 1).
	self assert: ( result f1score ==1).
	self assert: ((result asString)='LIST#1: precision: 1 recall: 1 f1score: 1').