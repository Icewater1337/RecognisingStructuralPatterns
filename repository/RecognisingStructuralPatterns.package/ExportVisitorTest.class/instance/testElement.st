tests
testElement
	child := RawText new
		contents: 'child';
		yourself.
		
	node := Element new
		name: 'LIST#1';
		addChild: child; 
		yourself.
		
	output := self export: node.
	
	self assert: output size equals: 2.
	self assert: output first equals: '__ROOT__->LIST#1'.
	self assert: output second equals: 'LIST#1->child'	