as yet unclassified
testValidate
	| generator parser sol correctSolution result |
	generator := ListParserFactory new.
	generator element: (StringParserFactory doubleQuoteString).

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
	self assert: (result precision closeTo: 1.0).
	self assert: (result recall closeTo:1.0).
	self assert: ( result f1score closeTo: 1.0).
	self assert: ((result asString)='LIST#1: precision: 1.0 recall: 1.0 f1score: 1.0').