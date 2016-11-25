as yet unclassified
testCombinations
	| delimiters ends begins elements |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	ends:= #(')' ']').
	begins:= #('(' '[').
	elements := #( $a ).

	enumerator := ((BruteForceListGenerator new)
		begin: begins;
		end: ends;
		delimiter: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator generate size equals: 8.