as yet unclassified
testDefaultTagEmpty
	parser := generator generateParser.
	
	self assert: parser parse: '<start></start>'.