tests
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
	self assert: (result at:1) allChildrenWeight = 26.2.
	self assert: (result at:1) name equals:'a'.
	self assert:(result at:1) children first name equals:'b'.
	self assert:(result at:1) children first children first contents equals:'c'.
	
	"string:= '{
    ""id"": 1,
    ""name"": ""A green door"",
    ""price"": 12.50,
    ""tags"": [""home"", ""green""]
}'.
	result:= ParserGenerator parseWithOrder: string.
	self halt.
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result anySatisfy: [ :e | e isKindOf: Node ]).
	self assert: (result at:1) allChildrenWeight = 22.
	self assert:(result at:1) children first name equals:'id'.
	self assert:(result at:1) children second name equals:'name'.
	self assert:(result at:1) children third name equals:'price'.
	self assert:(result at:1) children fourth name equals:'tags'.
	self assert:(result at:1) children fourth children first isKindOf: Collection."
