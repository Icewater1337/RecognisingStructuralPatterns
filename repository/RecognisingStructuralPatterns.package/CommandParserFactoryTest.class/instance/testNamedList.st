tests
testNamedList
	| listGenerator |
	listGenerator:= (ListParserFactory new).
	listGenerator begins:$( asParser token.
	listGenerator end:$) asParser.
	listGenerator delimiter:$, asParser.
	listGenerator element: StringParserFactory identifier.
	
	generator key: NilParserFactory new generateParser.
	generator arguments: (listGenerator generateParser
"	map: [:_nodes|
		| retval |
		retval := Array with:_nodes.
		retval
		
	]").
	parser := generator generateParser.
	
	self assert: parser parse: 'key(par1,par2)'.
	self assert: result isKindOf: Element.
	self assert: result children size equals:1.
	self assert: result children first children size equals:2.
	self assert: (result children first children allSatisfy: 		[:e | e isKindOf: RawText]).
	self assert: result children first children first contents equals:'par1'.
	self assert: result children first children second contents equals:'par2'.
	self assert: result name equals:'key'.
	
	self assert: parser parse:'key(par1)'.
	self assert: result isKindOf: Element.
	self assert: result children size equals:1.
	self assert: result children first children size equals:1.
	self assert: result children first children first isKindOf: RawText.
	self assert: result name equals:'key'.
	self assert: result children first children first contents equals:'par1'.