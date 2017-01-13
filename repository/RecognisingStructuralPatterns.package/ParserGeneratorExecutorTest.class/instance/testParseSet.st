tests
testParseSet
	|set result |
	set:= OrderedCollection new.

	set add:'<a>b</a>'.
	set add:'<a><b>c</b></a>'.
	result:= ParserGeneratorExecutor parseList: set.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result  first anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result  second anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result first anySatisfy: [ :e | 
		( e children isEmpty)
		ifFalse:[e children first name = 'a']
		ifTrue:[false]]).
	self assert:(result second anySatisfy: [ :e |
		(e children isEmpty)
		ifFalse:[e children first name='a']
		ifTrue:[false] ]).
		
	

