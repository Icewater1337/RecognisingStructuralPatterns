as yet unclassified
testDefaultListSingleElement
	parser := generator generateParser.
	
	self assert: parser parse: '[ 123 ]'.