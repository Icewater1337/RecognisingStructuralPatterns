tests
testAction
	parser := generator generateParser.
	
	self assert: parser parse: '"foo\"bar"'.
	self assert: result isKindOf: RawText.
	self assert: result contents equals: 'foo\"bar'