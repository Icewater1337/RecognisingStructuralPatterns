as yet unclassified
testEnumeration
|parsers|
	parsers := (enumerator productionNamed: #command) enumerate.
	
	self assert: parsers size equals: 72 " 9 from list, and 8 more from string 8*9"