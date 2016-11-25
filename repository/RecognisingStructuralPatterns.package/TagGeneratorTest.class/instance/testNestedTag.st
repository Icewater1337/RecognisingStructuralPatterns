as yet unclassified
testNestedTag
	generator element: (generator selfReference) /(NilGenerator whatever).
	parser := generator generateParser.
	
	self assert: parser parse: '<start></start>'.	
	self assert: parser parse:'<start><mid></mid></start>'.