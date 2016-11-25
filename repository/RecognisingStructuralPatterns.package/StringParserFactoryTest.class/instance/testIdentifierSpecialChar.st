tests
testIdentifierSpecialChar
	parser := StringParserFactory identifierSpecialChar.
	
	self assert: parser fail: 'foobar'.
	self assert: parser fail: 'foo'.
	self assert: parser parse: '@ra' end:3.
	self assert: parser parse:'|ra' end:3.