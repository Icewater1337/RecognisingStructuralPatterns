as yet unclassified
testStringEnumaration
	enumerator := ListOfStringsEnumerator new.
	parsers := enumerator string enumerate.
	
	self assert: parsers size equals: 4.
	self assert: parsers anySatisfy: [ :p | p matches: '"foobar"' ].