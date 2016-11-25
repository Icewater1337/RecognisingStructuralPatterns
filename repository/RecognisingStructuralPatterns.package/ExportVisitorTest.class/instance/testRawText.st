as yet unclassified
testRawText
	node := RawText new
		contents: 'foobar';
		yourself.
		
	output := self export: node.
	
	self assert: output size equals: 1.
	self assert: output first equals: 'ROOT->foobar'