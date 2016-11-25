as yet unclassified
testNestedListEmpty
	generator element: generator selfReference.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'.