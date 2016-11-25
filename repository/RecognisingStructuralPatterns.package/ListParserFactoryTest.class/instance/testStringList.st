as yet unclassified
testStringList
	generator element: StringParserFactory doubleQuoteString.
	parser := generator generateParser.
	
	self assert: parser parse: '[ "asd" , "bef" ]'.
	self assert: parser fail: '[ "asd" , 112 ]'.	