as yet unclassified
testListEnumaration
	|parsers|
	parsers := (enumerator productionNamed: #list) enumerate.
	
	self assert: parsers size equals: 9