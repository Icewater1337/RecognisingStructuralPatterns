as yet unclassified
testKeywordValuePair	
	self parse:'pi  = 3.14'.
	self assert: result children first name ='pi'.
	self assert: (result children first children first isKindOf: RawText).
	self assert: result children first children first name ='3.14'.
	