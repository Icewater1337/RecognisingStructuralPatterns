as yet unclassified
testArray
	self parse:'[
    {"firstName":"John", "lastName":"Doe"}, 
    {"firstName":"Anna", "lastName":"Smith"}, 
    {"firstName":"Peter","lastName":"Jones"}
]'rule:#array.
	self assert:(result children size=3).
	self assert: (result isCollection).
	self assert: (result children allSatisfy: [ :e | e isKindOf: Element ]).
	 