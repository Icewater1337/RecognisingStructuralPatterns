as yet unclassified
testCombinations
	| keys arguments |
	keys:= #($) $]).
	arguments:= #($a $b).
	
	enumerator := ((CommandEnumerator new)
		keys: keys;
		arguments: arguments;
		yourself).
		
	self assert: enumerator enumerate size equals: 4. 