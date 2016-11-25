tests
testParse
	|string result |
	string:= '<a>b</a>'.
	
	result:= ParserGenerator parse: string.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result anySatisfy: [ :e | (e name = 'a')]).
	self assert: (result anySatisfy: [ :e | 
		(e isKindOf: Node) 
		ifTrue:[ e children isEmpty 
			ifTrue:[false] 
			ifFalse:[
				((e children first) isKindOf: RawText)
				ifTrue:[e children first contents= 'b']
				ifFalse:[false]
				]]
		ifFalse:[false]
		
		
		
		]).
