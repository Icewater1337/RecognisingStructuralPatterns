as yet unclassified
testList
	|parsers|
	parsers := (enumerator productionNamed: #list) enumerate.
	
	self assertEnumeration: #list anyParses:'()'.