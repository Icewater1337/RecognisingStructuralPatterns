accessing
escape: anObject
	self assert: anObject isGeneratorArgument.
	escape := anObject