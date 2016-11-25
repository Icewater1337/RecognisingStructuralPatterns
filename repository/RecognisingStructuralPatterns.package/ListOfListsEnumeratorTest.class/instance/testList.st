as yet unclassified
testList
	parsers := (enumerator productionNamed: #list) enumerate.
	
	self assertEnumeration: #list anyParses: '((),())'.
	self assertEnumeration: #list anyParses: '((],(]]'.
	self assertEnumeration: #list anyParses: '[[],[[]]]'
