as yet unclassified
testAction
	parser := generator generateParser.
	
	self assert: parser parse: '[ 123 ,"foobar",{}]'.
	self assert: result isKindOf: Element.
	self assert: result children size equals: 3.
	self assert: result firstChild contents equals: '123'.
	self assert: result secondChild contents equals: '"foobar"'.	
	self assert: result thirdChild contents equals: '{}'.		