as yet unclassified
testNameTag
	self parse:'"firstName"'rule:#nameTag.
	self assert: (result children allSatisfy: [ :e | e isKindOf: RawText ]).
	 