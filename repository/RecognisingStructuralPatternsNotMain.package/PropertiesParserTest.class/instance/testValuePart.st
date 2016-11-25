as yet unclassified
testValuePart
	self parse:'pi  = 3.14'.
	self assert: (result children first children first isKindOf: RawText).