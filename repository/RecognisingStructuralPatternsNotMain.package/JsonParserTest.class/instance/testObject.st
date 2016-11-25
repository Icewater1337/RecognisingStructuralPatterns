as yet unclassified
testObject
	self parse:'{"randomArray":["asd","asdffg","asdfgfyx"]}' rule:#object.
	self assert: (result children allSatisfy: [ :e | e isKindOf: Element ]).
	self assert: result children first name ='randomArray'.
	self assert: result children first children first name='valueTag'.
	self assert: (result children first children first children first children allSatisfy: [ :e | e isKindOf: RawText ])
	
"	self assert: (result children first children first isKindOf:RawText)."
	 