as yet unclassified
testStringListEmpty
	generator element: StringParserFactory doubleQuoteString.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'