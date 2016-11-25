as yet unclassified
testEmptyList
	enumerator := ListOfStringsEnumerator new.
	parsers := enumerator list enumerate.
	
	self assert: parsers anySatisfy: [ :p | p matches: '()' ].