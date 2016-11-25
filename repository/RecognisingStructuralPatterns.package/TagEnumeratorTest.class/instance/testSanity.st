as yet unclassified
testSanity
	|delimiters ends begins elements |
	delimiters:= #('/'). "Enumerator calls enumerate on this"
	ends:= #('>' ']').
	begins:= #('<' '[').
	elements := {  StringGenerator identifier }.

	enumerator := ((TagEnumerator new)
		begins: begins;
		ends: ends;
		endTagSymbols: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator enumerate anySatisfy: [ :p | p matches: '<a>a</a>' ].