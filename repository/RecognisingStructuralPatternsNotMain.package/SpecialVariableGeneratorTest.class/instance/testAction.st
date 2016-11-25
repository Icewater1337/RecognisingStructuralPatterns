as yet unclassified
testAction
	parser := generator generateParser.
	
	self assert: parser parse: '\key{param1}{param2}'.
	self assert: result isKindOf: Element.