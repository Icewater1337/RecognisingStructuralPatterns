as yet unclassified
testValidate
	|string result correctSolution|
	string:= '<a>b</a>'.
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->a'.
	correctSolution add:'a->b'.
	
	result:= ParserGenerator validate: string correctSolution: correctSolution.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1.0]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).
	
	self assert: (result anySatisfy: [ :e | e precision closeTo: 0]).
	self assert: (result anySatisfy: [:e | e recall closeTo:0]).
	self assert: result anySatisfy: [:e | (e f1score) asString ='Not available'].