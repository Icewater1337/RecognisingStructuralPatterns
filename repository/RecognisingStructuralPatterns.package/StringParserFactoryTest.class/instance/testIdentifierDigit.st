tests
testIdentifierDigit
	parser := StringParserFactory identifierDigit.
	
	self assert: parser fail: 'foobar'.
	self assert: parser fail: 'foo'.
	self assert: parser parse: '123' end:3.
	self assert: parser parse:'-1' end:2.