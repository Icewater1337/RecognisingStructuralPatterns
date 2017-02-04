as yet unclassified
testParameters
	| nilG |
	nilG := NilParserFactory new generateParser.
	
	generator begins: $< asParser.
	generator end: $> asParser.
	generator element: nilG.
	generator endTagSymbol: $/ asParser.
	parser := generator generateParser.
	
	
	
	self assert: parser parse: '<start>string</start>'.
	self assert: result isKindOf: Element.