as yet unclassified
testNestedTagEmpty
	generator element: (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).
	parser := generator generateParser.
	
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