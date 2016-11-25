as yet unclassified
testValueTag
	self parse:'["asd","asdffg","asdfgfyx"]' rule:#valueTag.
	self assert:(result children first children size=3).
	self assert: (result children isCollection).
	self parse:'"John"' rule:#valueTag.
	self assert:(result children first isKindOf: RawText).
	

	 