as yet unclassified
testDefaultSpecialVariable
	parser := generator generateParser.
	
	self assert: parser parse: '\random{param}{param2}'.	
	self assert: result children size equals: 2.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: RawText]).
	self assert: result children first contents 	equals: 'param'.
	self assert: result children second contents 	equals: 'param2'.
	self assert: parser fail:'\random[param}'.