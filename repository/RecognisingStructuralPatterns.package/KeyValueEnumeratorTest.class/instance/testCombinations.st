as yet unclassified
testCombinations
	| delimiters keys values |
	delimiters:= #(',' ';'). "Enumerator calls enumerate on this"
	keys:= #($a $b).
	values:= #($c $d).
	enumerator := ((KeyValueEnumerator new)
		keys: keys;
		values: values;
		delimiters: delimiters;
		yourself).
		
	self assert: enumerator enumerate size equals: 8.