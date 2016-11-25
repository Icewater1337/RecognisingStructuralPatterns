tests
testParameters
	generator beginComment: '<!--' asParser.
	generator endComment: '--!>' asParser.
	generator singleLineComment: $# asParser.
	parser := generator generateParser.
	
	self assert: parser parse: '<!-- i am a comment --!>'.
	self assert: (result isKindOf: RawText).
	self assert: result contents equals:'i am a comment'.
	self assert: parser parse:'#I am a comment too'.
	self assert:(result isKindOf: RawText).
	self assert: result contents equals:'I am a comment too'.