tests
testStringEnumaration
	| parsers |
	parsers := enumerator enumerationNamed: #string.
	
	self assert: parsers size equals: 2