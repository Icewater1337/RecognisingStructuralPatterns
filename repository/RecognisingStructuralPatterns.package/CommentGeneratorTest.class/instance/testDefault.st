tests
testDefault
	parser := generator generateParser.
	
	self assert: parser parse: '/* comment*/'.
	self assert: result isKindOf: RawText.
	self assert: result contents equals:'comment'.
	self assert: parser parse:'//comment'.
	self assert: result isKindOf: RawText.
	self assert: result contents equals:'comment'.