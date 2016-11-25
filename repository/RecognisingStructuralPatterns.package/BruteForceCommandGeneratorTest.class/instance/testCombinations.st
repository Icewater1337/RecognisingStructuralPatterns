as yet unclassified
testCombinations
	| keys arguments |
	keys:= #($) $]).
	arguments:= #($a $b).
	
	enumerator := ((BruteForceCommandGenerator new)
		keys: keys;
		arguments: arguments;
		yourself).
		
	self assert: enumerator generate size equals: 4. 