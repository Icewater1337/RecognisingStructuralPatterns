as yet unclassified
testListWithStringsSea
	| parsers |
	parsers := enumerator enumerationNamed: #list.
	
	self assertEnumeration: #list anyParses: '("foo", "bar", randomcode  that we do not understand)'.