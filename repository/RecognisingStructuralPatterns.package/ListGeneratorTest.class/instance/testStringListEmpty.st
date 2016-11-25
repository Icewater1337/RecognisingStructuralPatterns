as yet unclassified
testStringListEmpty
	generator element: StringGenerator doubleQuoteString.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'