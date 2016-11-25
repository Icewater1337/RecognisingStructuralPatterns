as yet unclassified
testString
|parsers|
	parsers := enumerator string enumerate.
		
	self assertEnumeration: #string anyParses: '"foobar"'.
	