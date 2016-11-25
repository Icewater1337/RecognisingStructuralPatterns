as yet unclassified
testNestedList
	generator element: generator selfReference / NilGenerator whatever.
	parser := generator generateParser.
	
	self assert: parser parse: '[]'.
	self assert: parser parse:'[[[]]]'.	
	self assert: parser parse: '[ [s], [ sf]]'.
	self assert: result children size equals:2.
	self assert: (result children allSatisfy: 		[:e | e isKindOf: Element]).