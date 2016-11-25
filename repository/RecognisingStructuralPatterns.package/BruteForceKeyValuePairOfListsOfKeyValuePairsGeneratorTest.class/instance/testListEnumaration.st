as yet unclassified
testListEnumaration
	|parsers|
	parsers := (enumerator productionNamed: #list) generate.
	
	self assert: parsers size equals: 9