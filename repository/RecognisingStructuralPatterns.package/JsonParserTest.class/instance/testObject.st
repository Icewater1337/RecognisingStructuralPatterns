as yet unclassified
testObject
	self parse:'{"firstName":"John", "lastName":"Doe"}' rule:#object.
	self assert:(result children size equals:2).
	self assert: (result isCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: Element ]).
	self assert: result children first name ='firstName'.
	self assert: result children second name='lastName'.
	self assert: (result children first children first isKindOf:RawText).
	 