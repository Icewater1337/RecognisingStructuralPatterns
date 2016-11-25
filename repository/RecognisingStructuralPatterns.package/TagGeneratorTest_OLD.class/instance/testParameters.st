as yet unclassified
testParameters
	| nilG |
	nilG := NilGenerator new generateParser.
	
	generator begin: $< asParser.
	generator end: $> asParser.
	generator element: nilG.
	generator endTagSymbol: $/ asParser.
	parser := generator generateParser.
	
	
	
	self assert: parser parse: '<start>string</start>'.
	self assert: result isKindOf: Element.