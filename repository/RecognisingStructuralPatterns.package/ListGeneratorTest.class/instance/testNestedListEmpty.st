as yet unclassified
testNestedListEmpty
	generator element: generator parserReference.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'.