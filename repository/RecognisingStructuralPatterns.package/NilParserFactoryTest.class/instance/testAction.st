as yet unclassified
testAction
	parser := generator generateParser.
	
	self assert: parser parse: ''.
	self assert: result isKindOf: RawText.
	self assert: result contents equals: ''.
	