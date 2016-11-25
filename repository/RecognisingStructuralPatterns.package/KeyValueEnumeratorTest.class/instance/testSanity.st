as yet unclassified
testSanity
	| delimiters keys values |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	keys:= {NilGenerator new generateParser}.
	values:= {NilGenerator new generateParser}.
	
	enumerator := ((KeyValueEnumerator new)
		keys: keys;
		values: values;
		delimiters: delimiters;
		yourself).
		
	self assert: enumerator enumerate anySatisfy: [ :p | p matches: 'a;c' ].