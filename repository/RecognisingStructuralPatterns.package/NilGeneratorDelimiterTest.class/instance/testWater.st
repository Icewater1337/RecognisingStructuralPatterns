as yet unclassified
testWater
	parser := generator generateParser.
	
	self assert: parser parse: 'foobar'.
	