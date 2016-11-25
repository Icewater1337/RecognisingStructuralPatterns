tests
testSanity
	|delimiters ends begins elements |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	ends:= #(')' ']').
	begins:= #('(' '[').
	elements := {  StringParserFactory identifier }.

	enumerator := ((BruteForceListGenerator new)
		begins: begins;
		ends: ends;
		delimiters: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator generate anySatisfy: [ :p | p matches: '(a,a,a)' ].