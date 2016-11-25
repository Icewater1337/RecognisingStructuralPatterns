as yet unclassified
testArray
	self parse:'["asd","asdffg","asdfgfyx"]'rule:#array.
	self assert:(result children size=3).
	self assert: (result children isCollection).
	self assert: (result children allSatisfy: [ :e | e isKindOf: RawText ]).
	 