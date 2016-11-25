as yet unclassified
testSanity
	|delimiters ends begins elements |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	ends:= #(')' ']').
	begins:= #('(' '[').
	elements := {  StringParserFactory identifier }.

	enumerator := ((BruteForceListGenerator new)
		begin: begins;
		end: ends;
		delimiter: delimiters;
		elements: elements;
		yourself).
		
	self assert: enumerator generate anySatisfy: [ :p | p matches: '(a,a,a)' ].