as yet unclassified
testSanity
	|delimiters ends begins elements |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	ends:= #(')' ']').
	begins:= #('(' '[').
	elements := {  StringGenerator identifier }.

	enumerator := ((ListEnumerator new)
		begin: begins;
		end: ends;
		delimiter: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator generate anySatisfy: [ :p | p matches: '(a,a,a)' ].