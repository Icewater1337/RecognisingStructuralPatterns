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
	self assert: (result precision closeTo:0.8).
	self assert: (result recall closeTo:1.0).
	self assert: ( result f1score closeTo:0.889).
	self assert: ((result asString)='LIST#1: precision: 0.8 recall: 1.0 f1score: 0.889').