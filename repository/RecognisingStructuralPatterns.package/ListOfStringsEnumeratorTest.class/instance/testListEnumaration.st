as yet unclassified
testListEnumaration
	| parsers |
	parsers := enumerator enumerationNamed: #list.
	
	self assert: parsers size equals: 36