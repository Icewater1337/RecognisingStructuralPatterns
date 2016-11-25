tests
testDoubleQuoteString
	parser := StringParserFactory doubleQuoteString.
	
	self assert: parser parse: '"fo\"o"'