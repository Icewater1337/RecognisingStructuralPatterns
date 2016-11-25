as yet unclassified
testRun
	self parse:'//test
asdj
/*test2*/'rule:#run.
	self assert:result children first contents equals:'test'.
	self assert: result children second contents equals:'test2'.
	self assert: (result isKindOf: Element).
		self assert: (result children allSatisfy: 		[:e | e isKindOf: RawText]).
	