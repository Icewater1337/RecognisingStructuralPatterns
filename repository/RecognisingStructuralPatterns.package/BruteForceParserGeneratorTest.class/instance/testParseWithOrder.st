as yet unclassified
testParseWithOrder
	|string result |
	string:= '<a>
	<b>c</b>
</a>'.
	result:= ParserGenerator parseWithOrder: string.
	
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result anySatisfy: [ :e | e name = 'a']).
	self assert: (result anySatisfy: [ :e | (e isKindOf: Node) 
		ifTrue:[ e children isEmpty 
			ifTrue:[false] 
			ifFalse:[e children first name= 'b']]
		ifFalse:[false]
		]).
	self assert: (result at:1) childCount = 5.
	self assert: (result at:1) name equals:'a'.
	self assert:(result at:1) children first name equals:'b'.
	self assert:(result at:1) children first children first contents equals:'c'.
