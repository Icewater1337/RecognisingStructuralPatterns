as yet unclassified
testListEnumaration
	enumerator := ListOfStringsEnumerator new.
	parsers := enumerator list enumerate.
	
	self assert: parsers size equals: 36.
	self assert: parsers anySatisfy: [ :p | p matches: '("foobar")' ].