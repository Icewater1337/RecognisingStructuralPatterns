as yet unclassified
testStringAction
	generator element: StringGenerator doubleQuoteString.
	parser := generator generateParser.
	
	self assert: parser parse: '[ "foo" ,"bar"]'.
	self assert: result isKindOf: Element.
	self assert: result children size equals: 2.
	self assert: result firstChild contents equals: 'foo'.
	self assert: result secondChild contents equals: 'bar'.	
