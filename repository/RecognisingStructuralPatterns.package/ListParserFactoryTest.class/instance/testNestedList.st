as yet unclassified
testNestedList
	| list |
	list := PPDelegateParser new.
	generator element: list / NilParserFactory new generateParser.
	parser := generator generateParser.
	list setParser: parser.
	
	self assert: parser parse: '[]'.
	self assert: parser parse:'[[[]]]'.	
	self assert: parser parse: '[ [s], [ sf]]'.
	self assert: result children size equals:2.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).