as yet unclassified
testNameValuePair
	self parse:'"firstName":"John"' rule:#nameValuePair.
	self assert:(result children size = 1).
	self assert: result name ='firstName'.
	self assert: result children first children first name='John'.
	self assert: (result children first children first isKindOf:RawText).
	 