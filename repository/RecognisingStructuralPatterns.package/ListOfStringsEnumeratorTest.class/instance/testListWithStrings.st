as yet unclassified
testListWithStrings
	| parsers |
	parsers := enumerator enumerationNamed: #list.
	
	self assertEnumeration: #list anyParses: '("foo", "bar")'.