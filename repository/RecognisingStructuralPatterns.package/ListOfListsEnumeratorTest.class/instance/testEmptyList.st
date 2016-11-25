as yet unclassified
testEmptyList
	self assertEnumeration: #list anyParses: '()'.
	self assertEnumeration: #list anyParses: '[]'
