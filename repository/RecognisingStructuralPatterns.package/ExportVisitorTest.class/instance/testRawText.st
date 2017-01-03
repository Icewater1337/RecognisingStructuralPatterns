tests
testRawText
	node := RawText new
		contents: 'foobar';
		yourself.
		
	output := self export: node.
	
	self assert: output size equals: 1.
	self assert: output first equals: '__ROOT__->foobar'