tests
testDoubleQuoteString
	parser := StringGenerator doubleQuoteString.
	
	self assert: parser parse: '"fo\"o"'