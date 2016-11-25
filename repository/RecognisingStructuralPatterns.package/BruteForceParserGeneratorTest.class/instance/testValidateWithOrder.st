tests
testValidateWithOrder
	|string result correctSolution|
	string:= '<a>b</a>'.
	correctSolution := OrderedCollection new.
	correctSolution add:'ROOT->a'.
	correctSolution add:'a->b'.
	
	result:= ParserGenerator validateWithOrder: string correctResult: correctSolution.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: (result anySatisfy: [ :e | e precision closeTo: 1.0]).
	self assert: (result anySatisfy: [:e | e recall closeTo:1]).
	self assert: (result anySatisfy: [:e | e f1score closeTo:1]).
	
	self assert: (result at:1 ) precision closeTo:1.
	self assert: (result at:1) recall closeTo:1.
	self assert: (result at:1) f1score closeTo:1.
	"
	self assert: (result at:2) recall closeTo:0.5.
	self assert: (result at:2) f1score closeTo:0.667."