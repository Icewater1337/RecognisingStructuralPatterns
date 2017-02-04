tests
testCombinations
	|escapeArr endArr beginArr|

	endArr:= #('"' '''').
	beginArr:= #('"' '''').
	escapeArr:= #('\"').

	stringGenerator := ((BruteForceStringGenerator new)
		begins: beginArr;
		ends: endArr;
		escapes: escapeArr;
		yourself).

	self assert: escapeArr size equals: 1.
	self assert: stringGenerator generate size equals: 2.