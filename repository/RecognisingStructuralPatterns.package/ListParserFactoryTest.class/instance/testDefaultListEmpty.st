as yet unclassified
testDefaultListEmpty
	parser := generator generateParser.
	
	self assert: parser parse: '[  ]'.