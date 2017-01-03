tests
testParse
	|string result |
	string:= '<a>b</a>'.
	
	result:= ParserGeneratorExecutor parse: string.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result anySatisfy: [ :e | 
		(e children isEmpty)
		ifTrue:[false]
		ifFalse:[(e children first name = 'a')]]).		
	self assert: (result anySatisfy: [ :e | 
		(e isKindOf: Node) 
		ifTrue:[ e children isEmpty 
			ifTrue:[false] 
			ifFalse:[
				(e children first children isEmpty)
				ifFalse:[
				((e children first children first) isKindOf: RawText)
				ifTrue:[e children first children first contents= 'b']
				ifFalse:[false]
				]
				ifTrue:[false]]]
		ifFalse:[false]
		
		
		
		]).

