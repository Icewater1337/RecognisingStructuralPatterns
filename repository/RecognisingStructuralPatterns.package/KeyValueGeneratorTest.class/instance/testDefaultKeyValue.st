as yet unclassified
testDefaultKeyValue
	parser := generator generateParser.
	
	self assert: parser parse: '"foo" : 123'.
	self assert: parser fail: '"foo" - 123'