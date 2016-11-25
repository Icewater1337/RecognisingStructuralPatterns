tests
testDefaultString
	parser := generator generateParser.
	
	self assert: parser parse: '"foo"'.
	self assert: parser fail: 'foo'