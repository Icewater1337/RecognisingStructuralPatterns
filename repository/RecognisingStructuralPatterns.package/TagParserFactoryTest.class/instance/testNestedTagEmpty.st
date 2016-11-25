as yet unclassified
testNestedTagEmpty
	| tag |
	tag := PPDelegateParser new.
	generator element: tag / (NilParserFactory new generateParser).
	parser := generator generateParser.
	tag setParser: parser.
	
	self assert: parser parse: '<start></start>'.	
	self assert: parser parse:'<start><mid></mid></start>'.
	self assert: result children size equals:1.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).
	self assert: parser parse:'<start>
		<mid></mid>
		<bmid></bmid>
	</start>'.
	self assert: result children size equals:2.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).