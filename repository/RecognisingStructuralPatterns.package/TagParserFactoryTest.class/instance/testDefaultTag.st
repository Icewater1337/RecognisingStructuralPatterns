as yet unclassified
testDefaultTag
	parser := generator generateParser.
	
	self assert: parser parse: '<start> random </start>'.
	self assert: parser parse:'<text data="Click Here" size="36" style="bold">h</text>'.
	