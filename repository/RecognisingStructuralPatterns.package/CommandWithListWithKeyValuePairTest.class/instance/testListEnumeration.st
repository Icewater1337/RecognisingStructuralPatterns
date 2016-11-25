as yet unclassified
testListEnumeration
	|parsers|
	parsers := (enumerator productionNamed: #list) enumerate.
	

	self assert: parsers size equals: 72