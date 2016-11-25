tests
testCombinations
	| delimiters ends begins elements |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	ends:= #(')' ']').
	begins:= #('(' '[').
	elements := #( $a ).

	enumerator := ((BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator generate size equals: 4.