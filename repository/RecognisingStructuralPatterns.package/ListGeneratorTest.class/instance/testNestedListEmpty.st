as yet unclassified
testNestedListEmpty
	| list |
	list := PPDelegateParser new.
	generator element: list.
	parser := generator generateParser.
	list setParser: parser.
	
	self assert: parser parse: '[]'.