as yet unclassified
testParameters
	| nilG |
	nilG := NilGenerator whatever.
	
	generator beginBlock: ${ asParser.
	generator endBlock: $} asParser.
	generator initializer: $\ asParser.
	parser := generator generateParser.
	
	
	self assert: parser parse: '\random{random}'.
	self assert: result isKindOf: Element.