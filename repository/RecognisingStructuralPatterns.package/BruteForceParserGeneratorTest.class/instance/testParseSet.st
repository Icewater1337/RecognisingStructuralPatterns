tests
testParseSet
	|set result |
	set:= OrderedCollection new.

	set add:'<a>b</a>'.
	set add:'<a><b>c</b></a>'.
	result:= ParserGenerator parseSet: set.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result  first anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result  second anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result first anySatisfy: [ :e | (e name = 'a')]).
	self assert: (result first anySatisfy: [ :e | 
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

