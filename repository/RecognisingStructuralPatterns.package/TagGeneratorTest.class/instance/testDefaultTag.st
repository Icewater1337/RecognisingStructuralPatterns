as yet unclassified
testDefaultTag
	parser := generator generateParser.
	
	self assert: parser parse: '<start> random </start>'.