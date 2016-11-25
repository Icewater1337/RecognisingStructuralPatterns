as yet unclassified
testNestedList
	generator element: generator selfReference.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'.	
	self assert: parser parse: '[ [], [ ]]'.