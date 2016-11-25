as yet unclassified
testNil
	parser := generator generateParser.
	
	self assert: parser parse: ''.
	