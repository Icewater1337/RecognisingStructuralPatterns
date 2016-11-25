tests
testIdentifier
	parser := StringGenerator identifier.
	
	self assert: parser parse: 'foobar'.
	self assert: parser parse: 'foo' end: 3.
	self assert: parser fail: '123'.