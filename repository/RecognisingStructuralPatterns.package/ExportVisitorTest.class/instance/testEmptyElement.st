tests
testEmptyElement
	node := Element new
		name: 'LIST#1';
		yourself.
		
	output := self export: node.
	
	self assert: output size equals: 1.
	self assert: output first equals: '__ROOT__->LIST#1'