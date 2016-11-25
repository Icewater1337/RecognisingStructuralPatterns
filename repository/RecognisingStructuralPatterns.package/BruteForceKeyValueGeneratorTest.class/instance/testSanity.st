as yet unclassified
testSanity
	| delimiters keys values |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	keys:= {NilParserFactory new generateParser}.
	values:= {NilParserFactory new generateParser}.
	
	enumerator := ((BruteForceKeyValueGenerator new)
		keys: keys;
		values: values;
		delimiters: delimiters;
		yourself).
		
	self assert: enumerator generate anySatisfy: [ :p | p matches: 'a;c' ].