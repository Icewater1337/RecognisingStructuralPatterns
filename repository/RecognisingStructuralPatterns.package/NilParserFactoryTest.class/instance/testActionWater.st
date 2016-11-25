as yet unclassified
testActionWater
	parser := generator generateParser.
	
	self assert: parser parse: 'foobar'.
	self assert: result isKindOf: RawText.
	self assert: result contents equals: 'foobar'.
	